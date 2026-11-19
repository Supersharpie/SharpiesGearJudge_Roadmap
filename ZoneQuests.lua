-- =============================================================
-- [[ ZONE QUESTS ]]
-- A small window with every quest this character can pick up in the zone it stands
-- in: right class and race, level reached, not done, earlier quests / reputation /
-- profession met where the data says so. Holiday and repeatable quests are left out.
-- Gray quests and quests that open within 2 levels are listed dimmed at the bottom.
--
-- Everything comes from the QuestieDB addon at run time (its public QuestDB, NpcDB
-- and ObjectDB tables); nothing of it is copied into Roadmap. Without it the window
-- says so. Open with /sgjq or the Zone Quests button in Roadmap.
-- =============================================================
local addonName, ns = ...
local SGJ = _G["MSC"] or _G["SharpiesGearJudge"]
if not SGJ or not SGJ.Roadmap then return end
local Roadmap = SGJ.Roadmap
local L = SGJ.L or setmetatable({}, { __index = function(t, k) return k end })

local function Heading(fs, color, width) if SGJ.StyleHeading then SGJ.StyleHeading(fs, color, width) end end
local function TC(key, r, g, b, a) local c = SGJ.Theme and SGJ.Theme[key]; if c then return c[1], c[2], c[3], c[4] or a end return r, g, b, a end

local floor, max, min = math.floor, math.max, math.min
local ipairs, pairs, type, pcall = ipairs, pairs, type, pcall

local GROUP_ORDER = { [1] = 1, [2] = 2, [3] = 3, [5] = 4, [4] = 5 }
local SOON_LEVELS = 2      -- quests that open within this many levels are listed as "At level N"
local ROW_H, WIN_W, WIN_H = 34, 340, 440

-- Holiday and world-event quest sorts (QuestieDB zoneOrSort): never in the list.
local EVENT_SORT = {
    [-404] = true, [-402] = true, [-378] = true, [-376] = true, [-375] = true, [-374] = true,
    [-370] = true, [-369] = true, [-366] = true, [-364] = true, [-41] = true, [-22] = true,
    [-21] = true, [-368] = true, [-365] = true, [-1000] = true,
}

local function DB(name)
    local db = _G[name]
    if type(db) == "table" and type(db.Get) == "function" then return db end
    return nil
end
local function HasQuestie()
    local q = DB("QuestDB")
    return q and type(q.GetAllIds) == "function" and true or false
end
local function Get(dbName, id, key)
    local db = DB(dbName)
    if not db or not id then return nil end
    local ok, v = pcall(db.Get, id, key)
    if ok then return v end
    return nil
end

-- Masks can pass 32 bits (Forever's Skyborne races), so test the bit with arithmetic.
local function HasBit(mask, bitValue)
    if not mask or mask == 0 or not bitValue then return true end
    return floor(mask / bitValue) % 2 == 1
end
local function RaceBit()
    local _, _, raceID = UnitRace("player")
    if not raceID then return nil end
    local lib = _G.LibQuestieDB
    local byId = lib and lib.Enum and lib.Enum.raceMaskById
    if type(byId) == "table" and byId[raceID] then return byId[raceID] end
    if raceID == 95 or raceID == 96 then return 2 ^ (raceID - 63) end
    return 2 ^ (raceID - 1)
end
local function ClassBit()
    local _, _, classID = UnitClass("player")
    return classID and 2 ^ (classID - 1) or nil
end

-- Highest quest level that is gray for this level (Blizzard's green-range rule).
local function GrayLevel(level)
    local ok, range = pcall(function() return GetQuestGreenRange and GetQuestGreenRange() end)
    if ok and type(range) == "number" then return level - range - 1 end
    if level <= 5 then return 0 end
    if level <= 39 then return level - floor(level / 10) - 5 end
    if level <= 59 then return level - floor(level / 5) - 1 end
    return level - 9
end

-- =============================================================
-- Zone index: area ID -> quest IDs started there. Built once per session in small
-- time slices (QuestieDB decodes rows on demand), only for this class and race.
-- =============================================================
local ZQ = { Index = nil, ItemStart = {}, NpcZones = {}, ObjZones = {}, AreaNames = {} }
Roadmap.ZoneQuests = ZQ

local function FactionLetter()
    local f = UnitFactionGroup("player")
    return f == "Alliance" and "A" or (f == "Horde" and "H") or nil
end

-- Zones a quest giver stands in (its main zone, else every zone it spawns in).
local function GiverZones(dbName, id, cache, faction)
    local z = cache[id]
    if z ~= nil then return z end
    z = false
    local friendly = dbName == "NpcDB" and Get(dbName, id, "friendlyToFaction") or nil
    if not (type(friendly) == "string" and faction and not friendly:find(faction, 1, true)) then
        local main = Get(dbName, id, "zoneID")
        if type(main) == "number" and main > 0 then
            z = { main }
        else
            local spawns = Get(dbName, id, "spawns")
            if type(spawns) == "table" then
                for area in pairs(spawns) do
                    if type(area) == "number" and area > 0 then z = z or {}; z[#z + 1] = area end
                end
            end
        end
    end
    cache[id] = z
    return z
end

local function AddQuest(byZone, id, raceBit, classBit, faction)
    if not HasBit(Get("QuestDB", id, "requiredRaces"), raceBit) then return end
    if not HasBit(Get("QuestDB", id, "requiredClasses"), classBit) then return end
    local sort = Get("QuestDB", id, "zoneOrSort")
    if sort and EVENT_SORT[sort] then return end
    local flags = Get("QuestDB", id, "specialFlags")
    if type(flags) == "number" and flags % 2 == 1 then return end -- repeatable
    local zones, by = {}, Get("QuestDB", id, "startedBy")
    local found = false
    if type(by) == "table" then
        for _, npc in ipairs(type(by[1]) == "table" and by[1] or {}) do
            local z = GiverZones("NpcDB", npc, ZQ.NpcZones, faction)
            if z then for _, a in ipairs(z) do zones[a] = true; found = true end end
        end
        for _, obj in ipairs(type(by[2]) == "table" and by[2] or {}) do
            local z = GiverZones("ObjectDB", obj, ZQ.ObjZones, faction)
            if z then for _, a in ipairs(z) do zones[a] = true; found = true end end
        end
        -- Started from an item: listed in the quest's own zone, and only while it's in your bags.
        if not found and type(by[3]) == "table" and by[3][1] and type(sort) == "number" and sort > 0 then
            ZQ.ItemStart[id] = by[3][1]
            zones[sort] = true; found = true
        end
    end
    for area in pairs(zones) do
        local list = byZone[area]
        if not list then list = {}; byZone[area] = list end
        list[#list + 1] = id
    end
end

function ZQ.Build()
    if ZQ.Index or ZQ.Building or not HasQuestie() then return end
    local okIds, ids = pcall(_G.QuestDB.GetAllIds)
    if not okIds or type(ids) ~= "table" then return end
    local raceBit, classBit, faction = RaceBit(), ClassBit(), FactionLetter()
    local b = { i = 0, n = #ids, byZone = {} }
    ZQ.Building = b
    local clock = debugprofilestop
    local function Step()
        local t0 = clock and clock() or 0
        while b.i < b.n do
            b.i = b.i + 1
            AddQuest(b.byZone, ids[b.i], raceBit, classBit, faction)
            if clock and b.i % 25 == 0 and clock() - t0 > 8 then break end
        end
        if b.i >= b.n then
            ZQ.Index, ZQ.Building = b.byZone, nil
            ZQ.Refresh()
        else
            ZQ.UpdateProgress()
            C_Timer.After(0, Step)
        end
    end
    C_Timer.After(0, Step)
end

-- Area IDs in the index whose client name is the zone you're in.
local function AreaName(id)
    local n = ZQ.AreaNames[id]
    if n == nil then
        n = false
        if C_Map and C_Map.GetAreaInfo then
            local ok, name = pcall(C_Map.GetAreaInfo, id)
            if ok and type(name) == "string" and name ~= "" then n = name end
        end
        ZQ.AreaNames[id] = n
    end
    return n or nil
end
local function CurrentAreas()
    local here = GetRealZoneText and GetRealZoneText()
    local areas = {}
    if not here or here == "" or not ZQ.Index then return areas, here end
    for area in pairs(ZQ.Index) do
        if AreaName(area) == here then areas[area] = true end
    end
    return areas, here
end

-- =============================================================
-- Per-character checks (done, in log, earlier quests, reputation, profession)
-- =============================================================
local function Done(id) return Roadmap.QuestDone and Roadmap.QuestDone(id) or false end
local function InLog(id) return Roadmap.OnQuest and Roadmap.OnQuest(id) or false end
local function DoneOrActive(id) return id and id ~= 0 and (Done(id) or InLog(id)) or false end

local SKILL_NAME
local function HasSkill(req)
    if type(req) ~= "table" or not req[1] then return true end
    if not SKILL_NAME then
        SKILL_NAME = {}
        for name, skill in pairs(Roadmap.ProfessionSkill or {}) do SKILL_NAME[skill] = name end
    end
    local name = SKILL_NAME[req[1]]
    if not name or not Roadmap.HasProfession then return true end -- unknown skill line: let it through
    return Roadmap.HasProfession(name)
end

local function KnowsSpell(id)
    if type(id) ~= "number" or id == 0 then return true end
    local fn = IsPlayerSpell or IsSpellKnown
    if not fn then return true end
    local ok, known = pcall(fn, math.abs(id))
    if not ok then return true end
    if id > 0 then return known and true or false end
    return not known
end

local function OverMaxRep(req)
    if type(req) ~= "table" or not req[1] or not req[2] then return false end
    local cur
    if C_Reputation and C_Reputation.GetFactionDataByID then
        local ok, d = pcall(C_Reputation.GetFactionDataByID, req[1])
        if ok and d then cur = d.currentStanding end
    end
    if not cur and GetFactionInfoByID then
        local ok, _, _, _, _, _, value = pcall(GetFactionInfoByID, req[1])
        if ok then cur = value end
    end
    return cur and cur >= req[2] or false
end

-- Turn-in quests the giver only offers while you carry the item (An Apple Treat,
-- signet and coin turn-ins, sealed crates). QuestieDB has no flag for them, so they
-- are recognised by shape: the only objective is items, the giver takes it back,
-- there's no objective text, and none of the items has a known drop or vendor.
-- Returns the item ID, or nil.
local turnInCache = {}
local function HasSource(item)
    for _, k in ipairs({ "npcDrops", "objectDrops", "vendors", "itemDrops" }) do
        local v = Get("ItemDB", item, k)
        if type(v) == "table" and next(v) then return true end
    end
    return false
end
local function SameGiver(a, b)
    if type(a) ~= "table" or type(b) ~= "table" then return false end
    for _, x in ipairs(type(a[1]) == "table" and a[1] or {}) do
        for _, y in ipairs(type(b[1]) == "table" and b[1] or {}) do if x == y then return true end end
    end
    return false
end
local function TurnInItem(id)
    local c = turnInCache[id]
    if c ~= nil then return c or nil end
    c = false
    local obj = Get("QuestDB", id, "objectives")
    local items = type(obj) == "table" and obj[3]
    local function none(t) return not (type(t) == "table" and #t > 0) end
    if type(items) == "table" and #items > 0 and none(obj[1]) and none(obj[2]) and none(obj[5])
        and Get("QuestDB", id, "objectivesText") == nil
        and SameGiver(Get("QuestDB", id, "startedBy"), Get("QuestDB", id, "finishedBy")) then
        local first, sourced = nil, false
        for _, it in ipairs(items) do
            local item = type(it) == "table" and it[1]
            if item then first = first or item; if HasSource(item) then sourced = true; break end end
        end
        if first and not sourced then c = first end
    end
    turnInCache[id] = c
    return c or nil
end

-- Returns a row table, or nil plus the reason it's hidden.
local function Classify(id, level, gray)
    if Done(id) then return nil, "done" end
    local inLog = InLog(id)
    local qLevel = Get("QuestDB", id, "questLevel")
    if type(qLevel) ~= "number" or qLevel <= 0 then qLevel = level end
    local need = Get("QuestDB", id, "requiredLevel")
    need = type(need) == "number" and need or 0
    local row = { id = id, level = qLevel, need = need, inLog = inLog }
    if inLog then row.group = 1; return row end

    if (Roadmap.QuestLockedOut and Roadmap.QuestLockedOut(id))
        or DoneOrActive(Get("QuestDB", id, "nextQuestInChain"))
        or Done(Get("QuestDB", id, "availableUntilCompleted") or 0)
        or DoneOrActive(Get("QuestDB", id, "breadcrumbForQuestId")) then
        return nil, "done"
    end
    local maxLevel = Get("QuestDB", id, "requiredMaxLevel")
    if type(maxLevel) == "number" and maxLevel > 0 and level > maxLevel then return nil, "other" end
    -- Quests that start from an item, or that the giver only offers while you carry
    -- one, stay listed (dimmed, "Needs item") so you know to look for it.
    local item = ZQ.ItemStart[id]
    if item then
        local count = GetItemCount and GetItemCount(item) or 0
        if count == 0 then row.startItem = item else row.item = item end
    end
    local turnIn = TurnInItem(id)
    if turnIn and (GetItemCount and GetItemCount(turnIn) or 0) == 0 then row.needItem = turnIn end
    if not HasSkill(Get("QuestDB", id, "requiredSkill")) then return nil, "other" end
    if not KnowsSpell(Get("QuestDB", id, "requiredSpell")) then return nil, "other" end
    local disabled = Get("QuestDB", id, "disabledByQuest")
    if disabled and disabled ~= 0 and InLog(disabled) then return nil, "other" end
    local parent = Get("QuestDB", id, "parentQuest")
    if parent and parent ~= 0 and not InLog(parent) then return nil, "pre" end
    local startWith = Get("QuestDB", id, "availableStartingWith")
    if startWith and startWith ~= 0 and not DoneOrActive(startWith) then return nil, "pre" end
    if Roadmap.QuestiePrereqs and Roadmap.QuestiePrereqs(id) then return nil, "pre" end
    if Roadmap.QuestieRepShort and Roadmap.QuestieRepShort(id) then return nil, "rep" end
    if OverMaxRep(Get("QuestDB", id, "requiredMaxRep")) then return nil, "rep" end

    if need > level then
        if need > level + SOON_LEVELS then return nil, "level" end
        row.group = 3
    elseif qLevel <= gray then
        row.group = 4
    else
        row.group = 2
    end
    if (row.startItem or row.needItem) and row.group ~= 3 then row.group = 5 end
    return row
end

-- =============================================================
-- Giver name and spot (read only for the rows on screen)
-- =============================================================
local function GiverInfo(id, areas)
    local by = Get("QuestDB", id, "startedBy")
    if type(by) ~= "table" then return nil end
    -- The giver standing in this zone first (a quest can start in two places), else the first one.
    local fallback
    for k, dbName in ipairs({ "NpcDB", "ObjectDB" }) do
        for _, gid in ipairs(type(by[k]) == "table" and by[k] or {}) do
            local name = Get(dbName, gid, "name")
            if type(name) == "string" then
                fallback = fallback or name
                local spawns = Get(dbName, gid, "spawns")
                if type(spawns) == "table" then
                    for area in pairs(areas) do
                        local pts = spawns[area]
                        local p = type(pts) == "table" and pts[1]
                        if type(p) == "table" and p[1] and p[2] and p[1] >= 0 then
                            return name, p[1], p[2]
                        end
                    end
                end
            end
        end
    end
    return fallback
end

local function DifficultyColor(qLevel)
    if GetQuestDifficultyColor then
        local ok, c = pcall(GetQuestDifficultyColor, qLevel)
        if ok and type(c) == "table" and c.r then return c.r, c.g, c.b end
    end
    return 1, 0.82, 0
end

-- =============================================================
-- Window
-- =============================================================
-- Giver coordinates are on the zone's map; inside a cave or building the player's
-- best map is a sub-map, so walk up to the map of the zone you're in.
local function ZoneMapID()
    if not (C_Map and C_Map.GetBestMapForUnit) then return nil end
    local mapID = C_Map.GetBestMapForUnit("player")
    local here = GetRealZoneText and GetRealZoneText()
    local m = mapID
    for _ = 1, 5 do
        local info = m and C_Map.GetMapInfo and C_Map.GetMapInfo(m)
        if not info then break end
        if info.name == here then return m end
        if info.mapType and info.mapType <= 3 then break end -- zone or bigger: stop
        m = info.parentMapID
    end
    return mapID
end

-- Waypoint to the quest giver: TomTom when it's installed, else the game's own map
-- pin, which it also tracks (DaylightUI's marker and arrow follow that one).
local function TomTomOn()
    return type(_G.TomTom) == "table" and type(_G.TomTom.AddWaypoint) == "function"
end
local function BlizzardPinOn()
    return C_Map and C_Map.SetUserWaypoint and UiMapPoint and UiMapPoint.CreateFromCoordinates and true or false
end
local function CanPin() return TomTomOn() or BlizzardPinOn() end

local lastTomTom
local function SetWaypoint(r)
    local mapID = ZoneMapID()
    if not (mapID and r.x and r.y) then return false end
    local x, y = r.x / 100, r.y / 100
    if TomTomOn() then
        if lastTomTom and _G.TomTom.RemoveWaypoint then pcall(_G.TomTom.RemoveWaypoint, _G.TomTom, lastTomTom) end
        local ok, uid = pcall(_G.TomTom.AddWaypoint, _G.TomTom, mapID, x, y,
            { title = string.format("%s: %s", r.giver or "?", r.name or ""), persistent = false, minimap = true, world = true })
        if ok then lastTomTom = uid; return true end
    end
    if not BlizzardPinOn() then return false end
    if C_Map.CanSetUserWaypointOnMap then
        local ok, can = pcall(C_Map.CanSetUserWaypointOnMap, mapID)
        if ok and not can then return false end
    end
    local ok = pcall(function()
        C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(mapID, x, y))
        if C_SuperTrack and C_SuperTrack.SetSuperTrackedUserWaypoint then C_SuperTrack.SetSuperTrackedUserWaypoint(true) end
    end)
    return ok
end

local function RowTooltip(self)
    local r = self.Row
    if not r then return end
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText(r.name or ("#" .. r.id), 1, 0.82, 0, 1, true)
    GameTooltip:AddLine(string.format(L["Quest level %d"], r.level), 1, 1, 1)
    if r.need > (UnitLevel("player") or 1) then
        GameTooltip:AddLine(string.format(L["Requires level %d"], r.need), 1, 0.3, 0.3)
    end
    if r.giver then
        if r.x then
            GameTooltip:AddLine(string.format(L["Starts with %s, %s"], r.giver, string.format("%.0f, %.0f", r.x, r.y)), 1, 1, 1, true)
        else
            GameTooltip:AddLine(string.format(L["Starts with %s"], r.giver), 1, 1, 1, true)
        end
    end
    if r.item then GameTooltip:AddLine(L["Starts from an item in your bags."], 0.4, 1, 0.4, true) end
    local wanted = r.startItem or r.needItem
    if wanted then
        local itemName = (GetItemInfo and GetItemInfo(wanted)) or Get("ItemDB", wanted, "name") or ("#" .. wanted)
        if r.startItem then
            GameTooltip:AddLine(string.format(L["Starts from %s. Get one and use it to start the quest."], itemName), 1, 0.6, 0.2, true)
        else
            GameTooltip:AddLine(string.format(L["The giver offers this quest once you carry %s."], itemName), 1, 0.6, 0.2, true)
        end
    end
    local obj = Get("QuestDB", r.id, "objectivesText")
    if type(obj) == "table" and #obj > 0 then
        GameTooltip:AddLine(" ")
        for i, line in ipairs(obj) do
            if i > 4 then break end
            if type(line) == "string" and line ~= "" then GameTooltip:AddLine(line, 0.8, 0.8, 0.8, true) end
        end
    end
    if r.x and CanPin() then
        GameTooltip:AddLine(" ")
        GameTooltip:AddLine(L["Click: set a waypoint to the quest giver."], 0.5, 0.5, 0.5)
    end
    GameTooltip:Show()
end

local function CreateWindow()
    local f = CreateFrame("Frame", "SGJ_ZoneQuests", UIParent, "BackdropTemplate")
    f:SetSize(WIN_W, WIN_H); f:SetPoint("CENTER", 260, 40)
    f:SetFrameStrata("HIGH"); f:SetClampedToScreen(true); f:EnableMouse(true)
    f:SetMovable(true); f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving); f:SetScript("OnDragStop", f.StopMovingOrSizing)
    f:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8X8", edgeFile = "Interface\\Buttons\\WHITE8X8", edgeSize = 1 })
    f:SetBackdropColor(TC("Window", 0.05, 0.05, 0.05, 0.94)); f:SetBackdropBorderColor(TC("Edge", 0.5, 0.5, 0.5, 1))

    f.Title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    f.Title:SetPoint("TOPLEFT", 12, -10); f.Title:SetText(L["Zone Quests"]); Heading(f.Title, "Gold", nil)
    local close = CreateFrame("Button", nil, f, "UIPanelCloseButton"); close:SetPoint("TOPRIGHT", 2, 2)

    -- Optional minimap button (off by default).
    local check = CreateFrame("CheckButton", nil, f, "UICheckButtonTemplate")
    check:SetSize(22, 22)
    check.Label = check:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    check.Label:SetText(L["Minimap button"]); check.Label:SetTextColor(TC("Muted", 0.7, 0.7, 0.7))
    check.Label:SetPoint("RIGHT", close, "LEFT", -2, 0)
    check:SetPoint("RIGHT", check.Label, "LEFT", 0, 0)
    check:SetHitRectInsets(0, -(check.Label:GetStringWidth() + 4), 0, 0)
    check:SetScript("OnClick", function(self) if ZQ.SetIconShown then ZQ.SetIconShown(self:GetChecked() and true or false) end end)
    check:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
        GameTooltip:SetText(L["Minimap button"], 1, 1, 1)
        GameTooltip:AddLine(L["Shows a Zone Quests button on the minimap. Also /sgjq minimap."], nil, nil, nil, true)
        GameTooltip:Show()
    end)
    check:SetScript("OnLeave", GameTooltip_Hide)
    f.IconCheck = check

    f.Zone = f:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    f.Zone:SetPoint("TOPLEFT", f.Title, "BOTTOMLEFT", 0, -4); f.Zone:SetPoint("RIGHT", -12, 0); f.Zone:SetJustifyH("LEFT")
    f.Head = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    f.Head:SetPoint("TOPLEFT", f.Zone, "BOTTOMLEFT", 0, -2); f.Head:SetPoint("RIGHT", -12, 0); f.Head:SetJustifyH("LEFT")
    f.Head:SetTextColor(TC("Muted", 0.65, 0.65, 0.65))

    local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 8, -64); scroll:SetPoint("BOTTOMRIGHT", -28, 44)
    local child = CreateFrame("Frame", nil, scroll); child:SetSize(WIN_W - 36, 1); scroll:SetScrollChild(child)
    f.Scroll, f.Child, f.Rows = scroll, child, {}

    f.Empty = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    f.Empty:SetPoint("TOP", scroll, "TOP", 0, -30); f.Empty:SetWidth(WIN_W - 60)
    f.Empty:SetTextColor(TC("Muted", 0.6, 0.6, 0.6))

    f.Foot = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    f.Foot:SetPoint("BOTTOMLEFT", 12, 10); f.Foot:SetPoint("BOTTOMRIGHT", -12, 10); f.Foot:SetJustifyH("LEFT")
    f.Foot:SetTextColor(TC("Muted", 0.55, 0.55, 0.55))
    -- Hover the footer: which quests are hidden behind another quest or a higher level.
    local footHover = CreateFrame("Frame", nil, f)
    footHover:SetPoint("BOTTOMLEFT", 8, 4); footHover:SetPoint("BOTTOMRIGHT", -8, 4); footHover:SetHeight(28)
    footHover:EnableMouse(true)
    footHover:SetScript("OnEnter", function(self) ZQ.HiddenTooltip(self) end)
    footHover:SetScript("OnLeave", GameTooltip_Hide)

    table.insert(UISpecialFrames, "SGJ_ZoneQuests") -- Escape closes it
    f:SetScript("OnShow", function()
        if ZQ.IconShown then check:SetChecked(ZQ.IconShown()) end
        ZQ.Build(); ZQ.Refresh()
    end)
    f:Hide()
    ZQ.Frame = f
    return f
end

local function GetRow(f, i)
    local row = f.Rows[i]
    if row then return row end
    row = CreateFrame("Button", nil, f.Child, "BackdropTemplate")
    row:SetHeight(ROW_H - 3)
    row:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8X8", edgeFile = "Interface\\Buttons\\WHITE8X8", edgeSize = 1 })
    row:SetBackdropColor(TC("Panel", 0.08, 0.08, 0.08, 0.85))
    local hl = row:CreateTexture(nil, "HIGHLIGHT"); hl:SetAllPoints(); hl:SetColorTexture(1, 1, 1, 0.06)
    row.Status = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall"); row.Status:SetPoint("TOPRIGHT", -6, -4)
    row.Name = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    row.Name:SetPoint("TOPLEFT", 6, -4); row.Name:SetPoint("RIGHT", row.Status, "LEFT", -6, 0)
    row.Name:SetJustifyH("LEFT"); row.Name:SetWordWrap(false)
    row.Sub = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    row.Sub:SetPoint("BOTTOMLEFT", 6, 4); row.Sub:SetPoint("RIGHT", -6, 0)
    row.Sub:SetJustifyH("LEFT"); row.Sub:SetWordWrap(false); row.Sub:SetTextColor(TC("Muted", 0.6, 0.6, 0.6))
    row:SetScript("OnEnter", RowTooltip)
    row:SetScript("OnLeave", GameTooltip_Hide)
    row:SetScript("OnClick", function(self)
        local r = self.Row
        if r and r.x and SetWaypoint(r) then
            print(string.format("|cff00ccff[Roadmap]|r " .. L["Waypoint: %s (%s)"], r.giver or "?",
                string.format("%.0f, %.0f", r.x, r.y)))
        end
    end)
    f.Rows[i] = row
    return row
end

local HIDDEN_MAX = 15
function ZQ.HiddenTooltip(owner)
    local list = ZQ.HiddenList
    if not list or #list == 0 then return end
    local items = {}
    for _, h in ipairs(list) do
        local n = Get("QuestDB", h.id, "name")
        local q = { id = h.id, why = h.why, name = type(n) == "string" and n or ("#" .. h.id) }
        local lvl = Get("QuestDB", h.id, "requiredLevel")
        q.need = type(lvl) == "number" and lvl or 0
        if h.why == "pre" and Roadmap.QuestiePrereqs then q.first, q.steps = Roadmap.QuestiePrereqs(h.id) end
        items[#items + 1] = q
    end
    table.sort(items, function(a, b)
        if a.why ~= b.why then return a.why == "pre" end
        if a.need ~= b.need then return a.need < b.need end
        return a.name < b.name
    end)
    GameTooltip:SetOwner(owner, "ANCHOR_TOP")
    GameTooltip:SetText(L["Hidden quests"], 1, 0.82, 0)
    local shown, lastWhy = 0, nil
    for _, q in ipairs(items) do
        if shown >= HIDDEN_MAX then
            GameTooltip:AddLine(string.format(L["...and %d more"], #items - shown), 0.6, 0.6, 0.6)
            break
        end
        if q.why ~= lastWhy then
            GameTooltip:AddLine(" ")
            GameTooltip:AddLine(q.why == "pre" and L["Need another quest first:"] or L["Higher level:"], 0.7, 0.7, 0.7)
            lastWhy = q.why
        end
        if q.why == "pre" then
            local fname = q.first and (Roadmap.QuestieName and Roadmap.QuestieName(q.first) or ("#" .. q.first))
            local right = fname and string.format(L["Start with: %s"], fname) or ""
            GameTooltip:AddDoubleLine(q.name, right, 1, 1, 1, 1, 0.6, 0.2)
        else
            GameTooltip:AddDoubleLine(q.name, string.format(L["At level %d"], q.need), 1, 1, 1, 0.6, 0.6, 0.6)
        end
        shown = shown + 1
    end
    GameTooltip:Show()
end

function ZQ.UpdateProgress()
    local f = ZQ.Frame
    if not (f and f:IsShown() and ZQ.Building) then return end
    local b = ZQ.Building
    f.Empty:SetText(string.format(L["Reading quests... %d%%"], floor(b.i / max(1, b.n) * 100)))
    f.Empty:Show()
end

function ZQ.Refresh()
    local f = ZQ.Frame
    if not (f and f:IsShown()) then return end
    for _, row in ipairs(f.Rows) do row:Hide() end
    f.Foot:SetText(""); f.Head:SetText("")
    f.Zone:SetText((GetRealZoneText and GetRealZoneText()) or "")
    if not HasQuestie() then
        f.Empty:SetText(L["Zone Quests needs the QuestieDB addon: it knows every quest and who gives it."])
        f.Empty:Show()
        return
    end
    if not ZQ.Index then ZQ.Build(); ZQ.UpdateProgress(); return end

    local areas = CurrentAreas()
    local level = UnitLevel("player") or 1
    local gray = GrayLevel(level)
    local seen, rows = {}, {}
    local hidden = { done = 0, pre = 0, rep = 0, level = 0, item = 0, other = 0 }
    local hiddenList = {}
    ZQ.HiddenList = hiddenList
    for area in pairs(areas) do
        for _, id in ipairs(ZQ.Index[area] or {}) do
            if not seen[id] then
                seen[id] = true
                local r, why = Classify(id, level, gray)
                if r then rows[#rows + 1] = r elseif why then
                    hidden[why] = hidden[why] + 1
                    if why == "pre" or why == "level" then hiddenList[#hiddenList + 1] = { id = id, why = why } end
                end
            end
        end
    end
    for _, r in ipairs(rows) do
        local n = Get("QuestDB", r.id, "name")
        r.name = type(n) == "string" and n or ("#" .. r.id)
        r.giver, r.x, r.y = GiverInfo(r.id, areas)
    end
    table.sort(rows, function(a, b)
        -- log, open, soon, needs an item, gray
        if a.group ~= b.group then return GROUP_ORDER[a.group] < GROUP_ORDER[b.group] end
        if a.group == 3 and a.need ~= b.need then return a.need < b.need end
        if a.level ~= b.level then return a.level < b.level end
        return a.name < b.name
    end)

    local w = f.Child:GetWidth()
    local counts = { 0, 0, 0, 0, 0 }
    for i, r in ipairs(rows) do
        counts[r.group] = counts[r.group] + 1
        local row = GetRow(f, i)
        row.Row = r
        row:ClearAllPoints(); row:SetPoint("TOPLEFT", 0, -(i - 1) * ROW_H); row:SetWidth(w)
        local cr, cg, cb = DifficultyColor(r.level)
        row.Name:SetText(string.format("[%d] %s", r.level, r.name))
        row.Name:SetTextColor(cr, cg, cb)
        local sub = r.giver and (r.x and string.format("%s (%.0f, %.0f)", r.giver, r.x, r.y) or r.giver)
        local startsWith = not sub and (r.startItem or r.item)
        if startsWith then sub = (GetItemInfo and GetItemInfo(startsWith)) or Get("ItemDB", startsWith, "name") end
        row.Sub:SetText(sub or "")
        local dim = r.group >= 3
        row:SetAlpha(dim and 0.55 or 1)
        if r.group == 1 then
            row.Status:SetText("|cff55ff55" .. L["In your log"] .. "|r")
            row:SetBackdropBorderColor(0.33, 0.85, 0.33, 0.7)
        elseif r.group == 3 then
            row.Status:SetText("|cff999999" .. string.format(L["At level %d"], r.need) .. "|r")
            row:SetBackdropBorderColor(TC("Edge", 1, 1, 1, 0.12))
        elseif r.group == 5 then
            row.Status:SetText("|cffff9933" .. (r.startItem and L["From an item"] or L["Needs item"]) .. "|r")
            row:SetBackdropBorderColor(TC("Edge", 1, 1, 1, 0.12))
        else
            row.Status:SetText("")
            row:SetBackdropBorderColor(TC("Edge", 1, 1, 1, 0.12))
        end
        row:Show()
    end
    f.Child:SetHeight(max(1, #rows * ROW_H))
    local bar = f.Scroll.ScrollBar
    if bar then
        local fits = #rows * ROW_H <= (f.Scroll:GetHeight() or 0) + 1
        bar:SetShown(not fits)
        if fits then f.Scroll:SetVerticalScroll(0) end
    end

    f.Empty:SetShown(#rows == 0)
    f.Empty:SetText(L["No quests left for you here."])
    local open = counts[1] + counts[2]
    local head = { open == 1 and L["1 quest to do"] or string.format(L["%d quests to do"], open) }
    if counts[1] > 0 then head[#head + 1] = string.format(L["%d in your log"], counts[1]) end
    if counts[3] > 0 then head[#head + 1] = string.format(L["%d soon"], counts[3]) end
    if counts[5] > 0 then head[#head + 1] = string.format(L["%d need an item"], counts[5]) end
    if counts[4] > 0 then head[#head + 1] = string.format(L["%d gray"], counts[4]) end
    f.Head:SetText(table.concat(head, " · "))

    local foot = {}
    if hidden.done > 0 then foot[#foot + 1] = string.format(L["%d done"], hidden.done) end
    if hidden.pre > 0 then foot[#foot + 1] = string.format(L["%d need another quest first"], hidden.pre) end
    if hidden.rep > 0 then foot[#foot + 1] = string.format(L["%d need reputation"], hidden.rep) end
    if hidden.level > 0 then foot[#foot + 1] = string.format(L["%d higher level"], hidden.level) end
    f.Foot:SetText(#foot > 0 and string.format(L["Hidden: %s"], table.concat(foot, ", ")) or "")
end

function Roadmap.ToggleZoneQuests()
    local f = ZQ.Frame or CreateWindow()
    f:SetShown(not f:IsShown())
end

-- =============================================================
-- Minimap button (LibDBIcon from the core's Libs, so minimap button collectors
-- pick it up). Left-click opens the window, right-click hides the button;
-- /sgjq minimap brings it back. Position saved in SharpiesGearJudgeDB.ZoneQuestsIcon.
-- =============================================================
local ICON_NAME = "SGJ_ZoneQuests"
local ldb = LibStub and LibStub:GetLibrary("LibDataBroker-1.1", true)
local dbIcon = LibStub and LibStub:GetLibrary("LibDBIcon-1.0", true)

local function IconSettings()
    SharpiesGearJudgeDB = SharpiesGearJudgeDB or { customWeights = {} }
    if type(SharpiesGearJudgeDB.ZoneQuestsIcon) ~= "table" then SharpiesGearJudgeDB.ZoneQuestsIcon = { minimapPos = 200 } end
    local s = SharpiesGearJudgeDB.ZoneQuestsIcon
    if s.hide == nil then s.hide = true end -- off until the player turns it on
    return s
end

local function SetIconShown(show)
    IconSettings().hide = not show
    if ZQ.Frame and ZQ.Frame.IconCheck then ZQ.Frame.IconCheck:SetChecked(show and true or false) end
    if not (dbIcon and dbIcon:IsRegistered(ICON_NAME)) then return end
    if show then dbIcon:Show(ICON_NAME) else dbIcon:Hide(ICON_NAME) end
end
ZQ.SetIconShown = SetIconShown
ZQ.IconShown = function() return not IconSettings().hide end

local ldbObject = ldb and ldb:NewDataObject(ICON_NAME, {
    type = "launcher",
    text = L["Zone Quests"],
    icon = "Interface\\Icons\\INV_Scroll_03",
    OnClick = function(self, button)
        if button == "RightButton" then
            SetIconShown(false)
            print("|cff00ccff[Roadmap]|r " .. L["Zone Quests button hidden. Type /sgjq minimap to show it again."])
        else
            Roadmap.ToggleZoneQuests()
        end
    end,
    OnTooltipShow = function(tooltip)
        tooltip:AddLine("|cffffd100" .. L["Zone Quests"] .. "|r")
        tooltip:AddLine(L["Every quest you can pick up in the zone you're in."], 1, 1, 1, true)
        tooltip:AddLine(L["Click to open. Right-click to hide this button."], 0.6, 0.6, 0.6, true)
    end,
})

do
    local login = CreateFrame("Frame")
    login:RegisterEvent("PLAYER_LOGIN")
    login:SetScript("OnEvent", function()
        if dbIcon and ldbObject and not dbIcon:IsRegistered(ICON_NAME) then
            dbIcon:Register(ICON_NAME, ldbObject, IconSettings())
        end
    end)
end

SLASH_SGJ_ZONEQUESTS1 = "/sgjq"
SLASH_SGJ_ZONEQUESTS2 = "/sgjquests"
SlashCmdList["SGJ_ZONEQUESTS"] = function(msg)
    if type(msg) == "string" and msg:lower():match("^%s*minimap") then
        local show = IconSettings().hide and true or false
        SetIconShown(show)
        print("|cff00ccff[Roadmap]|r " .. (show and L["Zone Quests button shown."] or L["Zone Quests button hidden. Type /sgjq minimap to show it again."]))
        return
    end
    Roadmap.ToggleZoneQuests()
end

-- Refresh on zone change, quest log changes and level-ups (coalesced; turn-ins take a moment to register).
do
    local watch = CreateFrame("Frame")
    for _, e in ipairs({ "ZONE_CHANGED_NEW_AREA", "QUEST_ACCEPTED", "QUEST_REMOVED", "QUEST_TURNED_IN", "PLAYER_LEVEL_UP", "SKILL_LINES_CHANGED", "BAG_UPDATE_DELAYED" }) do
        pcall(watch.RegisterEvent, watch, e)
    end
    local pending = false
    watch:SetScript("OnEvent", function()
        if pending or not (ZQ.Frame and ZQ.Frame:IsShown()) then return end
        pending = true
        C_Timer.After(0.7, function() pending = false; ZQ.Refresh() end)
    end)
end
