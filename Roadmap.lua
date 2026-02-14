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

-- [[ OPTIMIZATION: Localize Globals for Speed ]]
local ipairs, pairs, next, tonumber = ipairs, pairs, next, tonumber
local table_insert, table_sort, table_wipe = table.insert, table.sort, table.wipe
local GetItemInfo = GetItemInfo
local GetInventoryItemLink = GetInventoryItemLink
local GetItemIcon = GetItemIcon
local SetItemButtonTexture = SetItemButtonTexture

-- [[ OPTIMIZATION: Recyclable Tables ]]
local Scratch_SimGear = {} 
local UniqueCache = {}

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

    f.HelpText = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    f.HelpText:SetPoint("TOP", f.Title, "BOTTOM", 0, -5)
    f.HelpText:SetText("(Left-Click Slot: View | Right-Click Slot: Ignore)")
    f.HelpText:SetTextColor(0.6, 0.6, 0.6)
    
    -- CALCULATE BUTTON (Shifted left to center the group)
    local smartBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); smartBtn:SetSize(140, 26)
    smartBtn:SetPoint("TOP", f.HelpText, "BOTTOM", -50, -5); 
    smartBtn:SetText("Calculate Roadmap")
    smartBtn:SetFrameStrata("HIGH"); smartBtn:SetFrameLevel(100)
    smartBtn:SetScript("OnClick", function() Roadmap:PerformSmartScan() end)

    smartBtn:SetScript("OnEnter", function(self) 
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText("Calculate Roadmap")
        GameTooltip:AddLine("Scans all dungeons to find upgrades.", 1, 1, 1)
        GameTooltip:Show() 
    end)
    smartBtn:SetScript("OnLeave", GameTooltip_Hide)

    -- [[ Progress Bar ]]
    f.ProgressBar = CreateFrame("StatusBar", nil, f)
    f.ProgressBar:SetSize(200, 15)
    f.ProgressBar:SetPoint("BOTTOM", -50, 280)
    f.ProgressBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    f.ProgressBar:GetStatusBarTexture():SetHorizTile(false)
    f.ProgressBar:SetMinMaxValues(0, 100)
    f.ProgressBar:SetValue(0)
    f.ProgressBar:SetStatusBarColor(0, 1, 0)
    f.ProgressBar:Hide()
    
    f.ProgressBar.Bg = f.ProgressBar:CreateTexture(nil, "OVERLAY")
    f.ProgressBar.Bg:SetAllPoints(true)
    f.ProgressBar.Bg:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
    f.ProgressBar.Bg:SetVertexColor(0.2, 0.2, 0.2, 0.5)

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
	lvlCheck:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
        GameTooltip:SetText("Filter by Level")
        GameTooltip:AddLine("If checked, the roadmap will ignore items", 1, 1, 1)
        GameTooltip:AddLine("that require a higher level than you are.", 1, 1, 1)
        GameTooltip:Show()
    end)
    lvlCheck:SetScript("OnLeave", GameTooltip_Hide)

    local chainCheck = CreateFrame("CheckButton", "SGJ_RoadmapChainCheck", f, "ChatConfigCheckButtonTemplate")
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

    -- [[ STANDARD PROFILE DROPDOWN UI ]]
    local dropDown = CreateFrame("Frame", "SGJ_RoadmapProfileDropDown", f, "UIDropDownMenuTemplate")
    -- Anchored to 'smartBtn' (Calculate button) but shifted right +50 to center under the button group
    dropDown:SetPoint("TOP", smartBtn, "BOTTOM", 50, -10)
    UIDropDownMenu_SetWidth(dropDown, 180) 
    
    UIDropDownMenu_Initialize(dropDown, function(self, level)
        Roadmap:InitDropDownMenu(self, level)
    end)
    
    f.ProfileDropDown = dropDown

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
		btn:SetScript("OnClick", function(self, button)
		if button == "RightButton" then
        -- Toggle the ignore status
        Roadmap.IgnoredSlots[self.SlotID] = not Roadmap.IgnoredSlots[self.SlotID]
			if Roadmap.IgnoredSlots[self.SlotID] then
				-- Visual: Dim the slot to show it is disabled
				self.icon:SetVertexColor(0.3, 0.3, 0.3) 
				print("SGJ: Ignoring " .. self.SlotName .. ".")
			else
				-- Visual: Restore color
				self.icon:SetVertexColor(1, 1, 1)
				print("SGJ: Tracking " .. self.SlotName .. ".")
			end
			-- Force a refresh so the scanner knows immediately (optional, but good)
			Roadmap:RefreshUI()
			else
				-- If Left-Click, do the normal thing (Show Upgrades)
				Roadmap.OnSlotClick(self)
			end
		end)

		btn:SetScript("OnEnter", function(self) Roadmap.OnSlotEnter(self) end)
		btn:SetScript("OnLeave", GameTooltip_Hide)
		
		f.Slots[s.id] = btn
	end
	
    Roadmap:InitSidebar(f)

    f:SetScript("OnShow", function() 
        if f.Model then f.Model:SetUnit("player") end; 
        Roadmap:RefreshProfileDisplay() -- Updates the DropDown Text
        Roadmap:InitializeVirtualGear() 
        Roadmap:RefreshUI() 
    end)
    
    f:RegisterEvent("GET_ITEM_INFO_RECEIVED")
    f:SetScript("OnEvent", function(self, event, itemID) end)
    SGJ.ViewRoadmap = f
end

-- =============================================================
-- 3.5 THE ROADMAP SIDEBAR & PROFILE HELPERS
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
-- 4. UTILITIES & MATH (PROFILE SUPPORT)
-- =============================================================
function Roadmap:GetActiveProfile()
    if Roadmap.OverrideSpec and SGJ.CurrentClass then
        -- 1. Check Standard Weights
        if SGJ.CurrentClass.Weights and SGJ.CurrentClass.Weights[Roadmap.OverrideSpec] then
            return SGJ.CurrentClass.Weights[Roadmap.OverrideSpec], Roadmap.OverrideSpec
        end
        -- 2. Check Leveling Brackets
        if SGJ.CurrentClass.LevelingBrackets and SGJ.CurrentClass.LevelingBrackets[Roadmap.OverrideSpec] then
            return SGJ.CurrentClass.LevelingBrackets[Roadmap.OverrideSpec], Roadmap.OverrideSpec
        end
    end
    return SGJ.GetCurrentWeights()
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
    info.text = "Auto (" .. (Roadmap:GetPrettyName(currentSpec) or "Unknown") .. ")"
    info.value = nil
    info.checked = (Roadmap.OverrideSpec == nil)
    info.func = function()
        Roadmap.OverrideSpec = nil
        Roadmap:RefreshProfileDisplay()
        print("SGJ: Profile set to Auto. Recalculating...")
        Roadmap:PerformSmartScan() 
    end
    UIDropDownMenu_AddButton(info, level)
    
    -- Options: Profiles
    if #list == 0 then
        info = UIDropDownMenu_CreateInfo()
        info.text = "(No Profiles Found)"
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
            print("SGJ: Profile set to " .. entry.name .. ". Recalculating...")
            Roadmap:PerformSmartScan() 
        end
        UIDropDownMenu_AddButton(info, level)
    end
end

function Roadmap:RefreshProfileDisplay()
    local dd = SGJ.ViewRoadmap.ProfileDropDown
    if not dd then return end
    
    if Roadmap.OverrideSpec then
        UIDropDownMenu_SetText(dd, "Profile: " .. Roadmap:GetPrettyName(Roadmap.OverrideSpec))
    else
        local _, name = SGJ.GetCurrentWeights()
        UIDropDownMenu_SetText(dd, "Profile: " .. Roadmap:GetPrettyName(name) .. " (Auto)")
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
    return tostring(specKey) 
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
        local txt = _G["SGJ_RoadmapScannerTextLeft"..i]:GetText()
        if txt and (txt == ITEM_UNIQUE or txt == ITEM_UNIQUE_EQUIPPED or txt:find(ITEM_UNIQUE) or txt:find(ITEM_UNIQUE_EQUIPPED)) then
            if itemID then UniqueCache[itemID] = true end
            return true
        end
    end
    if itemID then UniqueCache[itemID] = false end
    return false
end

-- [[ OPTIMIZATION: Global Caps Access ]]
function Roadmap:GetAdjustedScore(gearTable, weights, specName)
    local score, stats = SGJ:GetTotalCharacterScore(gearTable, weights, specName)
    local _, playerClass = UnitClass("player")
    local safetyCaps = SGJ.SAFETY_CAPS or {} 

    if safetyCaps[playerClass] then
        for _, rule in ipairs(safetyCaps[playerClass]) do
            local currentVal = 0
            if rule.stat == "DEFENSE_FLOOR" then 
                 local b, m = UnitDefense("player"); currentVal = b + m
            else
                 currentVal = SGJ:GetPlayerStat(rule.stat == "ITEM_MOD_HIT_RATING_SHORT" and "HIT" or "SPELL_HIT")
            end

            local realGearVal = Roadmap.RealGearStats[rule.stat] or 0
            local proposedGearVal = stats[rule.stat] or 0
            
            if rule.stat == "DEFENSE_FLOOR" and SGJ.IsTBC then
                 realGearVal = (Roadmap.RealGearStats["ITEM_MOD_DEFENSE_SKILL_RATING_SHORT"] or 0) / 2.36
                 proposedGearVal = (stats["ITEM_MOD_DEFENSE_SKILL_RATING_SHORT"] or 0) / 2.36
            end

            local futureVal = currentVal - realGearVal + proposedGearVal
            local trueCap = rule.base
            if rule.talent then trueCap = trueCap - (SGJ:GetTalentRank(rule.talent) * (rule.tVal or 0)) end
            
            local isCurrentlyCapped = (currentVal >= trueCap)
            if isCurrentlyCapped and futureVal < (trueCap - 0.1) then
                score = score - rule.penalty
            end
        end
    end
    return score
end

-- [[ OPTIMIZATION: Scratch Table Recycling ]]
function Roadmap:GetSimulationGains(itemLink, defaultSlotID, weights, specName, gapFillerMH, gapFillerOH, baseGear, baseScore)
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
        -- Wipe and Rebuild Scratch Table
        table_wipe(Scratch_SimGear)
        for k,v in pairs(baseGear) do Scratch_SimGear[k] = v end
        Scratch_SimGear[targetSlot] = itemLink
        
        local mh = Scratch_SimGear[16]
        local mhLoc = mh and select(9, GetItemInfo(mh))
        local mhIs2H = (mhLoc == "INVTYPE_2HWEAPON")
        local newItemLoc = select(9, GetItemInfo(itemLink))
        local newItemIs2H = (newItemLoc == "INVTYPE_2HWEAPON")
        local pairedItem = nil 

        if targetSlot == 16 then
            if newItemIs2H then
                Scratch_SimGear[17] = nil 
            else
                if not Scratch_SimGear[17] and gapFillerOH and gapFillerOH ~= itemLink then
                    Scratch_SimGear[17] = gapFillerOH; pairedItem = gapFillerOH 
                end
            end
        elseif targetSlot == 17 then
            if mhIs2H then
                if gapFillerMH and gapFillerMH ~= itemLink then
                    local _,_,_,_,_,_,_,_,fillLoc = GetItemInfo(gapFillerMH)
                    if fillLoc ~= "INVTYPE_2HWEAPON" then
                        Scratch_SimGear[16] = gapFillerMH; pairedItem = gapFillerMH 
                    else
                        Scratch_SimGear[16] = nil 
                    end
                else
                    Scratch_SimGear[16] = nil 
                end
            end
        end

        -- [[ STRICT UNIQUENESS CHECK (Rings, Trinkets, Weapons) ]]
        local slotPairs = { [11]=12, [12]=11, [13]=14, [14]=13, [16]=17, [17]=16 }
        local partner = slotPairs[targetSlot]
        
        if partner and Scratch_SimGear[partner] then
             local pLink = Scratch_SimGear[partner]
             local pID = tonumber(pLink:match("item:(%d+)"))
             
             if newItemID and pID and newItemID == pID and Roadmap:IsUnique(itemLink) then
                 -- CONFLICT: Cannot wear the same Unique item in both slots.
                 -- Solution: Remove the item from the partner slot to simulate a valid swap.
                 Scratch_SimGear[partner] = nil
             end
        end

        local newScore = Roadmap:GetAdjustedScore(Scratch_SimGear, weights, specName)
        local gain = newScore - baseScore
        
        if gain > 0.1 then 
            results[targetSlot] = { gain = gain, pair = pairedItem } 
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
-- 5. THE SCANNER (Coroutines & Merged Loops)
-- =============================================================
local currentWeights, currentSpec, currentBaseGear, currentBaseScore

function Roadmap:PerformSmartScan()
    local weights, specName = Roadmap:GetActiveProfile() -- [NEW] Use Selected Profile
    if not weights then print("SGJ: No Stat Profile Found!"); return end
    
    currentWeights = weights
    currentSpec = specName
    Roadmap:UpdateRealGearCache()

    -- Pre-calculate Base Gear Once
    currentBaseGear = {}
    for i=1, 18 do currentBaseGear[i] = Roadmap:GetBaselineItem(i) end
    currentBaseScore = Roadmap:GetAdjustedScore(currentBaseGear, currentWeights, currentSpec)

    Roadmap:RefreshProfileDisplay()
    
    -- [[ OPTIMIZATION: Start Coroutine Scanner ]]
    Roadmap.ZoneRankings = {}
    if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:Show() end
    Roadmap:StartCoroutineScan()
end

function Roadmap:StartCoroutineScan()
    local playerLvl = UnitLevel("player")
    local zonesToScan = {}
    
    -- Build Queue
    for zoneKey, meta in pairs(ZONE_META) do
        if (SGJ.DungeonDB and SGJ.DungeonDB[zoneKey]) or (ns.DungeonDB and ns.DungeonDB[zoneKey]) then
            local isHeroicKey = string.find(zoneKey, "_HC")
            local modeMatch = (Roadmap.ShowHeroic and isHeroicKey) or (not Roadmap.ShowHeroic and not isHeroicKey)
            local levelMatch = (not Roadmap.UseLevelFilter) or (meta.min <= playerLvl)

            if modeMatch and levelMatch then
                table.insert(zonesToScan, {key=zoneKey, meta=meta})
            end
        end
    end
    
    local total = #zonesToScan
    local current = 0
    
    -- The Routine
    local co = coroutine.create(function()
        for _, zData in ipairs(zonesToScan) do
            current = current + 1
            if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:SetValue((current/total)*100) end
            
            -- Scan the Zone
            local score, bestLink, topItems = Roadmap:ScanZoneData(zData.key, Roadmap.UseLevelFilter)
            
            if score and score > 0 then
                table.insert(Roadmap.ZoneRankings, { 
                    key=zData.key, name=zData.meta.name, 
                    score=score, bestLink=bestLink, topItems=topItems 
                })
            end
            
            -- Yield every 2 zones to keep FPS smooth
            if current % 2 == 0 then coroutine.yield() end
        end
        
        -- Finish
        Roadmap:UpdateSidebar()
        if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:Hide() end
        print("SGJ: Checked " .. total .. " dungeons. Leaderboard updated.")
    end)
    
    -- The Ticker
    local ticker
    ticker = C_Timer.NewTicker(0.01, function()
        if coroutine.status(co) == "dead" then 
            ticker:Cancel() 
        else
            local ok, err = coroutine.resume(co)
            if not ok then 
                print("SGJ Error:", err)
                ticker:Cancel() 
                if SGJ.ViewRoadmap.ProgressBar then SGJ.ViewRoadmap.ProgressBar:Hide() end
            end
        end
    end)
end

function Roadmap:ScanZoneData(zoneKey, applySmartFilter)
    local lootTable = SGJ.DungeonDB and SGJ.DungeonDB[zoneKey]
    if not lootTable and ns.DungeonDB then lootTable = ns.DungeonDB[zoneKey] end
    if not lootTable then return end

    if not currentWeights then
        currentWeights, currentSpec = Roadmap:GetActiveProfile()
        currentBaseGear = {}
        for i=1, 18 do currentBaseGear[i] = Roadmap:GetBaselineItem(i) end
        currentBaseScore = Roadmap:GetAdjustedScore(currentBaseGear, currentWeights, currentSpec)
    end

    local playerLvl = UnitLevel("player")
    local zoneTotalScore = 0
    local zoneItems = {} 
    
    -- Reset Results for selected zone
    if Roadmap.SelectedZone == zoneKey then
        Roadmap.ScanResults = {}
        Roadmap.MissingItems = {}
    end

    -- [[ OPTIMIZATION: One Pass Loop ]]
    local candidates1H = {}
    local candidatesOH = {}
    local itemsToSim = {}

    for itemID, info in pairs(lootTable) do
        local allowed = true
        if applySmartFilter and info.reqLevel and info.reqLevel > playerLvl then allowed = false end
        
        if allowed then
             local _, link, _, _, _, _, _, _, equipLoc = GetItemInfo(itemID)
             if link then
                 if SGJ.IsItemUsable(link) then
                     -- 1. Sort Candidates
                     if equipLoc == "INVTYPE_WEAPON" or equipLoc == "INVTYPE_WEAPONMAINHAND" then table.insert(candidates1H, link) end
                     if Roadmap:IsOffhandCandidate(link) then table.insert(candidatesOH, link) end
                     table.insert(itemsToSim, {id=itemID, link=link, loc=equipLoc, info=info})
                 end
             elseif Roadmap.SelectedZone == zoneKey then
                 table.insert(Roadmap.MissingItems, itemID)
             end
        end
    end

    -- 2. Determine Gap Fillers (In Memory)
    local fillMH, fillOH = nil, nil
    if not Roadmap:IsStrictTwoHandSpec(currentSpec) then
        -- Find best MH from this zone's candidates
        local bestS = 0
        for _, link in ipairs(candidates1H) do
            local s = Roadmap:GetAdjustedScore({[16]=link}, currentWeights, currentSpec)
            if s > bestS then bestS = s; fillMH = link end
        end
        -- Find best OH
        bestS = 0
        for _, link in ipairs(candidatesOH) do
            local s = Roadmap:GetAdjustedScore({[17]=link}, currentWeights, currentSpec)
            if s > bestS then bestS = s; fillOH = link end
        end
    end
    
    -- 3. Batch Sim
    for _, data in ipairs(itemsToSim) do
        local defaultSlot = Roadmap:GetSlotFromLoc(data.loc)
        if defaultSlot and not Roadmap.IgnoredSlots[defaultSlot] then
            local results = Roadmap:GetSimulationGains(data.link, defaultSlot, currentWeights, currentSpec, fillMH, fillOH, currentBaseGear, currentBaseScore)
            
            for slotID, res in pairs(results) do
                if res.gain > zoneTotalScore then zoneTotalScore = res.gain end 
                table.insert(zoneItems, { link=data.link, gain=res.gain })
                
                if Roadmap.SelectedZone == zoneKey then
                    if not Roadmap.ScanResults[slotID] then Roadmap.ScanResults[slotID] = {} end
                    table.insert(Roadmap.ScanResults[slotID], { 
                        link = data.link, gain = res.gain, pair = res.pair, 
                        boss = (data.info.source or "Zone Drop") .. " (" .. (ZONE_META[zoneKey] and ZONE_META[zoneKey].name or zoneKey) .. ")", 
                        reqLevel = data.info.reqLevel 
                    })
                end
            end
        end
    end
    
    table_sort(zoneItems, function(a,b) return a.gain > b.gain end)
    local topItems = {}
    for i=1, 3 do if zoneItems[i] then table.insert(topItems, zoneItems[i]) end end
    
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
        -- Auto-retry logic
        print("|cff00ccffSGJ:|r Waiting for server data (" .. #Roadmap.MissingItems .. " items)... Retrying automatically.")
        C_Timer.After(1.0, function() 
             -- Only retry if the user hasn't closed the window or changed zones
             if SGJ.ViewRoadmap:IsShown() and Roadmap.SelectedZone then
                 Roadmap:ScanZoneData(Roadmap.SelectedZone, Roadmap.UseLevelFilter)
                 Roadmap:FinalizeScan()
             end
        end)
    else
        -- Only print "Scan Complete" if strictly needed, or just keep it silent/update UI
    end
end

-- =============================================================
-- [[ RESTORED UI REFRESH HELPER ]]
-- =============================================================
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
        
        -- CLOSE BUTTON
        local close = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); close:SetSize(80, 22); close:SetPoint("BOTTOM", 45, 10); close:SetText("Close"); 
        close:SetScript("OnClick", function() f:Hide() end)
        
        -- SELECT ALL BUTTON (The "Helper" Copy Button)
        local selectBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); selectBtn:SetSize(80, 22); selectBtn:SetPoint("RIGHT", close, "LEFT", -10, 0); selectBtn:SetText("Select All")
        selectBtn:SetScript("OnClick", function() 
            print("SGJ: Text selected. Press Ctrl+C to copy.")
			Roadmap.ExportFrame.EditBox:SetCursorPosition(0)
        end)
        
        Roadmap.ExportFrame = f
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
	if Roadmap.IgnoredSlots[self.SlotID] then
        GameTooltip:SetText(self.SlotName)
        GameTooltip:AddLine("|cffff0000(IGNORED)|r", 1, 0, 0)
        GameTooltip:AddLine("Right-click to re-enable scanning.", 1, 1, 1)
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
                GameTooltip:AddLine("|cff00ff00[Roadmap Upgrade]|r")
                GameTooltip:AddDoubleLine("Score Gain:", "+"..string.format("%.1f", best.gain), 1, 1, 1, 0, 1, 0)
                GameTooltip:AddDoubleLine("Source:", best.boss or "?", 1, 1, 1, 1, 0.82, 0)
                
                if best.pair then
                    GameTooltip:AddLine(" ")
                    GameTooltip:AddLine("Paired With: " .. best.pair, 0.6, 0.6, 1)
                end
                
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine("<Left-Click for Options>", 0.5, 0.5, 0.5)
            else
                -- It's the baseline/equipped item
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine("|cffaaaaaa[Current / Virtual]|r", 0.6, 0.6, 0.6)
            end
        else
            -- Fallback if link is missing
            GameTooltip:SetText(self.SlotName)
            GameTooltip:AddLine("Item data missing", 1, 0, 0)
        end

        if SGJ.ViewRoadmap.Model and best.link then SGJ.ViewRoadmap.Model:TryOn(best.link) end
    else 
        GameTooltip:SetText(self.SlotName) 
    end
    GameTooltip:Show()
end

if SGJ.RegisterPluginTab then SGJ.RegisterPluginTab("Roadmap", "Interface\\Icons\\INV_Misc_Map_01", Roadmap.InitView, "ViewRoadmap", nil) end