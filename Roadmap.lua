-- =============================================================
-- 1. ROBUST HEADER & MAIN ADDON BRIDGE
-- =============================================================
local addonName, ns = ...

-- Connect to Main Addon's Global Variable
local SGJ = _G["MSC"] 

if not SGJ then 
    SGJ = _G["SharpiesGearJudge"]
end

if not SGJ then 
    print("|cffff0000[Roadmap]|r Error: Main Addon (MSC) not found! Please enable SharpiesGearJudge.")
    return 
end

local L = SGJ.L or setmetatable({}, { __index = function(t, k) return k end })

-- Zone/dungeon names are translated at display time. "<Zone> Quests" rows are shown
-- through the "%s Quests" format so only the zone part needs a translation.
local function ZoneDisplayName(name)
    if not name then return name end
    if string.sub(name, -7) == " Quests" then
        return string.format(L["%s Quests"], L[string.sub(name, 1, -8)])
    end
    return L[name]
end

SGJ.DungeonDB = SGJ.DungeonDB or {}
if ns.DungeonDB then
    for k, v in pairs(ns.DungeonDB) do SGJ.DungeonDB[k] = v end
end
-- Dungeon quest rewards (D5_Quests_Forever.lua) join their dungeon's loot table.
-- They carry a questID, which the Dungeon Quests / Dungeon Loot checkboxes use.
if ns.QuestDB then
    for zone, items in pairs(ns.QuestDB) do
        local loot = SGJ.DungeonDB[zone] or {}
        SGJ.DungeonDB[zone] = loot
        for itemID, info in pairs(items) do
            if not loot[itemID] then
                -- source holds the quest name; shown as L["Quest: %s"] (translated) at display
                info.dungeonQuest = true
                loot[itemID] = info
            end
        end
    end
end

local Roadmap = {}
SGJ.Roadmap = Roadmap

local _, _, _, interfaceVersion = GetBuildInfo()
Roadmap.IsEra = (SGJ.IsEra or SGJ.IsForever)
Roadmap.IsTBC = SGJ.IsTBC

-- [[ OPTIMIZATION: Localize Globals for Speed ]]
local ipairs, pairs, next, tonumber = ipairs, pairs, next, tonumber
local table_insert, table_sort, table_wipe = table.insert, table.sort, table.wipe
local GetItemInfo = GetItemInfo or (C_Item and C_Item.GetItemInfo)
local GetInventoryItemLink = GetInventoryItemLink
local GetItemIcon = GetItemIcon or (C_Item and C_Item.GetItemIconByID)
local SetItemButtonTexture = function(btn, tex) if not btn.icon then btn.icon = btn:CreateTexture(nil, "BACKGROUND"); btn.icon:SetAllPoints() end btn.icon:SetTexture(tex) end

-- [[ OPTIMIZATION: Recyclable Tables ]]
local Scratch_SimGear = {} 
local UniqueCache = {}

-- =============================================================
-- 2. LAYOUT & CONFIG
-- =============================================================

-- [NEW] Added PvP GameMode State Tracker
Roadmap.FocusStat = nil
Roadmap.GameMode = "PvE" -- Default to PvE Mode
Roadmap.SelectedZone = nil
-- col: L/R = columns beside the model (row 1 at top), W = weapon row under the feet
local SLOTS = {
    { id=1,  name="Head",      col="L", row=1, texture="Head" },
    { id=2,  name="Neck",      col="L", row=2, texture="Neck" },
    { id=3,  name="Shoulder",  col="L", row=3, texture="Shoulder" },
    { id=15, name="Back",      col="L", row=4, texture="Chest" },
    { id=5,  name="Chest",     col="L", row=5, texture="Chest" },
    { id=9,  name="Wrist",     col="L", row=6, texture="Wrists" },
    { id=10, name="Hands",     col="L", row=7, texture="Hands" },
    { id=6,  name="Waist",     col="R", row=1, texture="Waist" },
    { id=7,  name="Legs",      col="R", row=2, texture="Legs" },
    { id=8,  name="Feet",      col="R", row=3, texture="Feet" },
    { id=11, name="Ring 1",    col="R", row=4, texture="Finger" },
    { id=12, name="Ring 2",    col="R", row=5, texture="Finger" },
    { id=13, name="Trinket 1", col="R", row=6, texture="Trinket" },
    { id=14, name="Trinket 2", col="R", row=7, texture="Trinket" },
    { id=16, name="Main Hand", col="W", row=1, texture="MainHand" },
    { id=17, name="Off Hand",  col="W", row=2, texture="SecondaryHand" },
    { id=18, name="Ranged",    col="W", row=3, texture="Ranged" },
}

local ZONE_META = {
    -- === VANILLA ===
    ["Ragefire Chasm"]    = { name="Ragefire Chasm",    min=13 },
    ["Deadmines"]        = { name="The Deadmines",     min=17 },
    ["Wailing Caverns"]   = { name="Wailing Caverns",   min=17 },
    ["Hall of Thanes"]    = { name="Hall of Thanes",    min=13 }, -- Forever only
    ["Ruins of Lordaeron"]= { name="Ruins of Lordaeron", min=15 }, -- Forever only
    ["Excavation Site"]   = { name="Excavation Site: Wetlands", min=26 }, -- Forever only (2 Oct patch)
    ["Shadowfang Keep"]   = { name="Shadowfang Keep",   min=22 },
    ["Blackfathom Deeps"] = { name="Blackfathom Deeps", min=24 },
    ["The Stockade"]      = { name="The Stockade",      min=24 },
    ["Gnomeregan"]       = { name="Gnomeregan",        min=29 },
    ["Razorfen Kraul"]    = { name="Razorfen Kraul",    min=30 },
    ["Scarlet Monastery"] = { name="Scarlet Monastery", min=28 },
    ["Razorfen Downs"]    = { name="Razorfen Downs",    min=40 },
    ["Uldaman"]          = { name="Uldaman",           min=42 },
    ["Zul'Farrak"]        = { name="Zul'Farrak",        min=44 },
    ["Maraudon"]         = { name="Maraudon",          min=46 },
    ["The Temple of Atal'Hakkar"]  = { name="The Temple of Atal'Hakkar",     min=50 },
    ["Blackrock Depths"]  = { name="Blackrock Depths",  min=52 },
    ["Dire Maul"]         = { name="Dire Maul",         min=55 },
    ["Scholomance"]      = { name="Scholomance",       min=58 },
    ["Stratholme"]       = { name="Stratholme",        min=58 },
    ["Blackrock Spire"]   = { name="Blackrock Spire",   min=58 },
    ["Zul'Gurub"]         = { name="Zul'Gurub (20-Man)",         min=60, phase=0 },
    ["Ruins of Ahn'Qiraj"]= { name="Ruins of Ahn'Qiraj (AQ20)", min=60, phase=0 },

    -- === TBC NORMAL ===
    ["HellfireRamparts"] = { name="Hellfire Ramparts", min=60 },
    ["BloodFurnace"]     = { name="Blood Furnace",     min=61 },
    ["SlavePens"]        = { name="Slave Pens",        min=62 },
    ["Underbog"]         = { name="The Underbog",      min=63 },
    ["ManaTombs"]        = { name="Mana-Tombs",        min=64 },
    ["AuchenaiCrypts"]   = { name="Auchenai Crypts",   min=65 },
    ["OldHillsbrad"]     = { name="Old Hillsbrad",     min=66 },
    ["SethekkHalls"]     = { name="Sethekk Halls",     min=67 },
    ["ShadowLabyrinth"]  = { name="Shadow Labyrinth",  min=68 },
    ["ShatteredHalls"]   = { name="Shattered Halls",   min=68 },
    ["Steamvault"]       = { name="The Steamvault",    min=68 },
    ["Mechanar"]         = { name="The Mechanar",      min=69 },
    ["Botanica"]         = { name="The Botanica",      min=70 },
    ["Arcatraz"]         = { name="The Arcatraz",      min=70 },
    ["BlackMorass"]      = { name="The Black Morass",  min=70 },
    ["MagistersTerrace"] = { name="Magisters' Terrace", min=70, phase=5 },

    -- === TBC HEROIC ===
    ["Ramparts_HC"]      = { name="Heroic: Ramparts",   min=70 },
    ["BloodFurnace_HC"]  = { name="Heroic: Furnace",    min=70 },
    ["SlavePens_HC"]     = { name="Heroic: Slave Pens", min=70 },
    ["Underbog_HC"]      = { name="Heroic: Underbog",   min=70 },
    ["ManaTombs_HC"]     = { name="Heroic: Mana-Tombs", min=70 },
    ["AuchenaiCrypts_HC"]= { name="Heroic: Crypts",     min=70 },
    ["OldHillsbrad_HC"]  = { name="Heroic: Hillsbrad",  min=70 },
    ["SethekkHalls_HC"]  = { name="Heroic: Sethekk",    min=70 },
    ["ShadowLab_HC"]     = { name="Heroic: Shadow Lab", min=70 },
    ["ShatteredHalls_HC"]= { name="Heroic: Shattered",  min=70 },
    ["Steamvault_HC"]    = { name="Heroic: Steamvault", min=70 },
    ["Mechanar_HC"]      = { name="Heroic: Mechanar",   min=70 },
    ["Botanica_HC"]      = { name="Heroic: Botanica",   min=70 },
    ["Arcatraz_HC"]      = { name="Heroic: Arcatraz",   min=70 },
    ["BlackMorass_HC"]   = { name="Heroic: Morass",     min=70 },
    ["Magisters_HC"]     = { name="Heroic: MgT",        min=70, phase=5 },
	
	-- === VIRTUAL ZONES ===
    ["Geras_Badges"] = { name = "G'eras (Badge Vendor)", min = 70, phase = 1 },
	-- side = only that faction can do these quests; tbc = Burning Crusade content
	["Elwynn Forest Quests"]  = { name = "Elwynn Forest Quests", min = 1, side = "Alliance" },
	["Dun Morogh Quests"]  = { name = "Dun Morogh Quests", min = 1, side = "Alliance" },
	["Teldrassil Quests"]  = { name = "Teldrassil Quests", min = 1, side = "Alliance" },
	["Bloodmyst Isle Quests"]  = { name = "Bloodmyst Isle Quests", min = 1, side = "Alliance", tbc = true },
}

-- Default TBC launch dungeons to phase 1 (MgT explicitly set to 5 above)
local TBC_LAUNCH_KEYS = {
    HellfireRamparts=true, BloodFurnace=true, SlavePens=true, Underbog=true, ManaTombs=true,
    AuchenaiCrypts=true, OldHillsbrad=true, SethekkHalls=true, ShadowLabyrinth=true,
    ShatteredHalls=true, Steamvault=true, Mechanar=true, Botanica=true, Arcatraz=true,
    BlackMorass=true, Ramparts_HC=true, BloodFurnace_HC=true, SlavePens_HC=true,
    Underbog_HC=true, ManaTombs_HC=true, AuchenaiCrypts_HC=true, OldHillsbrad_HC=true,
    SethekkHalls_HC=true, ShadowLab_HC=true, ShatteredHalls_HC=true, Steamvault_HC=true,
    Mechanar_HC=true, Botanica_HC=true, Arcatraz_HC=true, BlackMorass_HC=true,
}
-- Data files can add their own zones (D5_Quests_Forever.lua: "<Zone> Quests").
if ns.ZoneMeta then
    for key, meta in pairs(ns.ZoneMeta) do
        if not ZONE_META[key] then ZONE_META[key] = meta end
    end
end
for key, meta in pairs(ZONE_META) do
    if not meta.phase then
        if TBC_LAUNCH_KEYS[key] then meta.phase = 1
        else meta.phase = 0 end -- vanilla + quest zones
    end
end

Roadmap.UseLevelFilter = true
Roadmap.LevelFloor = nil   -- loaded from SharpiesGearJudgeDB.RoadmapLevelFloor on first use (default 1)
Roadmap.LevelCeiling = nil -- nil = follow the player's level
Roadmap.ShowHeroic = false
Roadmap.ChainMode = false
Roadmap.ShowBadges = true
-- What a scan includes; saved in SharpiesGearJudgeDB.RoadmapSources (all on by default).
Roadmap.Sources = nil
Roadmap.SortByEfficiency = false
Roadmap.FocusStat = nil
Roadmap.SelectedZone = nil
Roadmap.OverrideSpec = nil 
Roadmap.ScanResults = {}
Roadmap.BestIndices = {} 
Roadmap.MissingItems = {} 
Roadmap.ZoneRankings = {} 
Roadmap.ForcedPairs = {} 
Roadmap.VirtualGear = {} 
Roadmap.IgnoredSlots = {}
Roadmap.RealGearStats = {} 

-- =============================================================
-- 3. UI INITIALIZATION (DROPDOWNS AND FRAMES)
-- =============================================================

local function SetCheckLabel(btn, text)
    if btn.Text then btn.Text:SetText(text)
    else local g = _G[btn:GetName().."Text"]; if g then g:SetText(text) end end
end

-- [[ LEVEL RANGE: floor/ceiling for the dungeon list ]]
-- The floor is saved between sessions. The ceiling follows your level until you move it.
function Roadmap:GetLevelSliderCap() return Roadmap.IsTBC and 70 or 60 end

function Roadmap:GetLevelRange()
    local cap = Roadmap:GetLevelSliderCap()
    if Roadmap.LevelFloor == nil then
        Roadmap.LevelFloor = (SharpiesGearJudgeDB and SharpiesGearJudgeDB.RoadmapLevelFloor) or 1
    end
    local hi = math.max(1, math.min(cap, Roadmap.LevelCeiling or UnitLevel("player")))
    local lo = math.max(1, math.min(hi, Roadmap.LevelFloor))
    return lo, hi
end

function Roadmap:SetLevelRange(lo, hi)
    local cap = Roadmap:GetLevelSliderCap()
    lo = math.max(1, math.min(cap, math.floor(lo + 0.5)))
    hi = math.max(lo, math.min(cap, math.floor(hi + 0.5)))
    Roadmap.LevelFloor = lo
    if hi == math.min(cap, UnitLevel("player")) then Roadmap.LevelCeiling = nil else Roadmap.LevelCeiling = hi end
    if SharpiesGearJudgeDB then SharpiesGearJudgeDB.RoadmapLevelFloor = lo end
end

-- [[ SOURCES: dungeon loot, dungeon quest rewards, world quest rewards ]]
function Roadmap:GetSources()
    if not Roadmap.Sources then
        local saved = SharpiesGearJudgeDB and SharpiesGearJudgeDB.RoadmapSources
        Roadmap.Sources = {
            dungeonLoot   = not (saved and saved.dungeonLoot == false),
            dungeonQuests = not (saved and saved.dungeonQuests == false),
            worldQuests   = not (saved and saved.worldQuests == false),
        }
    end
    return Roadmap.Sources
end

function Roadmap:SetSource(key, on)
    Roadmap:GetSources()[key] = on and true or false
    if SharpiesGearJudgeDB then
        SharpiesGearJudgeDB.RoadmapSources = SharpiesGearJudgeDB.RoadmapSources or {}
        SharpiesGearJudgeDB.RoadmapSources[key] = on and true or false
    end
end

-- "<Zone> Quests" rows hold world quest rewards; a row marked dungeon = true holds
-- the quest rewards of a raid or dungeon that has no loot row of its own.
local function IsWorldQuestZone(zoneKey, meta)
    if meta.dungeon then return false end
    return meta.world or (string.sub(zoneKey, -7) == " Quests")
end

-- Whether an item passes the source checkboxes (world quest rows are checked per zone).
local function ItemSourceAllowed(zoneKey, meta, info)
    if not meta or IsWorldQuestZone(zoneKey, meta) or zoneKey == "Geras_Badges" then return true end
    local src = Roadmap:GetSources()
    if info.questID then return src.dungeonQuests end
    return src.dungeonLoot
end

-- Zones the next Calculate will check (mode, level range, phase and source filters applied).
function Roadmap:GetZonesToScan()
    local minLvl, maxLvl = Roadmap:GetLevelRange()
    local zones = {}
    for zoneKey, meta in pairs(ZONE_META) do
        if (SGJ.DungeonDB and SGJ.DungeonDB[zoneKey]) or (ns.DungeonDB and ns.DungeonDB[zoneKey]) then
            local isHeroicKey = string.find(zoneKey, "_HC")
            local isBadgeKey = (zoneKey == "Geras_Badges")
            local modeMatch = false

            if Roadmap.IsEra then
                modeMatch = (not isHeroicKey) and (not isBadgeKey) and ((meta.phase or 0) == 0)
            else
                if isBadgeKey then
                    modeMatch = Roadmap.ShowBadges
                else
                    modeMatch = (Roadmap.ShowHeroic and isHeroicKey) or (not Roadmap.ShowHeroic and not isHeroicKey and not isBadgeKey)
                end
            end

            local levelMatch = (not Roadmap.UseLevelFilter) or (meta.min >= minLvl and meta.min <= maxLvl)
            local phaseMatch = Roadmap.IsEra or (not meta.phase) or (meta.phase <= Roadmap:GetContentPhase())

            local src = Roadmap:GetSources()
            local sourceMatch
            if isBadgeKey then sourceMatch = true
            elseif IsWorldQuestZone(zoneKey, meta) then sourceMatch = src.worldQuests
            elseif meta.dungeon then sourceMatch = src.dungeonQuests
            else sourceMatch = src.dungeonLoot or src.dungeonQuests end

            -- Race starting zones (Zephras Isle: Skyborne only) can't be reached by other races
            local raceMatch = (not meta.race) or (select(2, UnitRace("player")) == meta.race)
            -- One faction's quest zones, and Burning Crusade zones outside TBC (Bloodmyst Isle)
            local sideMatch = (not meta.side) or (UnitFactionGroup("player") == meta.side)
            local expansionMatch = (not meta.tbc) or Roadmap.IsTBC

            if modeMatch and levelMatch and phaseMatch and sourceMatch and raceMatch and sideMatch and expansionMatch then
                table.insert(zones, {key=zoneKey, meta=meta})
            end
        end
    end
    return zones
end

-- Level bar: drag either handle, click the bar to move the nearer one, right-click to reset.
-- Dragging one handle past the other pushes it along.
function Roadmap:CreateLevelRangeSlider(parent, width)
    local W, THUMB_W = width or 140, 7
    local cap = Roadmap:GetLevelSliderCap()

    local holder = CreateFrame("Frame", "SGJ_RoadmapLevelRange", parent)
    holder:SetSize(W, 36)

    local track = CreateFrame("Button", nil, holder)
    track:SetSize(W, 20); track:SetPoint("TOPLEFT")
    track:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    local edge = track:CreateTexture(nil, "BACKGROUND", nil, -1); edge:SetPoint("TOPLEFT", -1, 1); edge:SetPoint("BOTTOMRIGHT", 1, -1); edge:SetColorTexture(0.33, 0.33, 0.33, 1)
    local bg = track:CreateTexture(nil, "BACKGROUND"); bg:SetAllPoints(); bg:SetColorTexture(0.1, 0.1, 0.1, 1)
    local fill = track:CreateTexture(nil, "ARTWORK"); fill:SetColorTexture(1, 0.82, 0, 0.3)

    -- Label sits on its own layer so the handles never cover it
    local textLayer = CreateFrame("Frame", nil, track)
    textLayer:SetAllPoints(); textLayer:SetFrameLevel(track:GetFrameLevel() + 3)
    local text = textLayer:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall"); text:SetPoint("CENTER")

    local count = holder:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    count:SetPoint("TOPLEFT", track, "BOTTOMLEFT", 0, -3); count:SetTextColor(0.6, 0.6, 0.6)

    local span = W - THUMB_W
    local function XForValue(v) return THUMB_W / 2 + (v - 1) / math.max(1, cap - 1) * span end
    local function ValueAtCursor()
        local x = GetCursorPosition() / track:GetEffectiveScale()
        local frac = (x - track:GetLeft() - THUMB_W / 2) / span
        return 1 + math.max(0, math.min(1, frac)) * (cap - 1)
    end

    local thumbs = {}
    function holder:Refresh()
        local lo, hi = Roadmap:GetLevelRange()
        local x1, x2 = XForValue(lo), XForValue(hi)
        thumbs[1]:SetPoint("CENTER", track, "LEFT", x1, 0)
        thumbs[2]:SetPoint("CENTER", track, "LEFT", x2, 0)
        fill:ClearAllPoints()
        fill:SetPoint("TOPLEFT", track, "TOPLEFT", x1, 0)
        fill:SetPoint("BOTTOMLEFT", track, "BOTTOMLEFT", x1, 0)
        fill:SetWidth(math.max(1, x2 - x1))
        local n = #Roadmap:GetZonesToScan()
        if Roadmap.UseLevelFilter then
            text:SetText(string.format(L["Levels %d - %d"], lo, hi))
            track:SetAlpha(1)
        else
            text:SetText(L["All levels"])
            track:SetAlpha(0.45)
        end
        if n == 1 then count:SetText(string.format(L["%d dungeon to check"], n)) else count:SetText(string.format(L["%d dungeons to check"], n)) end
    end

    local function MoveThumb(which, v)
        local lo, hi = Roadmap:GetLevelRange()
        if which == 1 then Roadmap:SetLevelRange(v, math.max(hi, v))
        else Roadmap:SetLevelRange(math.min(lo, v), v) end
        holder:Refresh()
    end

    for i = 1, 2 do
        local t = CreateFrame("Button", nil, track)
        t:SetSize(THUMB_W, 24); t:SetFrameLevel(track:GetFrameLevel() + 2)
        local tex = t:CreateTexture(nil, "OVERLAY"); tex:SetAllPoints(); tex:SetColorTexture(0.85, 0.68, 0.0, 1)
        t:SetScript("OnEnter", function() tex:SetColorTexture(1, 0.85, 0.1, 1) end)
        t:SetScript("OnLeave", function() tex:SetColorTexture(0.85, 0.68, 0.0, 1) end)
        t:SetScript("OnMouseDown", function(self)
            -- Only move when the rounded level changes: each move recounts the zones.
            local last
            self:SetScript("OnUpdate", function()
                local v = math.floor(ValueAtCursor() + 0.5)
                if v ~= last then last = v; MoveThumb(i, v) end
            end)
        end)
        t:SetScript("OnMouseUp", function(self) self:SetScript("OnUpdate", nil) end)
        t:SetScript("OnHide", function(self) self:SetScript("OnUpdate", nil) end)
        thumbs[i] = t
    end

    track:SetScript("OnClick", function(self, button)
        if button == "RightButton" then
            Roadmap:SetLevelRange(1, UnitLevel("player")); holder:Refresh(); return
        end
        local v = ValueAtCursor()
        local lo, hi = Roadmap:GetLevelRange()
        MoveThumb((math.abs(v - lo) <= math.abs(v - hi)) and 1 or 2, v)
    end)
    track:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetText(L["Dungeon Levels"])
        GameTooltip:AddLine(L["Only dungeons whose minimum level is inside this range are checked,"], 1, 1, 1)
        GameTooltip:AddLine(L["and items that require a higher level than the top value are skipped."], 1, 1, 1)
        GameTooltip:AddLine(L["Raise the low end to focus on endgame dungeons."], 0, 1, 0)
        GameTooltip:AddLine(L["Raise the high end to plan upgrades ahead of your level."], 0, 1, 0)
        GameTooltip:AddLine(L["Right-click to reset to 1 - your level."], 0.6, 0.6, 0.6)
        GameTooltip:Show()
    end)
    track:SetScript("OnLeave", GameTooltip_Hide)

    holder:SetScript("OnShow", function(self) self:Refresh() end)
    holder:Refresh()
    Roadmap.LevelBar = holder
    return holder
end

function Roadmap:GetContentPhase()
    if SGJ_Settings and SGJ_Settings.ContentPhase then return SGJ_Settings.ContentPhase end
    return 1
end

function Roadmap:InitContentPhaseDropDown(parent, anchorFrame)
    local phaseDrop = CreateFrame("Frame", "SGJ_RoadmapPhaseDropDown", parent, "UIDropDownMenuTemplate")
    phaseDrop:SetPoint("TOPLEFT", anchorFrame, "BOTTOMLEFT", 0, 5)
    UIDropDownMenu_SetWidth(phaseDrop, 150)
    local phases = {
        { val = 1, text = "P1: Kara / Gruul" },
        { val = 2, text = "P2: SSC / TK" },
        { val = 3, text = "P3: BT / Hyjal" },
        { val = 4, text = "P4: Zul'Aman" },
        { val = 5, text = "P5: Sunwell / MgT" },
    }
    UIDropDownMenu_Initialize(phaseDrop, function(self, level)
        local info = UIDropDownMenu_CreateInfo()
        for _, p in ipairs(phases) do
            info.text = L[p.text]; info.value = p.val
            info.checked = (Roadmap:GetContentPhase() == p.val)
            info.func = function()
                if not SGJ_Settings then SGJ_Settings = {} end
                SGJ_Settings.ContentPhase = p.val
                UIDropDownMenu_SetText(phaseDrop, string.format(L["Phase: %s"], L[p.text]))
                Roadmap.ZoneRankings = {}
                if MSC and MSC.BuildGemOptionsForPhase then
                    MSC:BuildGemOptionsForPhase(p.val)
                    if MSC.BumpScoringRevision then MSC:BumpScoringRevision() end
                end
                print(string.format(L["SGJ Roadmap: Content phase set to %s. Click Calculate to refresh."], L[p.text]))
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)
    local cur = Roadmap:GetContentPhase()
    local label = L["Phase: P1"]
    for _, p in ipairs(phases) do if p.val == cur then label = string.format(L["Phase: %s"], L[p.text]) break end end
    UIDropDownMenu_SetText(phaseDrop, label)
    parent.PhaseDropDown = phaseDrop
end

-- Layout: scan settings (left) | character and gear slots (centre) | dungeon leaderboard (right)
local LEFT_W, RIGHT_W = 190, 210
local SLOT_SIZE, SLOT_TOP, SLOT_STEP = 37, -56, 54

local function AddTooltip(frame, title, ...)
    local lines = { ... }
    frame:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetText(title)
        for _, l in ipairs(lines) do GameTooltip:AddLine(l, 1, 1, 1, true) end
        GameTooltip:Show()
    end)
    frame:SetScript("OnLeave", GameTooltip_Hide)
end

local function MakeCheck(parent, name, label, checked, onClick)
    local cb = CreateFrame("CheckButton", name, parent, "ChatConfigCheckButtonTemplate")
    cb:SetChecked(checked); SetCheckLabel(cb, label)
    cb:SetScript("OnClick", onClick)
    return cb
end

function Roadmap.InitView(parent)
    local f = CreateFrame("Frame", "SGJ_RoadmapFrame", parent)
    f:SetAllPoints(); f:Hide()

    -- ==========================================
    -- COLUMNS
    -- ==========================================
    f.LeftCol = CreateFrame("Frame", nil, f)
    f.LeftCol:SetPoint("TOPLEFT"); f.LeftCol:SetPoint("BOTTOMLEFT"); f.LeftCol:SetWidth(LEFT_W)
    f.RightCol = CreateFrame("Frame", nil, f)
    f.RightCol:SetPoint("TOPRIGHT"); f.RightCol:SetPoint("BOTTOMRIGHT"); f.RightCol:SetWidth(RIGHT_W)
    f.Center = CreateFrame("Frame", nil, f)
    f.Center:SetPoint("TOPLEFT", f.LeftCol, "TOPRIGHT"); f.Center:SetPoint("BOTTOMRIGHT", f.RightCol, "BOTTOMLEFT")

    for _, col in ipairs({ f.LeftCol, f.RightCol }) do
        local shade = col:CreateTexture(nil, "BACKGROUND"); shade:SetAllPoints(); shade:SetColorTexture(0, 0, 0, 0.25)
    end
    local function Divider(col, side)
        local t = col:CreateTexture(nil, "BORDER"); t:SetColorTexture(1, 1, 1, 0.08); t:SetWidth(1)
        t:SetPoint("TOP" .. side, 0, 0); t:SetPoint("BOTTOM" .. side, 0, 0)
    end
    Divider(f.LeftCol, "RIGHT"); Divider(f.RightCol, "LEFT")

    -- ==========================================
    -- CENTRE: CHARACTER MODEL
    -- ==========================================
    local modelSuccess = pcall(function()
        f.Model = CreateFrame("DressUpModel", "SGJ_RoadmapModel", f.Center, "ModelWithControlsTemplate")
        f.Model:SetPoint("TOPLEFT", f.Center, "TOPLEFT", SLOT_SIZE + 10, -50)
        f.Model:SetPoint("BOTTOMRIGHT", f.Center, "BOTTOMRIGHT", -(SLOT_SIZE + 10), 80)
        f.Model:SetUnit("player")
        -- Old positional SetLight signature: newer clients reject it, so it must not
        -- abort the rest of the model setup.
        pcall(f.Model.SetLight, f.Model, true, false, 0, 0, 0, 1.0, 1.0, 1.0, 1.0)
        -- Stay in the window's strata (it's HIGH): a BACKGROUND model is drawn behind
        -- the whole window. Just above the centre panel so the slot buttons stay on top.
        f.Model:SetFrameLevel(f.Center:GetFrameLevel() + 1)
        f.Model:SetScript("OnMouseWheel", function(self, delta) local z = self:GetPortraitZoom(); if delta > 0 then self:SetPortraitZoom(z + 0.1) else self:SetPortraitZoom(z - 0.1) end end)
        f.Model:SetScript("OnMouseDown", function(self, button) if button == "LeftButton" then self.isRotating = true; local x, y = GetCursorPosition(); self.prevX = x; self:SetScript("OnUpdate", function(self) if self.isRotating then local cx, cy = GetCursorPosition(); self:SetFacing(self:GetFacing() + ((cx - self.prevX) * 0.01)); self.prevX = cx end end) elseif button == "RightButton" then self:Undress(); self:SetUnit("player"); self:SetPortraitZoom(0) end end)
        f.Model:SetScript("OnMouseUp", function(self) self.isRotating = false; self:SetScript("OnUpdate", nil) end)
    end)

    if not modelSuccess or not f.Model then
        f.Bg = f.Center:CreateTexture(nil, "BACKGROUND")
        f.Bg:SetPoint("TOPLEFT", f.Center, "TOPLEFT", SLOT_SIZE + 10, -50)
        f.Bg:SetPoint("BOTTOMRIGHT", f.Center, "BOTTOMRIGHT", -(SLOT_SIZE + 10), 80)
        f.Bg:SetTexture("Interface\\DressUpFrame\\DressUpBackground-Mage"); f.Bg:SetVertexColor(0.4, 0.4, 0.4)
    end

    f.Title = f.Center:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    f.Title:SetPoint("TOP", 0, -10); f.Title:SetText(L["Upgrade Roadmap"]); f.Title:SetTextColor(1, 0.82, 0)

    f.Summary = f.Center:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    f.Summary:SetPoint("TOP", f.Title, "BOTTOM", 0, -4); f.Summary:SetWidth(LEFT_W + 80); f.Summary:SetWordWrap(false)

    f.HelpText = f.Center:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    f.HelpText:SetPoint("BOTTOM", 0, 12)
    f.HelpText:SetText(L["Click a slot: upgrades  |  Right-click: ignore"])
    f.HelpText:SetTextColor(0.5, 0.5, 0.5)

    -- ==========================================
    -- LEFT: SCAN SETTINGS (top to bottom in the order you use them)
    -- ==========================================
    local LC = f.LeftCol
    local header = LC:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    header:SetPoint("TOPLEFT", 12, -12); header:SetText(L["Scan Settings"])

    -- 1. Mode
    local modeDropDown = CreateFrame("Frame", "SGJ_RoadmapModeDropDown", LC, "UIDropDownMenuTemplate")
    modeDropDown:SetPoint("TOPLEFT", LC, "TOPLEFT", -6, -30)
    UIDropDownMenu_SetWidth(modeDropDown, 150)
    UIDropDownMenu_Initialize(modeDropDown, function(self, level)
        local info = UIDropDownMenu_CreateInfo()
        local modes = {"PvE", "PvP"}
        for _, mode in ipairs(modes) do
            info.text = string.format(L["%s Weights"], L[mode])
            info.value = mode
            info.checked = (Roadmap.GameMode == mode)
            info.func = function()
                Roadmap.GameMode = mode
                UIDropDownMenu_SetText(modeDropDown, string.format(L["Mode: %s"], L[mode]))
                print(string.format(L["SGJ Roadmap: Switched to %s stat weights. Recalculating..."], L[mode]))
                if Roadmap.PerformSmartScan then
                    Roadmap:PerformSmartScan()
                end
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)
    UIDropDownMenu_SetText(modeDropDown, string.format(L["Mode: %s"], L["PvE"]))
    f.ModeDropDown = modeDropDown

    -- 2. Profile
    local dropDown = CreateFrame("Frame", "SGJ_RoadmapProfileDropDown", LC, "UIDropDownMenuTemplate")
    dropDown:SetPoint("TOPLEFT", modeDropDown, "BOTTOMLEFT", 0, 5)
    UIDropDownMenu_SetWidth(dropDown, 150)
    UIDropDownMenu_Initialize(dropDown, function(self, level) Roadmap:InitDropDownMenu(self, level) end)
    f.ProfileDropDown = dropDown

    -- 3. Focus
    local statDropDown = CreateFrame("Frame", "SGJ_RoadmapStatDropDown", LC, "UIDropDownMenuTemplate")
    statDropDown:SetPoint("TOPLEFT", dropDown, "BOTTOMLEFT", 0, 5)
    UIDropDownMenu_SetWidth(statDropDown, 150)
    UIDropDownMenu_Initialize(statDropDown, function(self, level) Roadmap:InitStatDropDownMenu(self, level) end)
    UIDropDownMenu_SetText(statDropDown, string.format(L["Focus: %s"], L["None (Default)"]))
    f.StatDropDown = statDropDown

    -- 4. Content phase (TBC)
    local lastDrop = statDropDown
    if not Roadmap.IsEra and (MSC.IsTBC or Roadmap.IsTBC) then
        Roadmap:InitContentPhaseDropDown(LC, statDropDown)
        lastDrop = LC.PhaseDropDown
    end

    -- 5. Level range
    local levelRange
    local lvlCheck = MakeCheck(LC, "SGJ_RoadmapLevelFilter", L["Filter by Level"], Roadmap.UseLevelFilter, function(self)
        Roadmap.UseLevelFilter = self:GetChecked(); levelRange:Refresh()
    end)
    lvlCheck:SetPoint("TOPLEFT", lastDrop, "BOTTOMLEFT", 16, -4)
    levelRange = Roadmap:CreateLevelRangeSlider(LC, LEFT_W - 24)
    levelRange:SetPoint("TOPLEFT", lvlCheck, "BOTTOMLEFT", 2, -2)

    -- 6. Toggles
    local chainCheck = MakeCheck(LC, "SGJ_RoadmapChainCheck", L["Chain Mode"], Roadmap.ChainMode, function(self)
        Roadmap.ChainMode = self:GetChecked()
        if Roadmap.ChainMode then Roadmap:InitializeVirtualGear(); print(L["SGJ: Chain Mode ON. Click dungeons to build your set."]) else print(L["SGJ: Chain Mode OFF."]) end
    end)
    chainCheck:SetPoint("TOPLEFT", levelRange, "BOTTOMLEFT", -2, -4)
    AddTooltip(chainCheck, L["Chain Mode"], L["If enabled, clicking a dungeon 'equips' the upgrades virtually."], L["|cff00ff00The next dungeon will compare against this new virtual set.|r"])

    -- Sources: what a scan includes (saved between sessions)
    local function SourcesChanged() Roadmap:AbortScan(); Roadmap.ZoneRankings = {}; Roadmap.HasScanned = false; Roadmap:UpdateSidebar(); levelRange:Refresh() end
    local src = Roadmap:GetSources()
    local lootCheck = MakeCheck(LC, "SGJ_RoadmapLootCheck", L["Dungeon Loot"], src.dungeonLoot, function(self)
        Roadmap:SetSource("dungeonLoot", self:GetChecked()); SourcesChanged()
    end)
    lootCheck:SetPoint("TOPLEFT", chainCheck, "BOTTOMLEFT", 0, 2)
    AddTooltip(lootCheck, L["Dungeon Loot"], L["Include items that drop from dungeon bosses and trash."])

    local dqCheck = MakeCheck(LC, "SGJ_RoadmapDungeonQuestCheck", L["Dungeon Quests"], src.dungeonQuests, function(self)
        Roadmap:SetSource("dungeonQuests", self:GetChecked()); SourcesChanged()
    end)
    dqCheck:SetPoint("TOPLEFT", lootCheck, "BOTTOMLEFT", 0, 2)
    AddTooltip(dqCheck, L["Dungeon Quests"], L["Include rewards from quests for a dungeon or raid."], L["Listed in that dungeon's row, marked \"Quest:\"."])

    local wqCheck = MakeCheck(LC, "SGJ_RoadmapWorldQuestCheck", L["World Quests"], src.worldQuests, function(self)
        Roadmap:SetSource("worldQuests", self:GetChecked()); SourcesChanged()
    end)
    wqCheck:SetPoint("TOPLEFT", dqCheck, "BOTTOMLEFT", 0, 2)
    AddTooltip(wqCheck, L["World Quests"], L["Include rewards from quests out in the world."], L["Each zone has its own \"Quests\" row in the leaderboard."])
    local lastToggle = wqCheck

    if Roadmap.IsEra then
        -- Classic Era layout: No Heroic or Badge systems
        Roadmap.ShowHeroic = false
        Roadmap.ShowBadges = false
    else
        -- TBC layout: normal/heroic and badge vendor toggles
        local function ClearRankings() Roadmap:AbortScan(); Roadmap.ZoneRankings = {}; Roadmap.HasScanned = false; Roadmap:UpdateSidebar(); levelRange:Refresh() end

        local heroicCheck = MakeCheck(LC, "SGJ_RoadmapHeroicCheck", L["Heroic Only"], Roadmap.ShowHeroic, function(self)
            Roadmap.ShowHeroic = self:GetChecked(); ClearRankings()
        end)
        heroicCheck:SetPoint("TOPLEFT", lastToggle, "BOTTOMLEFT", 0, 2)

        local badgeCheck = MakeCheck(LC, "SGJ_RoadmapBadgeCheck", L["Include Badges"], Roadmap.ShowBadges, function(self)
            Roadmap.ShowBadges = self:GetChecked(); ClearRankings()
        end)
        badgeCheck:SetPoint("TOPLEFT", heroicCheck, "BOTTOMLEFT", 0, 2)

        local effCheck = MakeCheck(LC, "SGJ_RoadmapEffCheck", L["Sort by Efficiency"], Roadmap.SortByEfficiency, function(self)
            Roadmap.SortByEfficiency = self:GetChecked(); if Roadmap.SelectedZone == "Geras_Badges" then Roadmap:PerformSmartScan() end
        end)
        effCheck:SetPoint("TOPLEFT", badgeCheck, "BOTTOMLEFT", 0, 2)
        AddTooltip(effCheck, L["Badge Efficiency"], L["Sorts badge items by Score gained per Badge spent."])
    end

    -- 7. Actions (pinned to the bottom of the column)
    local resetBtn = CreateFrame("Button", nil, LC, "UIPanelButtonTemplate"); resetBtn:SetSize((LEFT_W - 29) / 2, 24)
    resetBtn:SetPoint("BOTTOMLEFT", 12, 14); resetBtn:SetText(L["Reset"])
    resetBtn:SetScript("OnClick", function() Roadmap:ResetVirtualGear(); Roadmap.ScanResults = {}; Roadmap.SelectedZone = nil; Roadmap:RefreshUI(); print(L["SGJ: Roadmap & Chain Mode Hard Reset."]) end)
    AddTooltip(resetBtn, L["Reset All"], L["Clears chain progress and resets to current gear."])

    local exportBtn = CreateFrame("Button", nil, LC, "UIPanelButtonTemplate"); exportBtn:SetSize((LEFT_W - 29) / 2, 24)
    exportBtn:SetPoint("LEFT", resetBtn, "RIGHT", 5, 0); exportBtn:SetText(L["Export"])
    exportBtn:SetScript("OnClick", function() Roadmap:ShowExportPopup() end)
    AddTooltip(exportBtn, L["Export to Lab"], L["Copy current set to clipboard for use in The Lab."])

    local smartBtn = CreateFrame("Button", nil, LC, "UIPanelButtonTemplate"); smartBtn:SetSize(LEFT_W - 24, 30)
    smartBtn:SetPoint("BOTTOMLEFT", resetBtn, "TOPLEFT", 0, 6)
    smartBtn:SetText(L["Calculate Roadmap"])
    smartBtn:SetScript("OnClick", function() Roadmap:PerformSmartScan() end)
    smartBtn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetText(L["Calculate Roadmap"])
        GameTooltip:AddLine(L["Scans all dungeons to find upgrades."], 1, 1, 1)
        if Roadmap.UseLevelFilter then local lo, hi = Roadmap:GetLevelRange(); GameTooltip:AddLine(string.format(L["Dungeon levels: %d - %d"], lo, hi), 1, 0.82, 0)
        else GameTooltip:AddLine(L["Level filter: off"], 0.6, 0.6, 0.6) end
        GameTooltip:Show()
    end)
    smartBtn:SetScript("OnLeave", GameTooltip_Hide)

    -- ==========================================
    -- CENTRE: GEAR SLOTS (7 left, 7 right, weapons under the feet)
    -- ==========================================
    local _, playerClass = UnitClass("player")
    -- Classic clients only ship the generic Relic slot art (no Libram/Totem/Idol/Sigil textures)
    local relicTexture = "Relic"

    f.Slots = {}
    for _, s in ipairs(SLOTS) do
        local btn = CreateFrame("Button", nil, f.Center, nil); btn:SetSize(SLOT_SIZE, SLOT_SIZE)
        if s.col == "L" then btn:SetPoint("TOPLEFT", f.Center, "TOPLEFT", 6, SLOT_TOP - (s.row - 1) * SLOT_STEP)
        elseif s.col == "R" then btn:SetPoint("TOPRIGHT", f.Center, "TOPRIGHT", -6, SLOT_TOP - (s.row - 1) * SLOT_STEP)
        else btn:SetPoint("BOTTOM", f.Center, "BOTTOM", (s.row - 2) * (SLOT_SIZE + 6), 34) end
        btn:SetFrameStrata("HIGH"); btn:SetFrameLevel(100)
        local bg = btn:CreateTexture(nil, "BACKGROUND", nil, -1); bg:SetAllPoints()
        local texName = s.texture
        if s.id == 18 and (playerClass == "SHAMAN" or playerClass == "PALADIN" or playerClass == "DRUID" or playerClass == "DEATHKNIGHT") then texName = relicTexture end
        bg:SetTexture("Interface\\Paperdoll\\UI-PaperDoll-Slot-" .. texName); btn.Background = bg
        local up = btn:CreateTexture(nil, "OVERLAY"); up:SetSize(24, 24); up:SetPoint("CENTER", 0, 0); up:SetTexture("Interface\\AddOns\\SharpiesGearJudge\\Textures\\Upgrade.png"); up:Hide(); btn.UpgradeIcon = up
        local ag = up:CreateAnimationGroup(); local a1 = ag:CreateAnimation("Alpha"); a1:SetFromAlpha(0.5); a1:SetToAlpha(1.0); a1:SetDuration(0.8); a1:SetSmoothing("IN_OUT"); a1:SetOrder(1); local a2 = ag:CreateAnimation("Alpha"); a2:SetFromAlpha(1.0); a2:SetToAlpha(0.5); a2:SetDuration(0.8); a2:SetSmoothing("IN_OUT"); a2:SetOrder(2); ag:SetLooping("REPEAT"); btn.Anim = ag
        btn.SlotID = s.id; btn.SlotName = s.name
        btn:RegisterForClicks("AnyUp")
        btn:SetScript("OnClick", function(self, button)
            if button == "RightButton" then
                -- Toggle the ignore status
                Roadmap.IgnoredSlots[self.SlotID] = not Roadmap.IgnoredSlots[self.SlotID]
                if Roadmap.IgnoredSlots[self.SlotID] then
                    self.icon:SetVertexColor(0.3, 0.3, 0.3)
                    print(string.format(L["SGJ: Ignoring %s."], L[self.SlotName]))
                else
                    self.icon:SetVertexColor(1, 1, 1)
                    print(string.format(L["SGJ: Tracking %s."], L[self.SlotName]))
                end
                Roadmap:RefreshUI()
            else
                Roadmap.OnSlotClick(self)
            end
        end)
        btn:SetScript("OnEnter", function(self) Roadmap.OnSlotEnter(self) end)
        btn:SetScript("OnLeave", GameTooltip_Hide)

        f.Slots[s.id] = btn
    end

    -- ==========================================
    -- RIGHT: DUNGEON LEADERBOARD
    -- ==========================================
    Roadmap:InitSidebar(f.RightCol)

    f.ProgressBar = CreateFrame("StatusBar", nil, f.RightCol)
    f.ProgressBar:SetSize(RIGHT_W - 24, 12)
    f.ProgressBar:SetPoint("TOP", 0, -46)
    f.ProgressBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    f.ProgressBar:GetStatusBarTexture():SetHorizTile(false)
    f.ProgressBar:SetMinMaxValues(0, 100); f.ProgressBar:SetValue(0); f.ProgressBar:SetStatusBarColor(0, 1, 0); f.ProgressBar:Hide()
    f.ProgressBar.Bg = f.ProgressBar:CreateTexture(nil, "BACKGROUND"); f.ProgressBar.Bg:SetAllPoints(true); f.ProgressBar.Bg:SetColorTexture(0.2, 0.2, 0.2, 0.6)

    f:SetScript("OnShow", function()
        if f.Model then f.Model:SetUnit("player") end
        Roadmap:RefreshProfileDisplay() -- Updates the DropDown Text
        Roadmap:InitializeVirtualGear()
        levelRange:Refresh()
        Roadmap:RefreshUI()
    end)
    -- The slot popup belongs to this view: close it with the view.
    f:HookScript("OnHide", function()
        if Roadmap.Popup then Roadmap.Popup:Hide() end
    end)

    SGJ.ViewRoadmap = f
end

-- =============================================================
-- 3.5 THE ROADMAP SIDEBAR & PROFILE HELPERS
-- =============================================================
function Roadmap:InitSidebar(parent)
    local sb = CreateFrame("Frame", nil, parent)
    sb:SetAllPoints(parent)

    local title = sb:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetPoint("TOP", 0, -12)
    title:SetText(L["Dungeon Leaderboard"])

    local sub = sb:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    sub:SetPoint("TOP", title, "BOTTOM", 0, -3)
    sub:SetText(L["Click a dungeon for its loot"])
    sub:SetTextColor(0.6, 0.6, 0.6)

    local empty = sb:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    empty:SetPoint("TOP", 0, -70); empty:SetWidth(parent:GetWidth() - 24)
    empty:SetTextColor(0.6, 0.6, 0.6)

    local scroll = CreateFrame("ScrollFrame", "SGJ_RoadmapScroll", sb, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 6, -64)
    scroll:SetPoint("BOTTOMRIGHT", -26, 10)

    local content = CreateFrame("Frame", nil, scroll)
    content:SetSize(parent:GetWidth() - 32, 400)
    scroll:SetScrollChild(content)

    Roadmap.Sidebar = { Frame = sb, Content = content, Rows = {}, Empty = empty }
    Roadmap:UpdateSidebar()
end

function Roadmap:UpdateSidebar()
    if not Roadmap.Sidebar then return end
    local list = Roadmap.ZoneRankings or {}
    local content = Roadmap.Sidebar.Content
    
    for _, r in ipairs(Roadmap.Sidebar.Rows) do r:Hide() end
    
    table.sort(list, function(a,b) return a.score > b.score end)
    
    local y = 0
    for i, entry in ipairs(list) do
        if entry.score < 1 then break end 
        
        local row = Roadmap.Sidebar.Rows[i]
        if not row then
            row = CreateFrame("Button", nil, content)
            row:SetSize(content:GetWidth(), 32)
            row:SetFrameLevel(content:GetFrameLevel() + 10)

            row.Sel = row:CreateTexture(nil, "BACKGROUND")
            row.Sel:SetAllPoints(); row.Sel:SetColorTexture(1, 0.82, 0, 0.12); row.Sel:Hide()

            row.Icon = row:CreateTexture(nil, "OVERLAY")
            row.Icon:SetSize(24, 24)
            row.Icon:SetPoint("LEFT", 2, 0)

            row.Text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
            row.Text:SetPoint("TOPLEFT", 30, -3)
            row.Text:SetPoint("RIGHT", -2, 0); row.Text:SetJustifyH("LEFT"); row.Text:SetWordWrap(false)

            row.Score = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            row.Score:SetPoint("TOPLEFT", row.Text, "BOTTOMLEFT", 0, -2)
            row.Score:SetTextColor(0, 1, 0)

            row:RegisterForClicks("AnyUp")
            
            row:SetScript("OnEnter", function(self) 
                self.Text:SetTextColor(1,1,1)
                if self.TopItems then
                    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                    GameTooltip:SetText(self.ZoneName)
                    GameTooltip:AddLine(L["Top Upgrades:"], 1, 1, 1)
                    for _, item in ipairs(self.TopItems) do
                        local name = GetItemInfo(item.link) or item.link
                        GameTooltip:AddDoubleLine(name, "+"..string.format("%.1f", item.gain), 1, 1, 1, 0, 1, 0)
                    end
                    GameTooltip:Show()
                end
            end)
            
            row:SetScript("OnLeave", function(self) 
                self.Text:SetTextColor(1,0.82,0)
                GameTooltip:Hide()
            end)
            
            row:SetScript("OnClick", function(self)
                if not self.ZoneKey then return end
                
                print(string.format(L["SGJ: Viewing %s..."], self.ZoneName or L["Zone"]))
                
                Roadmap.SelectedZone = self.ZoneKey
                Roadmap.ScanResults = {}; 
                Roadmap:ScanZoneData(Roadmap.SelectedZone, Roadmap.UseLevelFilter); 
                Roadmap:FinalizeScan()
                
                if Roadmap.ChainMode then
                    Roadmap:ApplyBestUpgradesToVirtual()
                    print(L["SGJ Chain: Virtual Gear Updated. Recalculating..."])
                    -- [ADD THIS] Automatically trigger the recalculation for the sidebar
                    Roadmap:PerformSmartScan() 
                end
                
                Roadmap:RefreshUI()
                Roadmap:UpdateSidebar()
            end)
            
            table.insert(Roadmap.Sidebar.Rows, row)
        end
        
        row.ZoneKey = entry.key
        row.ZoneName = ZoneDisplayName(entry.name)
        row.TopItems = entry.topItems 
        
        row:SetPoint("TOPLEFT", 0, y)
        row.Text:SetText(i..". " .. row.ZoneName)
        row.Score:SetText("+"..string.format("%.1f", entry.score))
        
        if entry.bestLink then
            row.Icon:SetTexture(GetItemIcon(entry.bestLink))
        else
            row.Icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
        end
        
        row.Sel:SetShown(entry.key == Roadmap.SelectedZone)
        row:Show()
        y = y - 34
    end

    content:SetHeight(math.max(1, math.abs(y)))

    local empty = Roadmap.Sidebar.Empty
    if y < 0 or Roadmap.Scanning then empty:Hide()
    else
        empty:SetText(Roadmap.HasScanned and L["No upgrades found in this level range."] or L["Press Calculate Roadmap to rank dungeons by upgrades."])
        empty:Show()
    end
end

-- =============================================================
-- 4. UTILITIES & MATH (PROFILE SUPPORT)
-- =============================================================
function Roadmap:GetActiveProfile()
    local weights, spec = nil, nil
    local usedOverride = false

    if Roadmap.OverrideSpec and SGJ.CurrentClass then
        if SGJ.CurrentClass.Weights and SGJ.CurrentClass.Weights[Roadmap.OverrideSpec] then
            weights = SGJ.CurrentClass.Weights[Roadmap.OverrideSpec]
            spec = Roadmap.OverrideSpec
            usedOverride = true
        elseif SGJ.CurrentClass.LevelingBrackets and SGJ.CurrentClass.LevelingBrackets[Roadmap.OverrideSpec] then
            weights = SGJ.CurrentClass.LevelingBrackets[Roadmap.OverrideSpec]
            spec = Roadmap.OverrideSpec
            usedOverride = true
        end
    end
    
    if not weights and SGJ.GetCurrentWeights then 
        weights, spec = SGJ.GetCurrentWeights() 
    end

    local flat = weights
    if weights and weights[Roadmap.GameMode] and type(weights[Roadmap.GameMode]) == "table" then
        flat = weights[Roadmap.GameMode]
    end

    if flat and usedOverride and SGJ.CurrentClass and SGJ.CurrentClass.ApplyScalers then
        local w = {}
        for k, v in pairs(flat) do w[k] = v end
        flat = select(1, SGJ.CurrentClass:ApplyScalers(w, spec))
        if SGJ.BuffEngine and SGJ.BuffEngine.ApplyStatSynergy then
            SGJ.BuffEngine:ApplyStatSynergy(flat, spec)
        end
    end

    return flat, spec
end

function Roadmap:InitDropDownMenu(self, level)
    local info = UIDropDownMenu_CreateInfo()
    local list = {}
    local seen = {} -- Deduplication
    
    local function AddToList(sourceTable)
        if sourceTable then
            for k, _ in pairs(sourceTable) do
                if not seen[k] then
                    table.insert(list, {id=k, name=Roadmap:GetPrettyName(k)})
                    seen[k] = true
                end
            end
        end
    end

    -- 1. Scan Weights & Leveling
    if SGJ.CurrentClass then
        AddToList(SGJ.CurrentClass.Weights)
        AddToList(SGJ.CurrentClass.LevelingBrackets)
    end
    
    -- 2. Fallback Scan (if CurrentClass incomplete)
    if #list == 0 and SGJ.ClassProfiles then
        local _, class = UnitClass("player")
        if SGJ.ClassProfiles[class] then
            AddToList(SGJ.ClassProfiles[class].Weights)
            AddToList(SGJ.ClassProfiles[class].LevelingBrackets)
        end
    end
    
    table.sort(list, function(a,b) return tostring(a.name) < tostring(b.name) end)
    
    -- Option: Auto
    local _, currentSpec = SGJ.GetCurrentWeights()
    info.text = string.format(L["Auto (%s)"], Roadmap:GetPrettyName(currentSpec) or L["Unknown"])
    info.value = nil
    info.checked = (Roadmap.OverrideSpec == nil)
    info.func = function()
        Roadmap.OverrideSpec = nil
        Roadmap:RefreshProfileDisplay()
        print(L["SGJ: Profile set to Auto. Recalculating..."])
        Roadmap:PerformSmartScan() 
    end
    UIDropDownMenu_AddButton(info, level)
    
    -- Options: Profiles
    if #list == 0 then
        info = UIDropDownMenu_CreateInfo()
        info.text = L["(No Profiles Found)"]
        info.disabled = true
        info.notCheckable = true
        UIDropDownMenu_AddButton(info, level)
    end

    for _, entry in ipairs(list) do
        info = UIDropDownMenu_CreateInfo()
        info.text = entry.name
        info.value = entry.id
        info.checked = (Roadmap.OverrideSpec == entry.id)
        info.func = function()
            Roadmap.OverrideSpec = entry.id
            Roadmap:RefreshProfileDisplay()
            print(string.format(L["SGJ: Profile set to %s. Recalculating..."], entry.name))
            Roadmap:PerformSmartScan() 
        end
        UIDropDownMenu_AddButton(info, level)
    end
end

-- Focus Stat Dropdown Menu (Added Spell Pen and Resilience)
function Roadmap:InitStatDropDownMenu(self, level)
    local info = UIDropDownMenu_CreateInfo()
    
    local stats
    if Roadmap.IsEra then
        stats = {
            { id = nil, name = "None (Default)" },
            { id = "ITEM_MOD_HIT_RATING_SHORT", name = "Melee/Ranged Hit" },
            { id = "ITEM_MOD_HIT_SPELL_RATING_SHORT", name = "Spell Hit" },
            { id = "ITEM_MOD_CRIT_RATING_SHORT", name = "Melee/Ranged Crit" },
            { id = "ITEM_MOD_SPELL_CRIT_RATING_SHORT", name = "Spell Crit" },
            { id = "ITEM_MOD_WEAPON_SKILL_RATING_SHORT", name = "Weapon Skill" },
            { id = "ITEM_MOD_ATTACK_POWER_SHORT", name = "Attack Power" },
            { id = "ITEM_MOD_SPELL_POWER_SHORT", name = "Spell Power / Damage" },
            { id = "ITEM_MOD_SPELL_HEALING_DONE_SHORT", name = "Healing Power" },
            { id = "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT", name = "Defense" },
            { id = "ITEM_MOD_BLOCK_VALUE_SHORT", name = "Block Value" },
            { id = "ITEM_MOD_STAMINA_SHORT", name = "Stamina" },
            { id = "ITEM_MOD_SPIRIT_SHORT", name = "Spirit" },
            { id = "ITEM_MOD_POWER_REGEN0_SHORT", name = "Mana Per 5 (MP5)" },
            { id = "ITEM_MOD_HEALTH_REGENERATION_SHORT", name = "HP Per 5 (HP5)" },
        }
    else
        stats = {
            { id = nil, name = "None (Default)" },
            { id = "ITEM_MOD_HIT_RATING_SHORT", name = "Melee/Ranged Hit" },
            { id = "ITEM_MOD_HIT_SPELL_RATING_SHORT", name = "Spell Hit" },
            { id = "ITEM_MOD_CRIT_RATING_SHORT", name = "Melee/Ranged Crit" },
            { id = "ITEM_MOD_SPELL_CRIT_RATING_SHORT", name = "Spell Crit" },
            { id = "ITEM_MOD_HASTE_RATING_SHORT", name = "Melee/Ranged Haste" },
            { id = "ITEM_MOD_SPELL_HASTE_RATING_SHORT", name = "Spell Haste" },
            { id = "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT", name = "Armor Penetration" },
            { id = "ITEM_MOD_SPELL_PENETRATION_SHORT", name = "Spell Penetration" },
            { id = "ITEM_MOD_RESILIENCE_RATING_SHORT", name = "Resilience Rating" },
            { id = "ITEM_MOD_ATTACK_POWER_SHORT", name = "Attack Power" },
            { id = "ITEM_MOD_SPELL_POWER_SHORT", name = "Spell Power / Damage" },
            { id = "ITEM_MOD_SPELL_HEALING_DONE_SHORT", name = "Healing Power" },
            { id = "ITEM_MOD_EXPERTISE_RATING_SHORT", name = "Expertise Rating" },
            { id = "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT", name = "Defense Rating" },
            { id = "ITEM_MOD_BLOCK_VALUE_SHORT", name = "Block Value" },
            { id = "ITEM_MOD_STAMINA_SHORT", name = "Stamina" },
            { id = "ITEM_MOD_POWER_REGEN0_SHORT", name = "Mana Per 5 (MP5)" },
        }
    end
    
    for _, stat in ipairs(stats) do
        info.text = L[stat.name]
        info.value = stat.id
        info.checked = (Roadmap.FocusStat == stat.id)
        info.func = function()
            Roadmap.FocusStat = stat.id
            if SGJ.ViewRoadmap and SGJ.ViewRoadmap.StatDropDown then
                UIDropDownMenu_SetText(SGJ.ViewRoadmap.StatDropDown, string.format(L["Focus: %s"], L[stat.name]))
            end
            print(string.format(L["SGJ Roadmap: Stat Focus set to %s. Click Calculate!"], L[stat.name]))
        end
        UIDropDownMenu_AddButton(info, level)
    end
end

function Roadmap:RefreshProfileDisplay()
    local dd = SGJ.ViewRoadmap.ProfileDropDown
    if not dd then return end
    
    if Roadmap.OverrideSpec then
        UIDropDownMenu_SetText(dd, string.format(L["Profile: %s"], Roadmap:GetPrettyName(Roadmap.OverrideSpec)))
    else
        local _, name = SGJ.GetCurrentWeights()
        UIDropDownMenu_SetText(dd, string.format(L["Profile: %s (Auto)"], Roadmap:GetPrettyName(name)))
    end
end

function Roadmap:InitializeVirtualGear()
    if not next(Roadmap.VirtualGear) then
        for i=1, 18 do Roadmap.VirtualGear[i] = GetInventoryItemLink("player", i) end
    end
    Roadmap:UpdateRealGearCache()
end

function Roadmap:UpdateRealGearCache()
    local realGear = {}
    for i=1, 18 do realGear[i] = GetInventoryItemLink("player", i) end
    local weights = Roadmap:GetActiveProfile()
    local _, stats = SGJ:GetTotalCharacterScore(realGear, weights)
    Roadmap.RealGearStats = stats or {}
end

function Roadmap:ResetVirtualGear()
    Roadmap.VirtualGear = {}
    for i=1, 18 do 
        Roadmap.VirtualGear[i] = GetInventoryItemLink("player", i) 
    end
    Roadmap:UpdateRealGearCache()
    Roadmap:RefreshUI()
end

function Roadmap:GetBaselineItem(slotID)
    if Roadmap.ChainMode then return Roadmap.VirtualGear[slotID] end
    return GetInventoryItemLink("player", slotID)
end

function Roadmap:ApplyBestUpgradesToVirtual()
    for slotID, list in pairs(Roadmap.ScanResults) do
        local idx = Roadmap.BestIndices[slotID] or 1
        if idx > 0 and list[idx] and not Roadmap.IgnoredSlots[slotID] then
            local bestItem = list[idx]
            
            if bestItem.gain > 0 then
                local targetSlot = slotID
                local partners = { [11]=12, [12]=11, [13]=14, [14]=13 }
                local partnerSlot = partners[slotID]

                if partnerSlot then
                    local currentInPartner = Roadmap.VirtualGear[partnerSlot]
                    local currentInSelf = Roadmap.VirtualGear[slotID]
                    
                    -- 1. Check for Unique Conflicts
                    local isNewUnique = Roadmap:IsUnique(bestItem.link)
                    local isPartnerSame = false
                    if currentInPartner then
                        local newID = tonumber(bestItem.link:match("item:(%d+)"))
                        local partnerID = tonumber(currentInPartner:match("item:(%d+)"))
                        if newID == partnerID then isPartnerSame = true end
                    end

                    -- 2. Deployment Logic
                    if isNewUnique and isPartnerSame then
                        -- Do nothing. You already have this unique ring in the other slot.
                        targetSlot = nil 
                    elseif currentInSelf and not currentInPartner then
                        -- If our current slot is full but the other is empty, move there
                        targetSlot = partnerSlot
                    elseif currentInSelf and currentInPartner then
                        -- Both slots full: Replace the one that results in the smaller gain
                        -- (In this case, we default to the simulated slotID)
                        targetSlot = slotID
                    end
                end

                if targetSlot then
                    Roadmap.VirtualGear[targetSlot] = bestItem.link
                    
                    -- Handle Weapon Logic
                    if bestItem.pair then
                        local partnerSlot = (slotID == 16) and 17 or 16
                        Roadmap.VirtualGear[partnerSlot] = bestItem.pair
                    end
                    
                    local _,_,_,_,_,_,_,_,loc = GetItemInfo(bestItem.link)
                    if slotID == 16 and loc == "INVTYPE_2HWEAPON" then
                        Roadmap.VirtualGear[17] = nil
                    end
                end
            end
        end
    end
end

function Roadmap:SaveHistory() if SharpiesGearJudgeDB then SharpiesGearJudgeDB.RoadmapData = Roadmap.ScanResults end end
function Roadmap:LoadHistory() 
    if SharpiesGearJudgeDB and SharpiesGearJudgeDB.RoadmapData then 
        Roadmap.ScanResults = SharpiesGearJudgeDB.RoadmapData 
        Roadmap:ResolveConflicts()
    end 
end

function Roadmap:GetPrettyName(specKey)
    if not specKey then return L["Unknown"] end
    if SGJ.PrettyNames and SGJ.PrettyNames[specKey] then return SGJ.PrettyNames[specKey] end
    if SGJ.CurrentClass and SGJ.CurrentClass.PrettyNames and SGJ.CurrentClass.PrettyNames[specKey] then return SGJ.CurrentClass.PrettyNames[specKey] end
    return tostring(specKey) 
end

function Roadmap:GetSlotFromLoc(equipLoc)
    if not equipLoc then return nil end
    local map = { INVTYPE_HEAD=1, INVTYPE_NECK=2, INVTYPE_SHOULDER=3, INVTYPE_BODY=4, INVTYPE_CHEST=5, INVTYPE_ROBE=5, INVTYPE_WAIST=6, INVTYPE_LEGS=7, INVTYPE_FEET=8, INVTYPE_WRIST=9, INVTYPE_HAND=10, INVTYPE_FINGER=11, INVTYPE_TRINKET=13, INVTYPE_CLOAK=15, INVTYPE_WEAPON=16, INVTYPE_SHIELD=17, INVTYPE_2HWEAPON=16, INVTYPE_WEAPONMAINHAND=16, INVTYPE_WEAPONOFFHAND=17, INVTYPE_HOLDABLE=17, INVTYPE_RANGED=18, INVTYPE_RANGEDRIGHT=18, INVTYPE_THROWN=18, INVTYPE_RELIC=18 }
    -- Wands, guns and crossbows are INVTYPE_RANGEDRIGHT; the core's map covers anything else.
    return map[equipLoc] or (SGJ.SlotMap and SGJ.SlotMap[equipLoc])
end

-- Dual Wield (spell 674) is a passive every dual wielder knows: Rogues from level 1,
-- Warriors and Hunters from their trainer at 20. Shamans get it from a talent.
local DUAL_WIELD_SPELL = 674
local function KnowsDualWield()
    if type(IsPlayerSpell) == "function" then
        local ok, known = pcall(IsPlayerSpell, DUAL_WIELD_SPELL)
        if ok and known then return true end
        if ok then return false end
    end
    if type(IsSpellKnown) == "function" then
        local ok, known = pcall(IsSpellKnown, DUAL_WIELD_SPELL)
        if ok then return known and true or false end
    end
    return nil -- no API: caller falls back to class and level
end

function Roadmap:CanDualWield()
    local _, class = UnitClass("player")
    local level = UnitLevel("player")
    local known = KnowsDualWield()
    if known then return true end
    if known == nil then
        if class == "ROGUE" then return true end
        if class == "WARRIOR" or class == "HUNTER" then return level >= 20 end
    elseif class ~= "SHAMAN" then
        return false
    end
    if class == "SHAMAN" then
        if SGJ.GetTalentRank then
            local rank = SGJ:GetTalentRank("Dual Wield")
            return (rank and rank > 0)
        end
        return false 
    end
    return false
end

function Roadmap:IsOffhandCandidate(link)
    local _,_,_,_,_,_,_,_,equipLoc = GetItemInfo(link)
    if equipLoc == "INVTYPE_SHIELD" or equipLoc == "INVTYPE_HOLDABLE" or equipLoc == "INVTYPE_WEAPONOFFHAND" then return true end
    if equipLoc == "INVTYPE_WEAPON" and Roadmap:CanDualWield() then return true end
    return false
end

function Roadmap:IsMainhandCandidate(link)
    local _,_,_,_,_,_,_,_,equipLoc = GetItemInfo(link)
    if equipLoc == "INVTYPE_WEAPON" or equipLoc == "INVTYPE_WEAPONMAINHAND" then return true end
    if equipLoc == "INVTYPE_2HWEAPON" then return true end 
    return false
end

-- Shield tanks (Protection Warriors and Paladins, Shaman tank profiles) need the
-- shield for Shield Block, Shield Slam, Holy Shield and their block stats, so the
-- Roadmap never suggests a two-hander for them (same rule as the tooltips),
-- unless Gear Judge's "Shield Tanks: No Two-Handers" option is turned off.
function Roadmap:IsShieldTankSpec(specName)
    if not specName then return false end
    -- Gear Judge option "Shield Tanks: No Two-Handers" (on by default).
    if SGJ_Settings and SGJ_Settings.ShieldTankNo2H == false then return false end
    local _, class = UnitClass("player")
    if class ~= "WARRIOR" and class ~= "PALADIN" and class ~= "SHAMAN" then return false end
    local up = string.upper(specName)
    return (string.find(up, "TANK") or string.find(up, "PROT")) ~= nil
end

-- The gear the scan compares against. A shield tank wearing a two-hander is
-- treated as having empty weapon slots, so the Roadmap builds the best one-hand
-- and shield set instead of measuring it against the two-hander.
function Roadmap:BuildBaseGear(specName)
    local gear = {}
    for i = 1, 18 do gear[i] = Roadmap:GetBaselineItem(i) end
    if gear[16] and Roadmap:IsShieldTankSpec(specName) and select(9, GetItemInfo(gear[16])) == "INVTYPE_2HWEAPON" then
        gear[16] = nil; gear[17] = nil
    end
    return gear
end

function Roadmap:IsStrictTwoHandSpec(specName)
    local _, class = UnitClass("player")
    if not specName then return false end
    if class == "WARRIOR" and (specName:find("Arms") or specName == "ARMS") then return true end
    if class == "PALADIN" and (specName:find("Retribution") or specName == "RETRIBUTION") then return true end
    return false
end

-- [[ OPTIMIZATION: Tooltip Caching ]]
local scannerTip = CreateFrame("GameTooltip", "SGJ_RoadmapScanner", nil, "GameTooltipTemplate")
scannerTip:SetOwner(WorldFrame, "ANCHOR_NONE")

function Roadmap:IsUnique(link)
    if not link then return false end
    local itemID = tonumber(link:match("item:(%d+)"))
    if itemID and UniqueCache[itemID] ~= nil then return UniqueCache[itemID] end
    
    scannerTip:ClearLines()
    scannerTip:SetHyperlink(link)
    for i=1, scannerTip:NumLines() do
        local line = _G["SGJ_RoadmapScannerTextLeft"..i]
        local txt = line and line:GetText()
        -- Forever can hand back secret (protected) strings that error when compared.
        if txt and type(MSC_IsSecret) == "function" and MSC_IsSecret(txt) then txt = nil end
        if txt and (txt == ITEM_UNIQUE or txt == ITEM_UNIQUE_EQUIPPED or (ITEM_UNIQUE and txt:find(ITEM_UNIQUE, 1, true)) or (ITEM_UNIQUE_EQUIPPED and txt:find(ITEM_UNIQUE_EQUIPPED, 1, true))) then
            if itemID then UniqueCache[itemID] = true end
            return true
        end
    end
    if itemID then UniqueCache[itemID] = false end
    return false
end

-- The player's current value and cap for each safety-cap rule. These come from the
-- character, not the simulated gear, so a scan reads them once (Roadmap.CapCache).
local function ComputeCapRules(specName)
    local caps = { spec = specName, rules = {} }
    local _, playerClass = UnitClass("player")
    local safetyCaps = SGJ.SAFETY_CAPS or {}
    if safetyCaps[playerClass] then
        for _, rule in ipairs(safetyCaps[playerClass]) do
            if rule.stat == "DEFENSE_FLOOR" then
                -- Same floor the tooltips use (Era: level x 5 + 140; Forever: the raid target).
                local b, m = 0, 0; if type(UnitDefense) == "function" then b, m = UnitDefense("player") end
                local currentVal = (tonumber(b) or 0) + (tonumber(m) or 0)
                local floor = (SGJ.GetDefenseFloor and SGJ:GetDefenseFloor(rule)) or rule.base or 0
                table_insert(caps.rules, { rule = rule, currentVal = currentVal, trueCap = floor, capped = (currentVal >= floor) })
            elseif not SGJ.IsForever then
                -- Forever hit is Hit Rating on a curve: GetAdjustedScore handles it with
                -- MSC.ForeverHitCapCorrection, like the tooltips do.
                local currentVal = SGJ:GetPlayerStat(rule.stat == "ITEM_MOD_HIT_RATING_SHORT" and "HIT" or "SPELL_HIT")
                local trueCap = rule.base
                if SGJ.BuffEngine and (rule.stat == "ITEM_MOD_HIT_SPELL_RATING_SHORT" or rule.stat == "ITEM_MOD_HIT_RATING_SHORT") then
                    trueCap = SGJ.BuffEngine:GetEffectiveHitRatingBase(rule.stat, rule.talent, rule.tVal, specName)
                elseif rule.talent then
                    trueCap = trueCap - (SGJ:GetTalentRank(rule.talent) * (rule.tVal or 0))
                end
                table_insert(caps.rules, { rule = rule, currentVal = currentVal, trueCap = trueCap, capped = (currentVal >= trueCap) })
            end
        end
    end
    return caps
end

-- Total Hit Rating of a stats table (Forever: 10 rating = 1%).
local function ForeverHitRating(t)
    return (t["ITEM_MOD_HIT_RATING_SHORT"] or 0) + (t["ITEM_MOD_HIT_SPELL_RATING_SHORT"] or 0)
        + (t["ITEM_MOD_HIT_MELEE_RATING_SHORT"] or 0) + (t["ITEM_MOD_HIT_RANGED_RATING_SHORT"] or 0)
end

local DEF_KEY = "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT"

-- [[ OPTIMIZATION: Global Caps Access ]]
-- Safety caps are measured against the gear you actually wear (Roadmap.RealGearStats):
-- the player's live value, minus what the real gear gives, plus what this set gives.
function Roadmap:GetAdjustedScore(gearTable, weights, specName)
    local score, stats = SGJ:GetTotalCharacterScore(gearTable, weights, specName)
    local st = stats or {}
    local real = Roadmap.RealGearStats or {}
    local caps = Roadmap.CapCache
    if not (caps and caps.spec == specName) then caps = ComputeCapRules(specName) end

    -- Forever: value hit on its true curve against the equipped total (same as the tooltips).
    if SGJ.IsForever and SGJ.ForeverHitCapCorrection and weights then
        local correction = SGJ.ForeverHitCapCorrection(weights, ForeverHitRating(real), ForeverHitRating(st))
        score = score + (tonumber(correction) or 0)
    end

    for _, c in ipairs(caps.rules) do
        if c.capped then
            local rule = c.rule
            local realGearVal, proposedGearVal
            if rule.stat == "DEFENSE_FLOOR" then
                -- Only for profiles that value Defense (tanks).
                if weights and (weights[DEF_KEY] or 0) > 0 then
                    realGearVal, proposedGearVal = real[DEF_KEY] or 0, st[DEF_KEY] or 0
                    if not SGJ.IsVanillaRules then -- TBC: 2.36 Defense Rating = 1 Defense
                        realGearVal, proposedGearVal = realGearVal / 2.36, proposedGearVal / 2.36
                    end
                end
            else
                realGearVal, proposedGearVal = real[rule.stat] or 0, st[rule.stat] or 0
            end

            if realGearVal then
                local futureVal = c.currentVal - realGearVal + proposedGearVal
                if futureVal < (c.trueCap - 0.1) then
                    score = score - rule.penalty
                end
            end
        end
    end
    -- [BUG FIX] Return the stats table so the Scanner can analyze specific stat gains!
    return score, stats
end

-- [[ OPTIMIZATION: Scratch Table Recycling ]]
function Roadmap:GetSimulationGains(itemLink, defaultSlotID, weights, specName, gapFillerMH, gapFillerOH, baseGear, baseScore, baseStats)
    local results = {} 
    
    local slotsToCheck = { defaultSlotID }
    if defaultSlotID == 11 then table.insert(slotsToCheck, 12) 
    elseif defaultSlotID == 13 then table.insert(slotsToCheck, 14) 
    elseif defaultSlotID == 16 then 
        local _,_,_,_,_,_,_,_,equipLoc = GetItemInfo(itemLink)
        if equipLoc == "INVTYPE_WEAPON" and Roadmap:CanDualWield() then table.insert(slotsToCheck, 17) end 
    end

    local newItemID = tonumber(itemLink:match("item:(%d+)"))

    for _, targetSlot in ipairs(slotsToCheck) do
      -- Right-clicked (ignored) slots are skipped by the slot the item would go in,
      -- so ignoring Ring 2 still lets rings go to Ring 1.
      if not Roadmap.IgnoredSlots[targetSlot] then
        -- Reused scratch table: GetTotalCharacterScore keeps no reference to the gear table.
        local simGear = Scratch_SimGear
        table_wipe(simGear)
        for k,v in pairs(baseGear) do simGear[k] = v end
        simGear[targetSlot] = itemLink
        
        local mh = simGear[16]
        local mhLoc = mh and select(9, GetItemInfo(mh))
        local mhIs2H = (mhLoc == "INVTYPE_2HWEAPON")
        local newItemLoc = select(9, GetItemInfo(itemLink))
        local newItemIs2H = (newItemLoc == "INVTYPE_2HWEAPON")
        local pairedItem = nil 

        if targetSlot == 16 then
            if newItemIs2H then
                simGear[17] = nil 
            else
                if not simGear[17] and gapFillerOH and gapFillerOH ~= itemLink then
                    simGear[17] = gapFillerOH; pairedItem = gapFillerOH 
                end
            end
        elseif targetSlot == 17 then
            if mhIs2H then
                if gapFillerMH and gapFillerMH ~= itemLink then
                    local _,_,_,_,_,_,_,_,fillLoc = GetItemInfo(gapFillerMH)
                    if fillLoc ~= "INVTYPE_2HWEAPON" then
                        simGear[16] = gapFillerMH; pairedItem = gapFillerMH 
                    else
                        simGear[16] = nil 
                    end
                else
                    simGear[16] = nil 
                end
            end
        end

        local slotPairs = { [11]=12, [12]=11, [13]=14, [14]=13, [16]=17, [17]=16 }
        local partner = slotPairs[targetSlot]
        
        if partner and simGear[partner] then
             local pLink = simGear[partner]
             local pID = tonumber(pLink:match("item:(%d+)"))
             
             if newItemID and pID and newItemID == pID and Roadmap:IsUnique(itemLink) then
                 simGear[partner] = nil
             end
        end

        local newScore, newStats = Roadmap:GetAdjustedScore(simGear, weights, specName)
        local gain = newScore - baseScore
        
        local allowedByFocus = true
        if Roadmap.FocusStat and baseStats and newStats then
            local oldVal = baseStats[Roadmap.FocusStat] or 0
            local newVal = newStats[Roadmap.FocusStat] or 0
            
            if newVal <= oldVal then
                allowedByFocus = false
                
                if Roadmap.FocusStat == "ITEM_MOD_SPELL_DAMAGE_DONE" or Roadmap.FocusStat == "ITEM_MOD_SPELL_HEALING_DONE" then
                    if (newStats["ITEM_MOD_SPELL_POWER_SHORT"] or 0) > (baseStats["ITEM_MOD_SPELL_POWER_SHORT"] or 0) then allowedByFocus = true end
                elseif Roadmap.FocusStat == "ITEM_MOD_HIT_SPELL_RATING_SHORT" then
                    if (newStats["ITEM_MOD_HIT_RATING_SHORT"] or 0) > (baseStats["ITEM_MOD_HIT_RATING_SHORT"] or 0) then allowedByFocus = true end
                end
            end
        end
        
        if allowedByFocus and gain > 0.1 then
            results[targetSlot] = { gain = gain, pair = pairedItem }
        end
      end
    end
    return results
end

function Roadmap:ResolveConflicts()
    Roadmap.BestIndices = {}
    Roadmap.ForcedPairs = {} -- Reset forced visuals
    
    local function ResolvePair(s1, s2)
        Roadmap.BestIndices[s1] = 1
        Roadmap.BestIndices[s2] = 1
        
        local list1 = Roadmap.ScanResults[s1]
        local list2 = Roadmap.ScanResults[s2]
        
        if not list1 or not list2 or #list1 == 0 or #list2 == 0 then return end
        
        local item1 = list1[1]
        local item2 = list2[1]
        
        local id1 = tonumber(item1.link:match("item:(%d+)"))
        local id2 = tonumber(item2.link:match("item:(%d+)"))
        
        if id1 and id2 and id1 == id2 and Roadmap:IsUnique(item1.link) then
            local gain1_Pri = item1.gain
            local gain2_Sec = (list2[2] and list2[2].gain) or 0
            local totalA = gain1_Pri + gain2_Sec
            
            local gain1_Sec = (list1[2] and list1[2].gain) or 0
            local gain2_Pri = item2.gain
            local totalB = gain1_Sec + gain2_Pri
            
            if totalA >= totalB then
                Roadmap.BestIndices[s2] = 2
            else
                Roadmap.BestIndices[s1] = 2
            end
        end
    end
    
    ResolvePair(11, 12) 
    ResolvePair(13, 14) 
    
    -- Weapon Visual Sync
    local mhList = Roadmap.ScanResults[16] or {}
    local ohList = Roadmap.ScanResults[17] or {}
    
    local bestMH = mhList[1]
    local bestOH = ohList[1]
    
    if bestMH then
        -- Check if MH has a forced pair
        if bestMH.pair then
            Roadmap.ForcedPairs[17] = bestMH.pair -- Force OH slot to show pair
        end
        
        local _,_,_,_,_,_,_,_,loc = GetItemInfo(bestMH.link)
        if loc == "INVTYPE_2HWEAPON" then
            local score2H = bestMH.gain
            local scoreDW = (bestOH and bestOH.gain) or -999
            
            if score2H >= scoreDW then
                Roadmap.BestIndices[17] = -1
                Roadmap.ForcedPairs[17] = nil -- 2H wins, no forced OH
            else
                -- DW Wins: the two-hander is not part of the set (not counted, not
                -- equipped by Chain Mode). Show the OH's main-hand filler if it has one.
                Roadmap.BestIndices[16] = -1
                if bestOH and bestOH.pair then
                    Roadmap.ForcedPairs[16] = bestOH.pair
                end
            end
        end
    end

    Roadmap:ResolveChoiceGroups()
end

-- A quest that lets you choose one reward gives its choices the same group. Only
-- one slot may use a group: slots claim their pick from the biggest gain down, and
-- a slot whose pick is already claimed falls back to its next-best item.
function Roadmap:ResolveChoiceGroups()
    local order = {}
    for slotID, list in pairs(Roadmap.ScanResults) do
        local idx = Roadmap.BestIndices[slotID] or 1
        if idx > 0 and list[idx] and list[idx].gain > 0 then table_insert(order, slotID) end
    end
    table_sort(order, function(a, b)
        return Roadmap.ScanResults[a][Roadmap.BestIndices[a] or 1].gain > Roadmap.ScanResults[b][Roadmap.BestIndices[b] or 1].gain
    end)

    local claimed = {}
    for _, slotID in ipairs(order) do
        local list = Roadmap.ScanResults[slotID]
        local idx = Roadmap.BestIndices[slotID] or 1
        while list[idx] and list[idx].group and claimed[list[idx].group] do idx = idx + 1 end
        if list[idx] and list[idx].gain > 0 then
            Roadmap.BestIndices[slotID] = idx
            if list[idx].group then claimed[list[idx].group] = true end
        else
            Roadmap.BestIndices[slotID] = -1
        end
    end
end

-- =============================================================
-- 5. THE SCANNER (Coroutines & Merged Loops)
-- =============================================================
local currentWeights, currentSpec, currentBaseGear, currentBaseScore, currentBaseStats

local SCAN_SLICE_MS = 6 -- scan work per frame before yielding
local scanSliceStart = 0

-- Inside the scan coroutine, yield once this frame's time budget is used up.
-- Direct calls (sidebar click) run on the main thread and never yield.
local function ScanSliceCheck()
    local co = Roadmap.ScanCo
    if co and coroutine.running() == co and debugprofilestop() - scanSliceStart > SCAN_SLICE_MS then
        coroutine.yield()
    end
end

local function ZoneLootTable(zoneKey)
    return (SGJ.DungeonDB and SGJ.DungeonDB[zoneKey]) or (ns.DungeonDB and ns.DungeonDB[zoneKey])
end

-- Asks the server for any of these items not cached yet; returns those IDs.
local function RequestItemData(ids)
    local missing = {}
    local request = C_Item and C_Item.RequestLoadItemDataByID
    for _, id in ipairs(ids) do
        if not GetItemInfo(id) then
            if request then pcall(request, id) end
            missing[#missing + 1] = id
        end
    end
    return missing
end

local function CountMissing(ids)
    local n = 0
    for _, id in ipairs(ids) do
        if not GetItemInfo(id) then n = n + 1 end
    end
    return n
end

-- Stops a running scan so a new one never runs alongside it.
function Roadmap:CancelScan()
    if Roadmap.ScanTicker then Roadmap.ScanTicker:Cancel() end
    Roadmap.ScanTicker = nil
    Roadmap.ScanCo = nil
end

-- A scan setting changed while scanning: stop and drop the half-built leaderboard.
function Roadmap:AbortScan()
    if not (Roadmap.ScanCo or Roadmap.Scanning) then return end
    Roadmap:CancelScan()
    Roadmap.Scanning = false
    Roadmap.CapCache = nil
    if SGJ.ViewRoadmap and SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:Hide() end
end

function Roadmap:PerformSmartScan()
    local weights, specName = Roadmap:GetActiveProfile()
    if not weights then print(L["SGJ: No Stat Profile Found!"]); return end
    Roadmap:CancelScan()

    Roadmap.BaseStale = false
    currentWeights = weights
    currentSpec = specName
    Roadmap:UpdateRealGearCache()
    Roadmap.CapCache = ComputeCapRules(currentSpec)

    currentBaseGear = {}
    currentBaseGear = Roadmap:BuildBaseGear(currentSpec)
    -- Save the base stats so we can compare them later for the Focus Filter
    currentBaseScore, currentBaseStats = Roadmap:GetAdjustedScore(currentBaseGear, currentWeights, currentSpec)

    Roadmap:RefreshProfileDisplay()
    
    Roadmap.ZoneRankings = {}
    Roadmap.Scanning = true
    Roadmap:UpdateSidebar()
    if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:Show() end
    Roadmap:StartCoroutineScan()
end

function Roadmap:StartCoroutineScan()
    Roadmap:CancelScan()
    local zonesToScan = Roadmap:GetZonesToScan()

    local total = #zonesToScan
    local current = 0

    -- Request every item first so uncached items aren't silently skipped.
    local ids, seen = {}, {}
    for _, zData in ipairs(zonesToScan) do
        local lootTable = ZoneLootTable(zData.key)
        if lootTable then
            for itemID in pairs(lootTable) do
                if not seen[itemID] then seen[itemID] = true; ids[#ids + 1] = itemID end
            end
        end
    end
    local pending = RequestItemData(ids)

    local function AddRanking(zData, score, bestLink, topItems)
        if score and score > 0 then
            table.insert(Roadmap.ZoneRankings, {
                key=zData.key, name=zData.meta.name,
                score=score, bestLink=bestLink, topItems=topItems
            })
        end
    end

    local co = coroutine.create(function()
        -- Wait until the items arrive, stop arriving for 0.3 s, or 2 s pass.
        if #pending > 0 then
            local t0 = GetTime()
            local lastChange, lastCount, lastCheck = t0, #pending, t0
            while true do
                coroutine.yield()
                local now = GetTime()
                if now - lastCheck >= 0.1 then
                    lastCheck = now
                    local n = CountMissing(pending)
                    if n < lastCount then lastCount, lastChange = n, now end
                    if n == 0 or now - lastChange >= 0.3 or now - t0 >= 2 then break end
                end
            end
        end

        local retryZones, missed = {}, {}
        for _, zData in ipairs(zonesToScan) do
            current = current + 1
            if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:SetValue((current/total)*100) end

            local before = #missed
            local score, bestLink, topItems = Roadmap:ScanZoneData(zData.key, Roadmap.UseLevelFilter, missed)
            AddRanking(zData, score, bestLink, topItems)
            if #missed > before then table.insert(retryZones, zData) end
            -- The open dungeon's slot results were just rebuilt: sort and resolve them.
            if zData.key == Roadmap.SelectedZone then Roadmap:FinalizeScan() end

            ScanSliceCheck()
        end

        -- Some items were still missing: wait for them once (max 2 s), then rescan those zones.
        if #retryZones > 0 then
            RequestItemData(missed)
            local t0 = GetTime()
            while CountMissing(missed) > 0 and GetTime() - t0 < 2 do coroutine.yield() end
            if CountMissing(missed) < #missed then
                for _, zData in ipairs(retryZones) do
                    local score, bestLink, topItems = Roadmap:ScanZoneData(zData.key, Roadmap.UseLevelFilter)
                    for i = #Roadmap.ZoneRankings, 1, -1 do
                        if Roadmap.ZoneRankings[i].key == zData.key then table.remove(Roadmap.ZoneRankings, i) end
                    end
                    AddRanking(zData, score, bestLink, topItems)
                    if zData.key == Roadmap.SelectedZone then Roadmap:FinalizeScan() end
                    ScanSliceCheck()
                end
            end
        end

        Roadmap.HasScanned = true
        Roadmap.Scanning = false
        Roadmap.CapCache = nil
        Roadmap:UpdateSidebar()
        if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:Hide() end
        print(string.format(L["SGJ: Checked %d dungeons. Leaderboard updated."], total))
    end)

    local ticker
    ticker = C_Timer.NewTicker(0.01, function()
        if Roadmap.ScanCo ~= co or coroutine.status(co) == "dead" then
            ticker:Cancel()
            if Roadmap.ScanTicker == ticker then Roadmap.ScanTicker = nil; Roadmap.ScanCo = nil end
        else
            scanSliceStart = debugprofilestop()
            local ok, err = coroutine.resume(co)
            if not ok then
                print(L["SGJ Error:"], err)
                ticker:Cancel()
                Roadmap.ScanTicker = nil; Roadmap.ScanCo = nil; Roadmap.CapCache = nil
                Roadmap.Scanning = false
                if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:Hide() end
            end
        end
    end)
    Roadmap.ScanCo = co
    Roadmap.ScanTicker = ticker
end

-- missOut (optional): item IDs the server hasn't sent yet are appended to it.
function Roadmap:ScanZoneData(zoneKey, applySmartFilter, missOut)
    local lootTable = SGJ.DungeonDB and SGJ.DungeonDB[zoneKey]
    if not lootTable and ns.DungeonDB then lootTable = ns.DungeonDB[zoneKey] end
    if not lootTable then return end

    local inScan = Roadmap.ScanCo and coroutine.running() == Roadmap.ScanCo

    -- Gear or level changed since the last snapshot (Roadmap.BaseStale): rebuild the
    -- weights and base gear, but never in the middle of a running scan.
    if not currentWeights or (Roadmap.BaseStale and not Roadmap.ScanCo) then
        Roadmap.BaseStale = false
        currentWeights, currentSpec = Roadmap:GetActiveProfile()
        if not currentWeights then return end
        Roadmap:UpdateRealGearCache()
        currentBaseGear = Roadmap:BuildBaseGear(currentSpec)
        currentBaseScore, currentBaseStats = Roadmap:GetAdjustedScore(currentBaseGear, currentWeights, currentSpec)
    end

    -- Outside a scan, read the cap state fresh for this call; restored before returning.
    local prevCaps = Roadmap.CapCache
    if not (inScan and prevCaps) then Roadmap.CapCache = ComputeCapRules(currentSpec) end

    local _, maxLvl = Roadmap:GetLevelRange()
    local zoneTotalScore = 0
    local zoneItems = {}

    -- Held locally: the scan can pause mid-zone and a sidebar click may replace these.
    local isSelected = (Roadmap.SelectedZone == zoneKey)
    local scanResults, missingItems
    if isSelected then
        Roadmap.ScanResults = {}
        Roadmap.MissingItems = {}
        scanResults, missingItems = Roadmap.ScanResults, Roadmap.MissingItems
    end

    local candidates1H = {}
    local candidatesOH = {}
    local itemsToSim = {}

    local _, playerClass = UnitClass("player")
    local playerFaction = UnitFactionGroup("player")
    local currentPhase = Roadmap:GetContentPhase()
    -- A race starting zone (sidebar click included) shows nothing to other races
    local zoneMeta = ZONE_META[zoneKey]
    local raceBlocked = zoneMeta and zoneMeta.race and select(2, UnitRace("player")) ~= zoneMeta.race

    for itemID, info in pairs(lootTable) do
        local allowed = not raceBlocked
        if applySmartFilter and info.reqLevel and info.reqLevel > maxLvl then allowed = false end
        -- Quest rewards: side = one faction's quest, class = a class quest.
        if info.side and info.side ~= playerFaction then allowed = false end
        if info.class and info.class ~= playerClass then allowed = false end
        -- Dungeon rows mix boss loot and quest rewards; the source checkboxes pick which.
        if allowed and not ItemSourceAllowed(zoneKey, ZONE_META[zoneKey], info) then allowed = false end
        
        if allowed then
            local itemPhase = info.phase
            if not itemPhase and zoneKey == "Geras_Badges" then
                itemPhase = 1
                if itemID >= 34000 then itemPhase = 5
                elseif itemID >= 33000 then itemPhase = 4
                end
            end
            if itemPhase and itemPhase > currentPhase then allowed = false end
        end
        
        if allowed then
             local _, link, _, _, _, _, _, _, equipLoc = GetItemInfo(itemID)
             if link then
                 if SGJ.IsItemUsable(link) then
                     
                     -- [ADD] Hard filter to prevent Hunters from simulating Thrown weapons
                     local isHunterThrown = (playerClass == "HUNTER" and equipLoc == "INVTYPE_THROWN")
                     -- Shield tanks never get a two-hander suggested.
                     local isTank2H = (equipLoc == "INVTYPE_2HWEAPON" and Roadmap:IsShieldTankSpec(currentSpec))
                     
                     if not isHunterThrown and not isTank2H then
                         if equipLoc == "INVTYPE_WEAPON" or equipLoc == "INVTYPE_WEAPONMAINHAND" then table.insert(candidates1H, link) end
                         if Roadmap:IsOffhandCandidate(link) then table.insert(candidatesOH, link) end
                         table.insert(itemsToSim, {id=itemID, link=link, loc=equipLoc, info=info})
                     end
                     
                 end
             else
                 if missOut then table.insert(missOut, itemID) end
                 if isSelected then table.insert(missingItems, itemID) end
             end
        end
        ScanSliceCheck()
    end

    local fillMH, fillOH = nil, nil
    if not Roadmap:IsStrictTwoHandSpec(currentSpec) then
        local bestS = 0
        for _, link in ipairs(candidates1H) do
            local s = Roadmap:GetAdjustedScore({[16]=link}, currentWeights, currentSpec)
            if s > bestS then bestS = s; fillMH = link end
            ScanSliceCheck()
        end
        bestS = 0
        for _, link in ipairs(candidatesOH) do
            local s = Roadmap:GetAdjustedScore({[17]=link}, currentWeights, currentSpec)
            if s > bestS then bestS = s; fillOH = link end
            ScanSliceCheck()
        end
    end
    
    for _, data in ipairs(itemsToSim) do
        local defaultSlot = Roadmap:GetSlotFromLoc(data.loc)
        if defaultSlot then -- ignored slots are skipped per simulated slot (GetSimulationGains)
            -- Pass the baseStats into the simulator!
            local results = Roadmap:GetSimulationGains(data.link, defaultSlot, currentWeights, currentSpec, fillMH, fillOH, currentBaseGear, currentBaseScore, currentBaseStats)
            
            for slotID, res in pairs(results) do
                if res.gain > zoneTotalScore then zoneTotalScore = res.gain end 
                table.insert(zoneItems, { link=data.link, gain=res.gain, badgeCost=data.info.badgeCost, group=data.info.choice })

                if isSelected then
                    if not scanResults[slotID] then scanResults[slotID] = {} end
                    local src = data.info.source
                    if src and data.info.dungeonQuest then src = string.format(L["Quest: %s"], src) end
                    table.insert(scanResults[slotID], {
                        link = data.link, gain = res.gain, pair = res.pair,
                        boss = (src or L["Zone Drop"]) .. " (" .. ZoneDisplayName(ZONE_META[zoneKey] and ZONE_META[zoneKey].name or zoneKey) .. ")",
                        reqLevel = data.info.reqLevel,
                        badgeCost = data.info.badgeCost,
                        group = data.info.choice -- quest ID when this is one of a quest's choose-one rewards
                    })
                end
            end
        end
        ScanSliceCheck()
    end
    Roadmap.CapCache = prevCaps

    if Roadmap.SortByEfficiency and zoneKey == "Geras_Badges" then
        table_sort(zoneItems, function(a,b) return (a.gain / (a.badgeCost or 1)) > (b.gain / (b.badgeCost or 1)) end)
    else
        table_sort(zoneItems, function(a,b) return a.gain > b.gain end)
    end
    
    -- Top three, with at most one of any quest's choose-one rewards. A ring, trinket or
    -- one-hander simulated in two slots is listed once (the list is sorted, so the
    -- first entry for a link is its best gain).
    local topItems, usedGroups, usedLinks = {}, {}, {}
    for _, item in ipairs(zoneItems) do
        if #topItems >= 3 then break end
        if not (item.group and usedGroups[item.group]) and not usedLinks[item.link] then
            table.insert(topItems, item)
            usedLinks[item.link] = true
            if item.group then usedGroups[item.group] = true end
        end
    end
    
    return zoneTotalScore, (zoneItems[1] and zoneItems[1].link), topItems
end

function Roadmap:FinalizeScan()
    for slotID, list in pairs(Roadmap.ScanResults) do
        table.sort(list, function(a,b) return a.gain > b.gain end)
    end
    Roadmap:ResolveConflicts()
    Roadmap:SaveHistory()
    Roadmap:RefreshUI()
    
    if #Roadmap.MissingItems > 0 then
        Roadmap.RetryAttempts = (Roadmap.RetryAttempts or 0) + 1
        if Roadmap.RetryAttempts <= 3 then
            print(string.format(L["|cff00ccffSGJ:|r Waiting for server data (%d items)... Retrying automatically (%d/3)."], #Roadmap.MissingItems, Roadmap.RetryAttempts))
            C_Timer.After(1.0, function() 
                 if SGJ.ViewRoadmap and SGJ.ViewRoadmap:IsShown() and Roadmap.SelectedZone then
                     Roadmap:ScanZoneData(Roadmap.SelectedZone, Roadmap.UseLevelFilter)
                     Roadmap:FinalizeScan()
                 end
            end)
        else
            Roadmap.RetryAttempts = 0
        end
    else
        Roadmap.RetryAttempts = 0
    end
end

-- =============================================================
-- [[ RESTORED UI REFRESH HELPER ]]
-- =============================================================
function Roadmap:RefreshUI()
    local f = SGJ.ViewRoadmap
    if not f then return end
    if f.Model then f.Model:Undress(); f.Model:SetUnit("player") end
    -- The slot popup lists the old results: close it.
    if Roadmap.Popup then Roadmap.Popup:Hide() end

    local upgradeCount, upgradeGain = 0, 0

    -- [[ FIX: ORDERED REFRESH (1 to 18) ]]
    for id=1, 18 do
        local btn = f.Slots[id]
        if btn then
            btn.UpgradeIcon:Hide(); btn.Anim:Stop(); btn.FilteredItems = nil
            
            -- [[ SHOW BASELINE (Real or Virtual) ]]
            local link = Roadmap:GetBaselineItem(id)
            if link then 
                SetItemButtonTexture(btn, GetItemIcon(link))
                btn.icon:SetDesaturated(false)
                if f.Model then f.Model:TryOn(link) end
                
                -- [[ ENABLE TOOLTIP FOR BASELINE ]]
                btn.FilteredItems = {{ link=link, gain=0, boss=L["Equipped / Chain"], pair=nil }}
            else 
                SetItemButtonTexture(btn, nil)
                btn.Background:Show() 
            end
            
            -- [[ CHECK FOR UPGRADES ]]
            local list = Roadmap.ScanResults[id]
            local ignored = Roadmap.IgnoredSlots[id]
            if list and #list > 0 and not ignored then
                local idx = Roadmap.BestIndices[id] or 1
                
                if idx ~= -1 then
                    local bestEntry = list[idx]
                    if bestEntry and bestEntry.gain > 0 then 
                        -- UPGRADE FOUND
                        btn.UpgradeIcon:Show(); btn.Anim:Play()
                        SetItemButtonTexture(btn, GetItemIcon(bestEntry.link))
                        btn.icon:SetDesaturated(false); btn.icon:SetVertexColor(1, 1, 1)
                        btn.FilteredItems = list 
                        btn.DisplayIndex = idx 
                        upgradeCount = upgradeCount + 1; upgradeGain = upgradeGain + bestEntry.gain
                        if f.Model then f.Model:TryOn(bestEntry.link) end
                    end
                end
            end
            
            -- [[ FORCE PAIR (Dual Wield) ]]
            if Roadmap.ForcedPairs[id] then
                local pLink = Roadmap.ForcedPairs[id]
                SetItemButtonTexture(btn, GetItemIcon(pLink))
                btn.icon:SetDesaturated(false); btn.icon:SetVertexColor(1, 1, 1)
                btn.FilteredItems = {{ link=pLink, gain=0, boss=L["Context Item"], pair=nil }}
                if f.Model then f.Model:TryOn(pLink) end
            end

            -- Ignored (right-clicked) slots stay grayed out.
            if btn.icon then
                if ignored then btn.icon:SetVertexColor(0.3, 0.3, 0.3) else btn.icon:SetVertexColor(1, 1, 1) end
            end
        end
    end

    -- [[ SUMMARY LINE UNDER THE TITLE ]]
    if f.Summary then
        local zone = Roadmap.SelectedZone
        local zoneName = zone and ZoneDisplayName((ZONE_META[zone] and ZONE_META[zone].name) or zone)
        if upgradeCount > 0 then
            local line
            if upgradeCount == 1 then line = string.format(L["%d upgrade, +%.1f"], upgradeCount, upgradeGain)
            else line = string.format(L["%d upgrades, +%.1f"], upgradeCount, upgradeGain) end
            line = "|cff00ff00" .. line .. "|r"
            if zoneName then line = string.format(L["%s: %s"], zoneName, line) end
            f.Summary:SetText(line)
        elseif zoneName then
            f.Summary:SetText(string.format(L["%s: |cff999999no upgrades|r"], zoneName))
        else
            f.Summary:SetText(L["|cff999999Pick a dungeon from the leaderboard|r"])
        end
    end
end

-- =============================================================
-- [[ DYNAMIC EXPORT ]]
-- =============================================================
local ID_TO_LAB_SLOT = {
    [1]="HeadSlot", [2]="NeckSlot", [3]="ShoulderSlot", [15]="BackSlot", [5]="ChestSlot",
    [9]="WristSlot", [10]="HandsSlot", [6]="WaistSlot", [7]="LegsSlot", [8]="FeetSlot",
    [11]="Finger0Slot", [12]="Finger1Slot", [13]="Trinket0Slot", [14]="Trinket1Slot",
    [16]="MainHandSlot", [17]="SecondaryHandSlot", [18]="RangedSlot"
}

function Roadmap:GenerateExportString()
    local parts = {"SGJ:1"}
    for id, labName in pairs(ID_TO_LAB_SLOT) do
        local link = Roadmap:GetBaselineItem(id) 
        if link then
            local itemString = link:match("(item:[%d:-]+)")
            if itemString then
                table.insert(parts, labName .. "=" .. itemString)
            end
        end
    end
    return table.concat(parts, "&")
end

function Roadmap:ShowExportPopup()
    if not Roadmap.ExportFrame then
        local f = CreateFrame("Frame", "SGJ_RoadmapExport", UIParent, "BackdropTemplate"); f:SetSize(400, 200); f:SetPoint("CENTER"); f:SetFrameStrata("DIALOG"); f:EnableMouse(true)
        f:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1}); f:SetBackdropColor(0,0,0,0.9); f:SetBackdropBorderColor(0.6, 0.6, 0.6, 1)
        
        f.Title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge"); f.Title:SetPoint("TOP", 0, -10); f.Title:SetText(L["Export to The Lab"])
        
        local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate"); scroll:SetPoint("TOPLEFT", 20, -40); scroll:SetPoint("BOTTOMRIGHT", -40, 40)
        local eb = CreateFrame("EditBox", nil, scroll); eb:SetSize(340, 200); eb:SetMultiLine(true); eb:SetFontObject("GameFontHighlight"); eb:SetAutoFocus(false); scroll:SetScrollChild(eb); f.EditBox = eb
        
        -- CLOSE BUTTON
        local close = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); close:SetSize(80, 22); close:SetPoint("BOTTOM", 45, 10); close:SetText(L["Close"]); 
        close:SetScript("OnClick", function() f:Hide() end)
        
        -- SELECT ALL BUTTON (The "Helper" Copy Button)
        local selectBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); selectBtn:SetSize(80, 22); selectBtn:SetPoint("RIGHT", close, "LEFT", -10, 0); selectBtn:SetText(L["Select All"])
        selectBtn:SetScript("OnClick", function()
            eb:SetFocus()
            eb:HighlightText()
            print(L["SGJ: Text selected. Press Ctrl+C to copy."])
        end)
        eb:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)

        Roadmap.ExportFrame = f
        table.insert(UISpecialFrames, "SGJ_RoadmapExport") -- Escape closes it
    end
    
    local s = Roadmap:GenerateExportString()
    
    Roadmap.ExportFrame:Show()
    Roadmap.ExportFrame.EditBox:SetText(s) 
    Roadmap.ExportFrame.EditBox:SetFocus() 
    Roadmap.ExportFrame.EditBox:HighlightText()
end

-- =============================================================
-- [[ DYNAMIC INTERACTIVE POPUP (SPLIT BUTTONS) ]]
-- =============================================================
function Roadmap.OnSlotClick(self)
    if not self.FilteredItems then return end
    if not Roadmap.Popup then
        Roadmap.Popup = CreateFrame("Frame", "SGJ_RoadmapPopup", UIParent, "BackdropTemplate"); Roadmap.Popup:SetSize(320, 150)
        Roadmap.Popup:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1}); Roadmap.Popup:SetBackdropColor(0.1, 0.1, 0.1, 0.95); Roadmap.Popup:SetBackdropBorderColor(0, 1, 0, 1)
        Roadmap.Popup:SetFrameStrata("DIALOG"); Roadmap.Popup:SetClampedToScreen(true); Roadmap.Popup:EnableMouse(true)
        Roadmap.Popup:SetScript("OnLeave", function() if not Roadmap.Popup:IsMouseOver() then Roadmap.Popup:Hide() end end)
        Roadmap.Popup.Header = Roadmap.Popup:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall"); Roadmap.Popup.Header:SetPoint("TOPLEFT", 5, -5); Roadmap.Popup.Header:SetText(L["Top Upgrades (Shift: Link)"]); Roadmap.Popup.Header:SetTextColor(0.6, 0.6, 0.6)
        Roadmap.Popup.Rows = {}
        table.insert(UISpecialFrames, "SGJ_RoadmapPopup") -- Escape closes it
    end
    local f = Roadmap.Popup; f:ClearAllPoints(); f:SetPoint("TOPLEFT", self, "TOPRIGHT", 5, 0); f:Show(); for _, r in ipairs(f.Rows) do r:Hide() end
    local y = -25
    for i, item in ipairs(self.FilteredItems) do
        if i > 6 then break end 
        local row = f.Rows[i]
        
        -- Create Row Container and Sub-Buttons if they don't exist
        if not row then
            row = CreateFrame("Frame", nil, f); row:SetSize(310, 20)
            
            -- Primary Item Button (Left)
            row.Btn1 = CreateFrame("Button", nil, row)
            row.Btn1:SetPoint("LEFT", 0, 0); row.Btn1:SetHeight(20)
            row.Btn1.Text = row.Btn1:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            row.Btn1.Text:SetPoint("LEFT", 0, 0)
            row.Btn1:RegisterForClicks("AnyUp")
            
            -- Plus Sign (Middle)
            row.Plus = row:CreateFontString(nil, "OVERLAY", "GameFontNormal"); row.Plus:SetText("+"); row.Plus:SetTextColor(0.5, 0.5, 0.5)
            
            -- Partner Item Button (Right)
            row.Btn2 = CreateFrame("Button", nil, row)
            row.Btn2:SetHeight(20)
            row.Btn2.Text = row.Btn2:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            row.Btn2.Text:SetPoint("LEFT", 0, 0)
            row.Btn2:RegisterForClicks("AnyUp")
            
            -- Score (Far Right)
            row.Gain = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight"); row.Gain:SetPoint("RIGHT", 0, 0); row.Gain:SetTextColor(0, 1, 0)
            
            table.insert(f.Rows, row)
        end
        
        row:SetPoint("TOPLEFT", 5, y)
        
        -- SETUP PRIMARY ITEM
        local name1 = GetItemInfo(item.link) or item.link
        row.Btn1.Text:SetText(item.link)
        row.Btn1:SetWidth(row.Btn1.Text:GetStringWidth() + 5)
        
        row.Btn1:SetScript("OnClick", function(b, btn) if IsShiftKeyDown() then ChatEdit_InsertLink(item.link) else if SGJ.ViewRoadmap.Model then SGJ.ViewRoadmap.Model:TryOn(item.link) end end end)
        row.Btn1:SetScript("OnEnter", function() GameTooltip:SetOwner(row, "ANCHOR_RIGHT"); GameTooltip:SetHyperlink(item.link); GameTooltip:Show() end)
        row.Btn1:SetScript("OnLeave", GameTooltip_Hide)
        
        -- SETUP PARTNER ITEM (IF EXISTS)
        if item.pair then
            row.Plus:ClearAllPoints(); row.Plus:SetPoint("LEFT", row.Btn1, "RIGHT", 2, 0); row.Plus:Show()
            
            local name2 = GetItemInfo(item.pair) or item.pair
            row.Btn2:ClearAllPoints(); row.Btn2:SetPoint("LEFT", row.Plus, "RIGHT", 2, 0)
            row.Btn2.Text:SetText(item.pair)
            row.Btn2:SetWidth(row.Btn2.Text:GetStringWidth() + 5)
            row.Btn2:Show()
            
            row.Btn2:SetScript("OnClick", function(b, btn) if IsShiftKeyDown() then ChatEdit_InsertLink(item.pair) else if SGJ.ViewRoadmap.Model then SGJ.ViewRoadmap.Model:TryOn(item.pair) end end end)
            row.Btn2:SetScript("OnEnter", function() GameTooltip:SetOwner(row, "ANCHOR_RIGHT"); GameTooltip:SetHyperlink(item.pair); GameTooltip:Show() end)
            row.Btn2:SetScript("OnLeave", GameTooltip_Hide)
        else
            row.Plus:Hide()
            row.Btn2:Hide()
        end
        
        -- SETUP SCORE
        -- Color logic for downgrade/upgrade
        if item.gain > 0 then row.Gain:SetTextColor(0, 1, 0); row.Gain:SetText("+"..string.format("%.1f", item.gain))
        else row.Gain:SetTextColor(1, 0, 0); row.Gain:SetText(string.format("%.1f", item.gain)) end
        
        row:Show()
        y = y - 20
    end
    f:SetHeight(math.abs(y) + 5)
end

function Roadmap.OnSlotEnter(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	if Roadmap.IgnoredSlots[self.SlotID] then
        GameTooltip:SetText(L[self.SlotName])
        GameTooltip:AddLine(L["|cffff0000(IGNORED)|r"], 1, 0, 0)
        GameTooltip:AddLine(L["Right-click to re-enable scanning."], 1, 1, 1)
        GameTooltip:Show()
        return -- Stop here, don't show anything else
    end
	
    if self.FilteredItems then
        local idx = self.DisplayIndex or 1
        local best = self.FilteredItems[idx]
        if not best then best = self.FilteredItems[1] end 
        
        -- [[ UPDATED TOOLTIP LOGIC: Standard Tooltip + Append ]]
        if best.link then
            GameTooltip:SetHyperlink(best.link)
            
            if best.gain > 0 then
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine(L["|cff00ff00[Roadmap Upgrade]|r"])
                GameTooltip:AddDoubleLine(L["Score Gain:"], "+"..string.format("%.1f", best.gain), 1, 1, 1, 0, 1, 0)
                GameTooltip:AddDoubleLine(L["Source:"], best.boss or "?", 1, 1, 1, 1, 0.82, 0)
                
                -- [NEW] Display Badge Cost and Efficiency!
                if best.badgeCost then
                    local efficiency = best.gain / best.badgeCost
                    GameTooltip:AddDoubleLine(L["Badge Cost:"], best.badgeCost, 1, 1, 1, 1, 0.82, 0)
                    GameTooltip:AddDoubleLine(L["Efficiency:"], string.format(L["%.2f Score/Badge"], efficiency), 1, 1, 1, 0.5, 1, 0.5)
                end
                
                if best.pair then
                    GameTooltip:AddLine(" ")
                    GameTooltip:AddLine(string.format(L["Paired With: %s"], best.pair), 0.6, 0.6, 1)
                end
                
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine(L["<Left-Click for Options>"], 0.5, 0.5, 0.5)
            else
                -- It's the baseline/equipped item
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine(L["|cffaaaaaa[Current / Virtual]|r"], 0.6, 0.6, 0.6)
            end
        else
            -- Fallback if link is missing
            GameTooltip:SetText(L[self.SlotName])
            GameTooltip:AddLine(L["Item data missing"], 1, 0, 0)
        end

        if SGJ.ViewRoadmap.Model and best.link then SGJ.ViewRoadmap.Model:TryOn(best.link) end
    else 
        GameTooltip:SetText(L[self.SlotName]) 
    end
    GameTooltip:Show()
end

-- =============================================================
-- [[ GEAR / LEVEL WATCH ]]
-- A new item or a level-up makes the saved base gear and weights stale: the next
-- dungeon click (or Calculate) rebuilds them. Coalesced to one update per 0.5 s
-- (equipping a set fires one event per slot) and never in the middle of a scan.
-- With Chain Mode on, the virtual set is yours to build, so gear swaps leave it alone.
-- =============================================================
local gearWatch = CreateFrame("Frame")
gearWatch:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
gearWatch:RegisterEvent("PLAYER_LEVEL_UP")
local gearWatchPending, equipChanged = false, false
gearWatch:SetScript("OnEvent", function(_, event)
    if event == "PLAYER_EQUIPMENT_CHANGED" then
        if Roadmap.ChainMode then return end
        equipChanged = true
    end
    Roadmap.BaseStale = true
    if gearWatchPending then return end
    gearWatchPending = true
    C_Timer.After(0.5, function()
        gearWatchPending = false
        local f = SGJ.ViewRoadmap
        if equipChanged and not Roadmap.ChainMode then
            -- Unused while Chain Mode is off; re-taken from your gear when it starts.
            table_wipe(Roadmap.VirtualGear)
        end
        equipChanged = false
        if Roadmap.Scanning or Roadmap.ScanCo then return end -- the scan's own snapshot stays put
        if f and f:IsShown() then
            Roadmap:InitializeVirtualGear() -- also refreshes RealGearStats
            if Roadmap.LevelBar then Roadmap.LevelBar:Refresh() end
            Roadmap:RefreshUI()
        end
    end)
end)

if SGJ.RegisterPluginTab then SGJ.RegisterPluginTab("Roadmap", "Interface\\Icons\\INV_Misc_Map_01", Roadmap.InitView, "ViewRoadmap", nil) end
