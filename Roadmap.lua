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

SGJ.DungeonDB = SGJ.DungeonDB or ns.DungeonDB or {}

local Roadmap = {}
SGJ.Roadmap = Roadmap

-- =============================================================
-- 2. LAYOUT & CONFIG
-- =============================================================
local SLOTS = {
    { id=1,  name="Head",      x=-260, y=140,  texture="Head" },
    { id=2,  name="Neck",      x=-260, y=95,   texture="Neck" },
    { id=3,  name="Shoulder",  x=-260, y=50,   texture="Shoulder" },
    { id=15, name="Back",      x=-260, y=5,    texture="Chest" }, 
    { id=5,  name="Chest",     x=-260, y=-40,  texture="Chest" },
    { id=9,  name="Wrist",     x=-260, y=-85,  texture="Wrists" },
    { id=10, name="Hands",     x=80,   y=140,  texture="Hands" },
    { id=6,  name="Waist",     x=80,   y=95,   texture="Waist" },
    { id=7,  name="Legs",      x=80,   y=50,   texture="Legs" },
    { id=8,  name="Feet",      x=80,   y=5,    texture="Feet" },
    { id=11, name="Ring 1",    x=80,   y=-40,  texture="Finger" },
    { id=12, name="Ring 2",    x=80,   y=-85,  texture="Finger" },
    { id=13, name="Trinket 1", x=80,   y=-130, texture="Trinket" },
    { id=14, name="Trinket 2", x=80,   y=-175, texture="Trinket" },
    { id=16, name="Main Hand", x=-100, y=-230, texture="MainHand" },
    { id=17, name="Off Hand",  x=-60,  y=-230, texture="SecondaryHand" },
    { id=18, name="Ranged",    x=-20,  y=-230, texture="Ranged" },
}

local ZONE_META = {
    -- === VANILLA ===
    ["RagefireChasm"]    = { name="Ragefire Chasm",    min=13 },
    ["Deadmines"]        = { name="The Deadmines",     min=17 },
    ["WailingCaverns"]   = { name="Wailing Caverns",   min=17 },
    ["ShadowfangKeep"]   = { name="Shadowfang Keep",   min=22 },
    ["BlackfathomDeeps"] = { name="Blackfathom Deeps", min=24 },
    ["TheStockade"]      = { name="The Stockade",      min=24 },
    ["Gnomeregan"]       = { name="Gnomeregan",        min=29 },
    ["RazorfenKraul"]    = { name="Razorfen Kraul",    min=30 },
    ["ScarletMonastery"] = { name="Scarlet Monastery", min=28 },
    ["RazorfenDowns"]    = { name="Razorfen Downs",    min=40 },
    ["Uldaman"]          = { name="Uldaman",           min=42 },
    ["ZulFarrak"]        = { name="Zul'Farrak",        min=44 },
    ["Maraudon"]         = { name="Maraudon",          min=46 },
    ["SunkenTemple"]     = { name="Sunken Temple",     min=50 },
    ["BlackrockDepths"]  = { name="Blackrock Depths",  min=52 },
    ["DireMaul"]         = { name="Dire Maul",         min=55 },
    ["Scholomance"]      = { name="Scholomance",       min=58 },
    ["Stratholme"]       = { name="Stratholme",        min=58 },
    ["BlackrockSpire"]   = { name="Blackrock Spire",   min=58 },

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
    ["MagistersTerrace"] = { name="Magisters' Terrace", min=70 },

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
    ["Magisters_HC"]     = { name="Heroic: MgT",        min=70 },
}

Roadmap.UseLevelFilter = true
Roadmap.ShowHeroic = false 
Roadmap.ChainMode = false 
Roadmap.SelectedZone = nil
Roadmap.ScanResults = {}
Roadmap.BestIndices = {} 
Roadmap.MissingItems = {} 
Roadmap.ZoneRankings = {} 
Roadmap.ForcedPairs = {} 
Roadmap.VirtualGear = {} 

-- =============================================================
-- 3. UI INITIALIZATION
-- =============================================================
local function SetCheckLabel(btn, text)
    if btn.Text then btn.Text:SetText(text)
    else local g = _G[btn:GetName().."Text"]; if g then g:SetText(text) end end
end

function Roadmap.InitView(parent)
    local f = CreateFrame("Frame", "SGJ_RoadmapFrame", parent)
    f:SetAllPoints(); f:Hide()

    local modelSuccess = pcall(function()
        f.Model = CreateFrame("DressUpModel", "SGJ_RoadmapModel", f, "ModelWithControlsTemplate")
        f.Model:SetPoint("TOPLEFT", 0, -20); f.Model:SetPoint("BOTTOMRIGHT", -200, 0)
        f.Model:SetUnit("player")
        f.Model:SetLight(true, false, 0, 0, 0, 1.0, 1.0, 1.0, 1.0)
        f.Model:SetFrameStrata("BACKGROUND"); f.Model:SetFrameLevel(1)
        f.Model:SetScript("OnMouseWheel", function(self, delta) local z = self:GetPortraitZoom(); if delta > 0 then self:SetPortraitZoom(z + 0.1) else self:SetPortraitZoom(z - 0.1) end end)
        f.Model:SetScript("OnMouseDown", function(self, button) if button == "LeftButton" then self.isRotating = true; local x, y = GetCursorPosition(); self.prevX = x self:SetScript("OnUpdate", function(self) if self.isRotating then local cx, cy = GetCursorPosition(); self:SetFacing(self:GetFacing() + ((cx - self.prevX) * 0.01)); self.prevX = cx end end) elseif button == "RightButton" then self:Undress(); self:SetUnit("player"); self:SetPortraitZoom(0) end end)
        f.Model:SetScript("OnMouseUp", function(self) self.isRotating = false; self:SetScript("OnUpdate", nil) end)
    end)

    if not modelSuccess or not f.Model then
        f.Bg = f:CreateTexture(nil, "BACKGROUND"); f.Bg:SetPoint("TOPLEFT", 0, -20); f.Bg:SetPoint("BOTTOMRIGHT", -200, 0)
        f.Bg:SetTexture("Interface\\DressUpFrame\\DressUpBackground-Mage"); f.Bg:SetVertexColor(0.4, 0.4, 0.4)
    end

    f.Title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge"); f.Title:SetPoint("TOP", -100, -10); f.Title:SetText("Upgrade Roadmap"); f.Title:SetTextColor(1, 0.82, 0)
    
    local smartBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); smartBtn:SetSize(140, 26)
    smartBtn:SetPoint("TOP", f.Title, "BOTTOM", 0, -8); smartBtn:SetText("Calculate Roadmap")
    smartBtn:SetFrameStrata("HIGH"); smartBtn:SetFrameLevel(100)
    smartBtn:SetScript("OnClick", function() Roadmap:PerformSmartScan() end)
    smartBtn:SetScript("OnEnter", function(self) GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetText("Calculate Roadmap"); GameTooltip:AddLine("Scans ALL dungeons to find your best path.", 1, 1, 1); GameTooltip:AddLine("Updates the leaderboard on the right.", 0, 1, 0); GameTooltip:Show() end)
    smartBtn:SetScript("OnLeave", GameTooltip_Hide)

    -- RESET BUTTON
    local resetBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); resetBtn:SetSize(30, 26)
    resetBtn:SetPoint("LEFT", smartBtn, "RIGHT", 5, 0); resetBtn:SetText("R")
    resetBtn:SetFrameStrata("HIGH"); resetBtn:SetFrameLevel(200) 
    resetBtn:SetScript("OnClick", function() 
        Roadmap:ResetVirtualGear()
        Roadmap.ScanResults = {} 
        Roadmap.SelectedZone = nil
        Roadmap:RefreshUI()
        print("SGJ: Roadmap & Chain Mode Hard Reset.") 
    end)
    resetBtn:SetScript("OnEnter", function(self) GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetText("Reset All"); GameTooltip:AddLine("Clears chain progress and resets to current gear.", 1, 1, 1); GameTooltip:Show() end)
    resetBtn:SetScript("OnLeave", GameTooltip_Hide)

    -- EXPORT BUTTON
    local exportBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); exportBtn:SetSize(60, 26)
    exportBtn:SetPoint("LEFT", resetBtn, "RIGHT", 5, 0); exportBtn:SetText("Export")
    exportBtn:SetFrameStrata("HIGH"); exportBtn:SetFrameLevel(200)
    exportBtn:SetScript("OnClick", function() Roadmap:ShowExportPopup() end)
    exportBtn:SetScript("OnEnter", function(self) GameTooltip:SetOwner(self, "ANCHOR_RIGHT"); GameTooltip:SetText("Export to Lab"); GameTooltip:AddLine("Copy current set to clipboard for use in The Lab.", 1, 1, 1); GameTooltip:Show() end)
    exportBtn:SetScript("OnLeave", GameTooltip_Hide)

    local heroicCheck = CreateFrame("CheckButton", "SGJ_RoadmapHeroicCheck", f, "ChatConfigCheckButtonTemplate")
    heroicCheck:SetPoint("BOTTOMLEFT", 20, 20); heroicCheck:SetChecked(Roadmap.ShowHeroic)
    heroicCheck:SetFrameStrata("HIGH"); heroicCheck:SetFrameLevel(100); SetCheckLabel(heroicCheck, "Heroic Only") 
    heroicCheck:SetScript("OnClick", function(self) Roadmap.ShowHeroic = self:GetChecked(); Roadmap.ZoneRankings = {}; Roadmap:UpdateSidebar() end)

    local lvlCheck = CreateFrame("CheckButton", "SGJ_RoadmapLevelFilter", f, "ChatConfigCheckButtonTemplate")
    lvlCheck:SetPoint("BOTTOMLEFT", 20, 50); 
    lvlCheck:SetChecked(Roadmap.UseLevelFilter)
    lvlCheck:SetFrameStrata("HIGH"); lvlCheck:SetFrameLevel(100); SetCheckLabel(lvlCheck, "Filter Level") 
    lvlCheck:SetScript("OnClick", function(self) Roadmap.UseLevelFilter = self:GetChecked(); end)

    local chainCheck = CreateFrame("CheckButton", "SGJ_RoadmapChainCheck", f, "ChatConfigCheckButtonTemplate")
    -- [[ FIX: YOUR CUSTOM PLACEMENT ]]
    chainCheck:SetPoint("BOTTOMRIGHT", -150, 30); 
    chainCheck:SetChecked(Roadmap.ChainMode)
    chainCheck:SetFrameStrata("HIGH"); chainCheck:SetFrameLevel(100); SetCheckLabel(chainCheck, "Chain Mode") 
    chainCheck:SetScript("OnClick", function(self) 
        Roadmap.ChainMode = self:GetChecked(); 
        if Roadmap.ChainMode then 
            Roadmap:InitializeVirtualGear() 
            print("SGJ: Chain Mode ON. Click dungeons to build your set.")
        else
            print("SGJ: Chain Mode OFF.")
        end
    end)
    chainCheck:SetScript("OnEnter", function(self) GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT"); GameTooltip:SetText("Chain Mode"); GameTooltip:AddLine("If enabled, clicking a dungeon 'equips' the upgrades virtually.", 1, 1, 1); GameTooltip:AddLine("The next dungeon will compare against this new virtual set.", 0, 1, 0); GameTooltip:Show() end)
    chainCheck:SetScript("OnLeave", GameTooltip_Hide)

    f.ProfileText = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall"); f.ProfileText:SetPoint("BOTTOM", -100, 5); f.ProfileText:SetText("Active Profile: None"); f.ProfileText:SetTextColor(0.6, 0.6, 0.6)

    local _, playerClass = UnitClass("player")
    local relicTexture = "Relic"
    if playerClass == "SHAMAN" then relicTexture = "Totem" elseif playerClass == "PALADIN" then relicTexture = "Libram" elseif playerClass == "DRUID" then relicTexture = "Relic" elseif playerClass == "DEATHKNIGHT" then relicTexture = "Sigil" end

    f.Slots = {}
    for _, s in ipairs(SLOTS) do
        local btn = CreateFrame("Button", nil, f, "ItemButtonTemplate"); btn:SetSize(37, 37); btn:SetPoint("CENTER", s.x, s.y)
        btn:SetFrameStrata("HIGH"); btn:SetFrameLevel(100)
        local bg = btn:CreateTexture(nil, "BACKGROUND", nil, -1); bg:SetAllPoints()
        local texName = s.texture
        if s.id == 18 and (playerClass == "SHAMAN" or playerClass == "PALADIN" or playerClass == "DRUID" or playerClass == "DEATHKNIGHT") then texName = relicTexture end
        bg:SetTexture("Interface\\Paperdoll\\UI-PaperDoll-Slot-" .. texName); btn.Background = bg
        local up = btn:CreateTexture(nil, "OVERLAY"); up:SetSize(24, 24); up:SetPoint("CENTER", 0, 0); up:SetTexture("Interface\\AddOns\\SharpiesGearJudge\\Textures\\Upgrade.png"); up:Hide(); btn.UpgradeIcon = up
        local ag = up:CreateAnimationGroup(); local a1 = ag:CreateAnimation("Alpha"); a1:SetFromAlpha(0.5); a1:SetToAlpha(1.0); a1:SetDuration(0.8); a1:SetSmoothing("IN_OUT"); a1:SetOrder(1); local a2 = ag:CreateAnimation("Alpha"); a2:SetFromAlpha(1.0); a2:SetToAlpha(0.5); a2:SetDuration(0.8); a2:SetSmoothing("IN_OUT"); a2:SetOrder(2); ag:SetLooping("REPEAT"); btn.Anim = ag
        btn.SlotID = s.id; btn.SlotName = s.name
        btn:RegisterForClicks("AnyUp")
        btn:SetScript("OnClick", Roadmap.OnSlotClick); btn:SetScript("OnEnter", Roadmap.OnSlotEnter); btn:SetScript("OnLeave", GameTooltip_Hide)
        f.Slots[s.id] = btn
    end

    Roadmap:InitSidebar(f)

    f:SetScript("OnShow", function() 
        if f.Model then f.Model:SetUnit("player") end; 
        local weights, specName = SGJ.GetCurrentWeights(); 
        if not weights and SGJ.CurrentClass and SGJ.CurrentClass.Weights then specName = next(SGJ.CurrentClass.Weights) end; 
        if specName then 
            local prettyName = Roadmap:GetPrettyName(specName)
            f.ProfileText:SetText("Active Profile: |cff00ff00" .. prettyName .. "|r") 
        end; 
        Roadmap:InitializeVirtualGear() 
        Roadmap:RefreshUI() 
    end)
    
    f:RegisterEvent("GET_ITEM_INFO_RECEIVED")
    f:SetScript("OnEvent", function(self, event, itemID) end)
    SGJ.ViewRoadmap = f
end

-- =============================================================
-- 3.5 THE ROADMAP SIDEBAR
-- =============================================================
function Roadmap:InitSidebar(parent)
    local sb = CreateFrame("Frame", nil, parent, "BackdropTemplate")
    sb:SetPoint("TOPRIGHT", 0, -20)
    sb:SetPoint("BOTTOMRIGHT", 0, 0)
    sb:SetWidth(190)
    sb:SetBackdrop(nil)
    
    local title = sb:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    title:SetPoint("TOP", 0, -10)
    title:SetText("Dungeon Leaderboard")
    
    local sub = sb:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    sub:SetPoint("TOP", 0, -25)
    sub:SetText("(Click to View)")
    sub:SetTextColor(0.6, 0.6, 0.6)
    
    local scroll = CreateFrame("ScrollFrame", "SGJ_RoadmapScroll", sb, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 10, -45)
    scroll:SetPoint("BOTTOMRIGHT", -30, 10)
    
    local content = CreateFrame("Frame", nil, scroll)
    content:SetSize(150, 400)
    scroll:SetScrollChild(content)
    
    Roadmap.Sidebar = { Frame = sb, Content = content, Rows = {} }
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
            row:SetSize(150, 30) 
            row:SetFrameLevel(content:GetFrameLevel() + 10)
            
            row.Icon = row:CreateTexture(nil, "OVERLAY")
            row.Icon:SetSize(24, 24)
            row.Icon:SetPoint("LEFT", 0, 0)
            
            row.Text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
            row.Text:SetPoint("LEFT", 28, 0) 
            row.Text:SetWidth(85); row.Text:SetJustifyH("LEFT")
            
            row.Score = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
            row.Score:SetPoint("RIGHT", -5, 0)
            
            row:RegisterForClicks("AnyUp")
            
            row:SetScript("OnEnter", function(self) 
                self.Text:SetTextColor(1,1,1)
                if self.TopItems then
                    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                    GameTooltip:SetText(self.ZoneName)
                    GameTooltip:AddLine("Top Upgrades:", 1, 1, 1)
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
                
                print("SGJ: Viewing " .. (self.ZoneName or "Zone") .. "...")
                
                Roadmap.SelectedZone = self.ZoneKey
                Roadmap.ScanResults = {}; 
                Roadmap:ScanZoneData(Roadmap.SelectedZone, Roadmap.UseLevelFilter); 
                Roadmap:FinalizeScan()
                
                if Roadmap.ChainMode then
                    Roadmap:ApplyBestUpgradesToVirtual()
                    Roadmap:RefreshUI() 
                    print("SGJ Chain: Virtual Gear Updated.")
                end
            end)
            
            table.insert(Roadmap.Sidebar.Rows, row)
        end
        
        row.ZoneKey = entry.key
        row.ZoneName = entry.name
        row.TopItems = entry.topItems 
        
        row:SetPoint("TOPLEFT", 0, y)
        row.Text:SetText(i..". " .. entry.name)
        row.Score:SetText("+"..string.format("%.1f", entry.score))
        
        if entry.bestLink then
            row.Icon:SetTexture(GetItemIcon(entry.bestLink))
        else
            row.Icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
        end
        
        row:Show()
        y = y - 30 
    end
    
    content:SetHeight(math.abs(y))
end

-- =============================================================
-- 4. UTILITIES & CHAIN MODE LOGIC
-- =============================================================
function Roadmap:InitializeVirtualGear()
    if not next(Roadmap.VirtualGear) then
        for i=1, 18 do 
            Roadmap.VirtualGear[i] = GetInventoryItemLink("player", i) 
        end
    end
end

function Roadmap:ResetVirtualGear()
    Roadmap.VirtualGear = {}
    for i=1, 18 do 
        Roadmap.VirtualGear[i] = GetInventoryItemLink("player", i) 
    end
    Roadmap:RefreshUI()
end

function Roadmap:GetBaselineItem(slotID)
    if Roadmap.ChainMode then
        return Roadmap.VirtualGear[slotID]
    end
    return GetInventoryItemLink("player", slotID)
end

function Roadmap:ApplyBestUpgradesToVirtual()
    for slotID, list in pairs(Roadmap.ScanResults) do
        local idx = Roadmap.BestIndices[slotID] or 1 
        if idx > 0 and list[idx] then
            local bestItem = list[idx]
            
            if bestItem.gain > 0 then
                Roadmap.VirtualGear[slotID] = bestItem.link
                
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

function Roadmap:SaveHistory() if SharpiesGearJudgeDB then SharpiesGearJudgeDB.RoadmapData = Roadmap.ScanResults end end
function Roadmap:LoadHistory() 
    if SharpiesGearJudgeDB and SharpiesGearJudgeDB.RoadmapData then 
        Roadmap.ScanResults = SharpiesGearJudgeDB.RoadmapData 
        Roadmap:ResolveConflicts()
    end 
end

function Roadmap:GetPrettyName(specKey)
    if not specKey then return "Unknown" end
    if SGJ.PrettyNames and SGJ.PrettyNames[specKey] then return SGJ.PrettyNames[specKey] end
    if SGJ.CurrentClass and SGJ.CurrentClass.PrettyNames and SGJ.CurrentClass.PrettyNames[specKey] then return SGJ.CurrentClass.PrettyNames[specKey] end
    return specKey 
end

function Roadmap:GetSlotFromLoc(equipLoc)
    if not equipLoc then return nil end
    local map = { INVTYPE_HEAD=1, INVTYPE_NECK=2, INVTYPE_SHOULDER=3, INVTYPE_BODY=4, INVTYPE_CHEST=5, INVTYPE_ROBE=5, INVTYPE_WAIST=6, INVTYPE_LEGS=7, INVTYPE_FEET=8, INVTYPE_WRIST=9, INVTYPE_HAND=10, INVTYPE_FINGER=11, INVTYPE_TRINKET=13, INVTYPE_CLOAK=15, INVTYPE_WEAPON=16, INVTYPE_SHIELD=17, INVTYPE_2HWEAPON=16, INVTYPE_WEAPONMAINHAND=16, INVTYPE_WEAPONOFFHAND=17, INVTYPE_HOLDABLE=17, INVTYPE_RANGED=18, INVTYPE_THROWN=18, INVTYPE_RELIC=18 }
    return map[equipLoc]
end

function Roadmap:CanDualWield()
    local _, class = UnitClass("player")
    local level = UnitLevel("player")
    if class == "ROGUE" or class == "HUNTER" then return true end
    if class == "WARRIOR" then return level >= 20 end
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

function Roadmap:IsStrictTwoHandSpec(specName)
    local _, class = UnitClass("player")
    if not specName then return false end
    if class == "WARRIOR" and (specName:find("Arms") or specName == "ARMS") then return true end
    if class == "PALADIN" and (specName:find("Retribution") or specName == "RETRIBUTION") then return true end
    return false
end


-- =============================================================
-- 5. MATH ENGINE (VISUAL PAIRING LOGIC)
-- =============================================================
function Roadmap:GetSimulationGains(itemLink, defaultSlotID, weights, specName, gapFillerMH, gapFillerOH)
    local results = {} 
    
    local slotsToCheck = { defaultSlotID }
    if defaultSlotID == 11 then table.insert(slotsToCheck, 12) 
    elseif defaultSlotID == 13 then table.insert(slotsToCheck, 14) 
    elseif defaultSlotID == 16 then 
        local _,_,_,_,_,_,_,_,equipLoc = GetItemInfo(itemLink)
        if equipLoc == "INVTYPE_WEAPON" and Roadmap:CanDualWield() then table.insert(slotsToCheck, 17) end 
    end

    local itemID = tonumber(itemLink:match("item:(%d+)"))

    for _, targetSlot in ipairs(slotsToCheck) do
        -- 1. BASELINE: GET GEAR (Virtual or Real)
        local gear = {}
        for i=1, 18 do 
            local raw = Roadmap:GetBaselineItem(i)
            if raw then gear[i] = raw end 
        end
        local baseScore = SGJ:GetTotalCharacterScore(gear, weights, specName)
        
        -- 2. CREATE SIM GEAR SET
        local simGear = {}
        for k,v in pairs(gear) do simGear[k] = v end 
        
        -- 3. EQUIP NEW ITEM (Raw Link)
        simGear[targetSlot] = itemLink
        
        local mh = simGear[16]
        local mhLoc = mh and select(9, GetItemInfo(mh))
        local mhIs2H = (mhLoc == "INVTYPE_2HWEAPON")

        local newItemLoc = select(9, GetItemInfo(itemLink))
        local newItemIs2H = (newItemLoc == "INVTYPE_2HWEAPON")
        
        local pairedItem = nil 

        -- [[ STRICT WEAPON SLOTTING + VISUAL COMBO ]]
        if targetSlot == 16 then
            if newItemIs2H then
                simGear[17] = nil -- 2H in Main, Offhand Must Clear
            else
                -- 1H in Main. If Offhand is empty (because we had 2H before), TRY TO FILL IT.
                if not simGear[17] and gapFillerOH and gapFillerOH ~= itemLink then
                    simGear[17] = gapFillerOH
                    pairedItem = gapFillerOH -- STORE THIS
                end
            end
        elseif targetSlot == 17 then
            if mhIs2H then
                -- Try to equip OH but have 2H in Main. Must drop 2H.
                -- Try to fill Main Hand with Context Candidate.
                if gapFillerMH and gapFillerMH ~= itemLink then
                    local _,_,_,_,_,_,_,_,fillLoc = GetItemInfo(gapFillerMH)
                    if fillLoc ~= "INVTYPE_2HWEAPON" then
                        simGear[16] = gapFillerMH
                        pairedItem = gapFillerMH -- STORE THIS
                    else
                        simGear[16] = nil -- Filler was 2H? Invalid.
                    end
                else
                    simGear[16] = nil -- No 1H available.
                end
            end
        end

        -- Unique Conflict Check
        local fMH = simGear[16]
        local fOH = simGear[17]
        if fMH and fOH then
            local idMH = tonumber(fMH:match("item:(%d+)"))
            local idOH = tonumber(fOH:match("item:(%d+)"))
            if idMH == idOH and Roadmap:IsUnique(fMH) then
                if targetSlot == 17 then simGear[16] = nil else simGear[17] = nil end
            end
        end

        -- 4. CALCULATE NEW SCORE (FULL SIM)
        local newScore = SGJ:GetTotalCharacterScore(simGear, weights, specName)
        local gain = newScore - baseScore
        
        -- [[ KEPT: YOUR FILTER (Hide Downgrades) ]]
        if gain > 0.1 then 
            results[targetSlot] = { gain = gain, pair = pairedItem } 
        end
    end
    
    return results
end

-- =============================================================
-- 6. UNIQUE & CONFLICT LOGIC (VISUAL ENFORCEMENT)
-- =============================================================
local scannerTip = CreateFrame("GameTooltip", "SGJ_RoadmapScanner", nil, "GameTooltipTemplate")
scannerTip:SetOwner(WorldFrame, "ANCHOR_NONE")

function Roadmap:IsUnique(link)
    if not link then return false end
    scannerTip:ClearLines()
    scannerTip:SetHyperlink(link)
    for i=1, scannerTip:NumLines() do
        local txt = _G["SGJ_RoadmapScannerTextLeft"..i]:GetText()
        if txt and (txt == ITEM_UNIQUE or txt == ITEM_UNIQUE_EQUIPPED or txt:find(ITEM_UNIQUE) or txt:find(ITEM_UNIQUE_EQUIPPED)) then
            return true
        end
    end
    return false
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
                -- DW Wins. Check if OH has a forced pair (Main Hand Filler)
                if bestOH and bestOH.pair then
                    Roadmap.ForcedPairs[16] = bestOH.pair
                else
                    Roadmap.BestIndices[16] = -1 
                end
            end
        end
    end
end

-- =============================================================
-- 7. SCAN ENGINE (RESTORED CONTEXT FINDER)
-- =============================================================
local currentWeights, currentSpec

local function SafeGetItemInfo(itemID)
    local name, link, rarity, lvl, minLvl, type, subType, stack, equipLoc, texture, sellPrice = GetItemInfo(itemID)
    if not name then
        GameTooltip:SetOwner(UIParent, "ANCHOR_NONE")
        GameTooltip:SetHyperlink("item:"..itemID)
        GameTooltip:Hide()
        return nil
    end
    return name, link, rarity, lvl, minLvl, type, subType, stack, equipLoc, texture, sellPrice
end

function Roadmap:FindBestZoneCandidates(lootTable, playerLvl, applySmartFilter)
    -- 1. BASELINE: USE CURRENT GEAR (Raw Links)
    local bestMH = Roadmap:GetBaselineItem(16)
    local bestOH = Roadmap:GetBaselineItem(17)
    
    -- If currently holding 2H, baseline "Candidate 1H" is nil.
    if bestMH then
        local _,_,_,_,_,_,_,_,loc = GetItemInfo(bestMH)
        if loc == "INVTYPE_2HWEAPON" then bestMH = nil end
    end
    
    local bestMHScore = 0
    if bestMH then 
        bestMHScore = SGJ:GetTotalCharacterScore({[16]=bestMH}, currentWeights, currentSpec)
    end

    local bestOHScore = 0
    if bestOH then 
        bestOHScore = SGJ:GetTotalCharacterScore({[17]=bestOH}, currentWeights, currentSpec)
    end
    
    -- 2. SCAN ZONE FOR BETTER CANDIDATES
    for itemID, info in pairs(lootTable) do
        local allowed = true
        if applySmartFilter and info.reqLevel and info.reqLevel > playerLvl then allowed = false end
        
        if allowed then
            local name, link = SafeGetItemInfo(itemID)
            if link and SGJ.IsItemUsable(link) then
                local _,_,_,_,_,_,_,_,equipLoc = GetItemInfo(link)
                
                -- Is this a better 1H Candidate?
                if equipLoc == "INVTYPE_WEAPON" or equipLoc == "INVTYPE_WEAPONMAINHAND" then
                    local s = SGJ:GetTotalCharacterScore({[16]=link}, currentWeights, currentSpec)
                    if s > bestMHScore then bestMHScore = s; bestMH = link end
                end
                
                -- Is this a better OH Candidate?
                if Roadmap:IsOffhandCandidate(link) then
                     local s = SGJ:GetTotalCharacterScore({[17]=link}, currentWeights, currentSpec)
                     if s > bestOHScore then bestOHScore = s; bestOH = link end
                end
            end
        end
    end
    
    return bestMH, bestOH
end


function Roadmap:ScanZoneData(zoneKey, applySmartFilter)
    local lootTable = SGJ.DungeonDB and SGJ.DungeonDB[zoneKey]
    if not lootTable and ns.DungeonDB then lootTable = ns.DungeonDB[zoneKey] end
    if not lootTable then print("SGJ Debug: No loot table found for " .. zoneKey); return end

    local playerLvl = UnitLevel("player")
    local weights, specName = SGJ.GetCurrentWeights()
    
    local zoneTotalScore = 0
    local zoneItems = {} -- [NEW] For Tooltip Summary
    
    if Roadmap.SelectedZone == zoneKey then
        Roadmap.ScanResults = {}
        Roadmap.MissingItems = {}
    end

    -- [[ 1. DETERMINE CONTEXT CANDIDATES ]]
    local fillMH, fillOH = nil, nil
    
    -- If spec allows combos (not strict 2H), find the best "partner" items in this zone
    if not Roadmap:IsStrictTwoHandSpec(specName) then
        fillMH, fillOH = Roadmap:FindBestZoneCandidates(lootTable, playerLvl, applySmartFilter)
    end

    -- [[ 2. RUN SIMULATION ]]
    for itemID, info in pairs(lootTable) do
        local allowed = true
        if applySmartFilter and info.reqLevel and info.reqLevel > playerLvl then allowed = false end

        if allowed then
             local name, link, _, _, _, _, _, _, equipLoc = SafeGetItemInfo(itemID)
             if link and SGJ.IsItemUsable(link) then
                  local defaultSlot = Roadmap:GetSlotFromLoc(equipLoc)
                  if defaultSlot then
                      -- Pass fillers to Sim Engine
                      local results = Roadmap:GetSimulationGains(link, defaultSlot, weights, specName, fillMH, fillOH)
                      
                      for slotID, res in pairs(results) do
                          local gain = res.gain
                          if gain > zoneTotalScore then zoneTotalScore = gain end 
                          
                          -- [NEW] Collect for Leaderboard Summary
                          table.insert(zoneItems, { link=link, gain=gain })
                          
                          if Roadmap.SelectedZone == zoneKey then
                              if not Roadmap.ScanResults[slotID] then Roadmap.ScanResults[slotID] = {} end
                              table.insert(Roadmap.ScanResults[slotID], { 
                                 link = link, 
                                 gain = gain, 
                                 pair = res.pair, -- STORE THE INVISIBLE ITEM
                                 boss = (info.source or "Zone Drop") .. " (" .. (ZONE_META[zoneKey] and ZONE_META[zoneKey].name or zoneKey) .. ")", 
                                 reqLevel = info.reqLevel 
                              })
                          end
                      end
                  end
             elseif not name and Roadmap.SelectedZone == zoneKey then
                 table.insert(Roadmap.MissingItems, itemID)
             end
        end
    end
    
    -- [NEW] Calculate Leaderboard Data
    table.sort(zoneItems, function(a,b) return a.gain > b.gain end)
    local topItems = {}
    for i=1, 3 do if zoneItems[i] then table.insert(topItems, zoneItems[i]) end end
    
    -- [NEW] Return the #1 Item for the Icon
    local bestLink = (zoneItems[1] and zoneItems[1].link)
    
    return zoneTotalScore, bestLink, topItems
end

function Roadmap:FinalizeScan()
    for slotID, list in pairs(Roadmap.ScanResults) do
        table.sort(list, function(a,b) return a.gain > b.gain end)
    end
    Roadmap:ResolveConflicts()
    Roadmap:SaveHistory()
    Roadmap:RefreshUI()
    
    if #Roadmap.MissingItems > 0 then
        print("SGJ: Scan Complete. " .. #Roadmap.MissingItems .. " items were queued for server retrieval. Please scan again in a moment.")
    end
end

-- =============================================================
-- 8. INTERACTION (UPDATED VISUALS)
-- =============================================================
function Roadmap:PerformSmartScan()
    local weights, specName = SGJ.GetCurrentWeights()
    if not weights and SGJ.CurrentClass and SGJ.CurrentClass.Weights then specName = next(SGJ.CurrentClass.Weights) end
    if not weights then print("SGJ: No Stat Profile Found!"); return end
    
    currentWeights = weights; currentSpec = specName
    if SGJ.ViewRoadmap.ProfileText then 
        local prettyName = Roadmap:GetPrettyName(specName)
        SGJ.ViewRoadmap.ProfileText:SetText("Active Profile: |cff00ff00" .. prettyName .. "|r") 
    end

    print("SGJ: Smart Scanning (" .. (Roadmap.ShowHeroic and "Heroic" or "Normal") .. ")...")
    
    Roadmap.ZoneRankings = {}
    local playerLvl = UnitLevel("player"); local zonesScanned = 0
    
    for zoneKey, meta in pairs(ZONE_META) do
        if (SGJ.DungeonDB and SGJ.DungeonDB[zoneKey]) or (ns.DungeonDB and ns.DungeonDB[zoneKey]) then
            local isHeroicKey = string.find(zoneKey, "_HC")
            local modeMatch = false
            if Roadmap.ShowHeroic and isHeroicKey then modeMatch = true end
            if not Roadmap.ShowHeroic and not isHeroicKey then modeMatch = true end
            
            local levelMatch = true
            if Roadmap.UseLevelFilter and meta.min > playerLvl then levelMatch = false end

            if modeMatch and levelMatch then
                -- [NEW] Capture Icon & Top Items
                local score, bestLink, topItems = Roadmap:ScanZoneData(zoneKey, Roadmap.UseLevelFilter)
                if score and score > 0 then
                    table.insert(Roadmap.ZoneRankings, { 
                        key=zoneKey, 
                        name=meta.name, 
                        score=score, 
                        bestLink=bestLink, 
                        topItems=topItems 
                    })
                end
                zonesScanned = zonesScanned + 1
            end
        end
    end
    
    Roadmap:UpdateSidebar() 
    print("SGJ: Checked " .. zonesScanned .. " dungeons. Leaderboard updated.")
end

function Roadmap:RefreshUI()
    local f = SGJ.ViewRoadmap
    if not f then return end
    if f.Model then f.Model:Undress(); f.Model:SetUnit("player") end
    
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
                btn.FilteredItems = {{ link=link, gain=0, boss="Equipped / Chain", pair=nil }}
            else 
                SetItemButtonTexture(btn, nil)
                btn.Background:Show() 
            end
            
            -- [[ CHECK FOR UPGRADES ]]
            local list = Roadmap.ScanResults[id]
            if list and #list > 0 then
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
                        if f.Model then f.Model:TryOn(bestEntry.link) end
                    end
                end
            end
            
            -- [[ FORCE PAIR (Dual Wield) ]]
            if Roadmap.ForcedPairs[id] then
                local pLink = Roadmap.ForcedPairs[id]
                SetItemButtonTexture(btn, GetItemIcon(pLink))
                btn.icon:SetDesaturated(false); btn.icon:SetVertexColor(1, 1, 1)
                btn.FilteredItems = {{ link=pLink, gain=0, boss="Context Item", pair=nil }} 
                if f.Model then f.Model:TryOn(pLink) end
            end
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
        f.Title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge"); f.Title:SetPoint("TOP", 0, -10); f.Title:SetText("Export to The Lab")
        local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate"); scroll:SetPoint("TOPLEFT", 20, -40); scroll:SetPoint("BOTTOMRIGHT", -40, 40)
        local eb = CreateFrame("EditBox", nil, scroll); eb:SetSize(340, 200); eb:SetMultiLine(true); eb:SetFontObject("GameFontHighlight"); eb:SetAutoFocus(false); scroll:SetScrollChild(eb); f.EditBox = eb
        local close = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); close:SetSize(80, 22); close:SetPoint("BOTTOM", 0, 10); close:SetText("Close"); close:SetScript("OnClick", function() f:Hide() end)
        Roadmap.ExportFrame = f
    end
    local s = Roadmap:GenerateExportString()
    Roadmap.ExportFrame.EditBox:SetText(s)
    Roadmap.ExportFrame.EditBox:HighlightText()
    Roadmap.ExportFrame:Show()
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
        Roadmap.Popup:SetScript("OnLeave", function() if not MouseIsOver(Roadmap.Popup) then Roadmap.Popup:Hide() end end)
        Roadmap.Popup.Header = Roadmap.Popup:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall"); Roadmap.Popup.Header:SetPoint("TOPLEFT", 5, -5); Roadmap.Popup.Header:SetText("Top Upgrades (Shift: Link)"); Roadmap.Popup.Header:SetTextColor(0.6, 0.6, 0.6)
        Roadmap.Popup.Rows = {}
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
    if self.FilteredItems then
        local idx = self.DisplayIndex or 1
        local best = self.FilteredItems[idx]
        if not best then best = self.FilteredItems[1] end 
        
        GameTooltip:AddLine("Upgrades Available!", 0, 1, 0); GameTooltip:AddLine("Recommended: " .. best.link, 1, 1, 1)
        if best.pair then GameTooltip:AddLine("With: " .. best.pair, 0.6, 0.6, 1) end
        GameTooltip:AddLine("Source: |cffffffff" .. (best.boss or "Unknown") .. "|r", 1, 0.82, 0)
        if best.reqLevel then local color = (UnitLevel("player") >= best.reqLevel) and "|cff00ff00" or "|cffff0000"; GameTooltip:AddLine("Req Level: " .. color .. best.reqLevel .. "|r", 1, 1, 1) end
        if best.gain > 0 then GameTooltip:AddLine("Score Gain: " .. string.format("+%.1f", best.gain), 0, 1, 0)
        else GameTooltip:AddLine("Score Change: " .. string.format("%.1f", best.gain), 1, 0, 0) end
        if idx > 1 then GameTooltip:AddLine("(|cffff0000Note:|r Better item used in other slot)", 1, 1, 1, true) end
        if SGJ.ViewRoadmap.Model then SGJ.ViewRoadmap.Model:TryOn(best.link) end
    else GameTooltip:SetText(self.SlotName) end
    GameTooltip:Show()
end

if SGJ.RegisterPluginTab then SGJ.RegisterPluginTab("Roadmap", "Interface\\Icons\\INV_Misc_Map_01", Roadmap.InitView, "ViewRoadmap", nil) end