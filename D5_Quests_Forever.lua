local addonName, SGJ = ...

SGJ.DungeonDB = SGJ.DungeonDB or {}
SGJ.QuestDB = SGJ.QuestDB or {}
SGJ.ZoneMeta = SGJ.ZoneMeta or {}

-- ============================================================
-- WOW FOREVER QUEST REWARDS
-- Generated from foreverchanges.pro/quests (all zones, Forever beta) by
-- SharpiesGearJudge-Research/quests/gen_quests.py. Rerun it instead of editing by hand.
-- Only rewards you can equip are listed. side = only that faction can get it;
-- class = a class quest's reward. choice = the quest ID when the reward is
-- one of several to choose from (the Roadmap suggests at most one per quest).
-- World quests: rows keyed "<Zone> Quests"; SGJ.ZoneMeta gives each its level for the
-- Roadmap's level filter (the lowest required level of its rewards).
-- Dungeon quests: SGJ.QuestDB[<dungeon row>], merged into that dungeon's loot by
-- Roadmap.lua; raids without a loot row get a "<Name> Quests" row marked dungeon = true.
-- ============================================================

SGJ.ZoneMeta["Ahn'Qiraj Quests"] = { name = "Ahn'Qiraj Quests", min = 60, dungeon = true }
SGJ.DungeonDB["Ahn'Qiraj Quests"] = {
    [21389] = { name = "Avenger's Breastplate", source = "Avenger's Breastplate", slot = "Chest", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8627, side = "Alliance" },
    [21387] = { name = "Avenger's Crown", source = "Avenger's Crown", slot = "Head", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8628, side = "Alliance" },
    [21388] = { name = "Avenger's Greaves", source = "Avenger's Greaves", slot = "Feet", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8655, side = "Alliance" },
    [21390] = { name = "Avenger's Legguards", source = "Avenger's Legguards", slot = "Legs", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8629, side = "Alliance" },
    [21391] = { name = "Avenger's Pauldrons", source = "Avenger's Pauldrons", slot = "Shoulder", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8630, side = "Alliance" },
    [21408] = { name = "Band of Unending Life", source = "Band of Unending Life", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8700 },
    [21414] = { name = "Band of Vaulted Secrets", source = "Band of Vaulted Secrets", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8699 },
    [21405] = { name = "Band of Veiled Shadows", source = "Band of Veiled Shadows", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8701 },
    [21395] = { name = "Blade of Eternal Justice", source = "Blade of Eternal Justice", slot = "Main Hand", type = "One-Handed Sword", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8711, side = "Alliance" },
    [21413] = { name = "Blade of Vaulted Secrets", source = "Blade of Vaulted Secrets", slot = "Main Hand", type = "One-Handed Sword", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8707 },
    [21397] = { name = "Cape of Eternal Justice", source = "Cape of Eternal Justice", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8695, side = "Alliance" },
    [21409] = { name = "Cloak of Unending Life", source = "Cloak of Unending Life", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8692 },
    [21406] = { name = "Cloak of Veiled Shadows", source = "Cloak of Veiled Shadows", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8693 },
    [21400] = { name = "Cloak of the Gathering Storm", source = "Cloak of the Gathering Storm", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8690, side = "Horde" },
    [21403] = { name = "Cloak of the Unseen Path", source = "Cloak of the Unseen Path", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8696 },
    [21331] = { name = "Conqueror's Breastplate", source = "Conqueror's Breastplate", slot = "Chest", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8562 },
    [21329] = { name = "Conqueror's Crown", source = "Conqueror's Crown", slot = "Head", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8561 },
    [21333] = { name = "Conqueror's Greaves", source = "Conqueror's Greaves", slot = "Feet", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8559 },
    [21332] = { name = "Conqueror's Legguards", source = "Conqueror's Legguards", slot = "Legs", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8560 },
    [21330] = { name = "Conqueror's Spaulders", source = "Conqueror's Spaulders", slot = "Shoulder", type = "Plate Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8544 },
    [21404] = { name = "Dagger of Veiled Shadows", source = "Dagger of Veiled Shadows", slot = "One-Hand", type = "Dagger", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8709 },
    [21359] = { name = "Deathdealer's Boots", source = "Deathdealer's Boots", slot = "Feet", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8637 },
    [21360] = { name = "Deathdealer's Helm", source = "Deathdealer's Helm", slot = "Head", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8639 },
    [21362] = { name = "Deathdealer's Leggings", source = "Deathdealer's Leggings", slot = "Legs", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8640 },
    [21361] = { name = "Deathdealer's Spaulders", source = "Deathdealer's Spaulders", slot = "Shoulder", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8641 },
    [21364] = { name = "Deathdealer's Vest", source = "Deathdealer's Vest", slot = "Chest", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8638 },
    [21337] = { name = "Doomcaller's Circlet", source = "Doomcaller's Circlet", slot = "Head", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8662 },
    [21338] = { name = "Doomcaller's Footwraps", source = "Doomcaller's Footwraps", slot = "Feet", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8660 },
    [21335] = { name = "Doomcaller's Mantle", source = "Doomcaller's Mantle", slot = "Shoulder", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8664 },
    [21334] = { name = "Doomcaller's Robes", source = "Doomcaller's Robes", slot = "Chest", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8661 },
    [21336] = { name = "Doomcaller's Trousers", source = "Doomcaller's Trousers", slot = "Legs", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8663 },
    [21394] = { name = "Drape of Unyielding Strength", source = "Drape of Unyielding Strength", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8557 },
    [21415] = { name = "Drape of Vaulted Secrets", source = "Drape of Vaulted Secrets", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8691 },
    [21344] = { name = "Enigma Boots", source = "Enigma Boots", slot = "Feet", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8634 },
    [21347] = { name = "Enigma Circlet", source = "Enigma Circlet", slot = "Head", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8632 },
    [21346] = { name = "Enigma Leggings", source = "Enigma Leggings", slot = "Legs", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8631 },
    [21343] = { name = "Enigma Robes", source = "Enigma Robes", slot = "Chest", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8633 },
    [21345] = { name = "Enigma Shoulderpads", source = "Enigma Shoulderpads", slot = "Shoulder", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8625 },
    [21349] = { name = "Footwraps of the Oracle", source = "Footwraps of the Oracle", slot = "Feet", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8596 },
    [21410] = { name = "Gavel of Infinite Wisdom", source = "Gavel of Infinite Wisdom", slot = "Main Hand", type = "One-Handed Mace", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8705 },
    [21355] = { name = "Genesis Boots", source = "Genesis Boots", slot = "Feet", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8665 },
    [21353] = { name = "Genesis Helm", source = "Genesis Helm", slot = "Head", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8667 },
    [21354] = { name = "Genesis Shoulderpads", source = "Genesis Shoulderpads", slot = "Shoulder", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8669 },
    [21356] = { name = "Genesis Trousers", source = "Genesis Trousers", slot = "Legs", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8668 },
    [21357] = { name = "Genesis Vest", source = "Genesis Vest", slot = "Chest", type = "Leather Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8666 },
    [21398] = { name = "Hammer of the Gathering Storm", source = "Hammer of the Gathering Storm", slot = "Main Hand", type = "One-Handed Mace", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8706, side = "Horde" },
    [21242] = { name = "Blessed Qiraji War Axe", source = "Imperial Qiraji Armaments", slot = "One-Hand", type = "One-Handed Axe", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8789, choice = 8789 },
    [21244] = { name = "Blessed Qiraji Pugio", source = "Imperial Qiraji Armaments", slot = "One-Hand", type = "Dagger", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8789, choice = 8789 },
    [21269] = { name = "Blessed Qiraji Bulwark", source = "Imperial Qiraji Armaments", slot = "Shield", type = "Shield", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8789, choice = 8789 },
    [21272] = { name = "Blessed Qiraji Musket", source = "Imperial Qiraji Armaments", slot = "Ranged", type = "Gun", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8789, choice = 8789 },
    [21268] = { name = "Blessed Qiraji War Hammer", source = "Imperial Qiraji Regalia", slot = "One-Hand", type = "One-Handed Mace", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8790, choice = 8790 },
    [21273] = { name = "Blessed Qiraji Acolyte Staff", source = "Imperial Qiraji Regalia", slot = "Two-Hand", type = "Staff", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8790, choice = 8790 },
    [21275] = { name = "Blessed Qiraji Augur Staff", source = "Imperial Qiraji Regalia", slot = "Two-Hand", type = "Staff", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8790, choice = 8790 },
    [21416] = { name = "Kris of Unspoken Names", source = "Kris of Unspoken Names", slot = "One-Hand", type = "Dagger", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8710 },
    [21407] = { name = "Mace of Unending Life", source = "Mace of Unending Life", slot = "Main Hand", type = "One-Handed Mace", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8708 },
    [21350] = { name = "Mantle of the Oracle", source = "Mantle of the Oracle", slot = "Shoulder", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8594 },
    [21396] = { name = "Ring of Eternal Justice", source = "Ring of Eternal Justice", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8703, side = "Alliance" },
    [21411] = { name = "Ring of Infinite Wisdom", source = "Ring of Infinite Wisdom", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8697 },
    [21417] = { name = "Ring of Unspoken Names", source = "Ring of Unspoken Names", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8702 },
    [21399] = { name = "Ring of the Gathering Storm", source = "Ring of the Gathering Storm", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8698, side = "Horde" },
    [21401] = { name = "Scythe of the Unseen Path", source = "Scythe of the Unseen Path", slot = "One-Hand", type = "One-Handed Axe", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8712 },
    [21412] = { name = "Shroud of Infinite Wisdom", source = "Shroud of Infinite Wisdom", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8689 },
    [21418] = { name = "Shroud of Unspoken Names", source = "Shroud of Unspoken Names", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8694 },
    [21392] = { name = "Sickle of Unyielding Strength", source = "Sickle of Unyielding Strength", slot = "One-Hand", type = "One-Handed Axe", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8558 },
    [21393] = { name = "Signet of Unyielding Strength", source = "Signet of Unyielding Strength", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8556 },
    [21402] = { name = "Signet of the Unseen Path", source = "Signet of the Unseen Path", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8704 },
    [21372] = { name = "Stormcaller's Diadem", source = "Stormcaller's Diadem", slot = "Head", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8623, side = "Horde" },
    [21373] = { name = "Stormcaller's Footguards", source = "Stormcaller's Footguards", slot = "Feet", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8621, side = "Horde" },
    [21374] = { name = "Stormcaller's Hauberk", source = "Stormcaller's Hauberk", slot = "Chest", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8622, side = "Horde" },
    [21375] = { name = "Stormcaller's Leggings", source = "Stormcaller's Leggings", slot = "Legs", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8624, side = "Horde" },
    [21376] = { name = "Stormcaller's Pauldrons", source = "Stormcaller's Pauldrons", slot = "Shoulder", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8602, side = "Horde" },
    [21366] = { name = "Striker's Diadem", source = "Striker's Diadem", slot = "Head", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8657 },
    [21365] = { name = "Striker's Footguards", source = "Striker's Footguards", slot = "Feet", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8626 },
    [21370] = { name = "Striker's Hauberk", source = "Striker's Hauberk", slot = "Chest", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8656 },
    [21368] = { name = "Striker's Leggings", source = "Striker's Leggings", slot = "Legs", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8658 },
    [21367] = { name = "Striker's Pauldrons", source = "Striker's Pauldrons", slot = "Shoulder", type = "Mail Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8659 },
    [21709] = { name = "Ring of the Fallen God", source = "The Savior of Kalimdor", slot = "Finger", type = "Ring", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8802, choice = 8802 },
    [21710] = { name = "Cloak of the Fallen God", source = "The Savior of Kalimdor", slot = "Back", type = "Cloak", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8802, choice = 8802 },
    [21712] = { name = "Amulet of the Fallen God", source = "The Savior of Kalimdor", slot = "Neck", type = "Amulet", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8802, choice = 8802 },
    [21348] = { name = "Tiara of the Oracle", source = "Tiara of the Oracle", slot = "Head", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8592 },
    [21352] = { name = "Trousers of the Oracle", source = "Trousers of the Oracle", slot = "Legs", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8593 },
    [21351] = { name = "Vestments of the Oracle", source = "Vestments of the Oracle", slot = "Chest", type = "Cloth Armor", zone = "Ahn'Qiraj Quests", reqLevel = 60, questID = 8603 },
}

SGJ.ZoneMeta["Alterac Mountains Quests"] = { name = "Alterac Mountains Quests", min = 26, world = true }
SGJ.DungeonDB["Alterac Mountains Quests"] = {
    [3758] = { name = "Crusader Belt", source = "Syndicate Assassins", slot = "Waist", type = "Mail Armor", zone = "Alterac Mountains Quests", reqLevel = 26, questID = 505, side = "Alliance", choice = 505 },
    [3759] = { name = "Insulated Sage Gloves", source = "Syndicate Assassins", slot = "Hands", type = "Cloth Armor", zone = "Alterac Mountains Quests", reqLevel = 26, questID = 505, side = "Alliance", choice = 505 },
    [3763] = { name = "Lunar Buckler", source = "Crushridge Warmongers", slot = "Shield", type = "Shield", zone = "Alterac Mountains Quests", reqLevel = 30, questID = 504, side = "Alliance", choice = 504 },
    [5249] = { name = "Burning Sliver", source = "Crushridge Warmongers", slot = "Ranged", type = "Wand", zone = "Alterac Mountains Quests", reqLevel = 30, questID = 504, side = "Alliance", choice = 504 },
}

SGJ.ZoneMeta["Alterac Valley Quests"] = { name = "Alterac Valley Quests", min = 51, world = true }
SGJ.DungeonDB["Alterac Valley Quests"] = {
    [17902] = { name = "Stormpike Insignia Rank 4", source = "Earned Reverence", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7170 },
    [17907] = { name = "Frostwolf Insignia Rank 4", source = "Earned Reverence", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7165, side = "Horde" },
    [19106] = { name = "Ice Barbed Spear", source = "Hero of the Frostwolf", slot = "Two-Hand", type = "Polearm", zone = "Alterac Valley Quests", reqLevel = 51, questID = 8272 },
    [19107] = { name = "Bloodseeker", source = "Hero of the Frostwolf", slot = "Ranged", type = "Crossbow", zone = "Alterac Valley Quests", reqLevel = 51, questID = 8272 },
    [19108] = { name = "Wand of Biting Cold", source = "Hero of the Frostwolf", slot = "Ranged", type = "Wand", zone = "Alterac Valley Quests", reqLevel = 51, questID = 8272 },
    [20648] = { name = "Cold Forged Hammer", source = "Hero of the Frostwolf", slot = "Main Hand", type = "One-Handed Mace", zone = "Alterac Valley Quests", reqLevel = 51, questID = 8272 },
    [17906] = { name = "Frostwolf Insignia Rank 3", source = "Honored Amongst the Clan", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7164 },
    [17901] = { name = "Stormpike Insignia Rank 3", source = "Honored Amongst the Guard", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7169 },
    [17903] = { name = "Stormpike Insignia Rank 5", source = "Legendary Heroes", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7171 },
    [17908] = { name = "Frostwolf Insignia Rank 5", source = "Legendary Heroes", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7166 },
    [17690] = { name = "Frostwolf Insignia Rank 1", source = "Proving Grounds", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7161, side = "Horde" },
    [17691] = { name = "Stormpike Insignia Rank 1", source = "Proving Grounds", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7162 },
    [17900] = { name = "Stormpike Insignia Rank 2", source = "Rise and Be Recognized", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7168 },
    [17905] = { name = "Frostwolf Insignia Rank 2", source = "Rise and Be Recognized", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7163 },
    [17904] = { name = "Stormpike Insignia Rank 6", source = "The Eye of Command", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7172 },
    [17909] = { name = "Frostwolf Insignia Rank 6", source = "The Eye of Command", slot = "Trinket", type = "Trinket", zone = "Alterac Valley Quests", reqLevel = 51, questID = 7167 },
}

SGJ.ZoneMeta["Arathi Highlands Quests"] = { name = "Arathi Highlands Quests", min = 30, world = true }
SGJ.DungeonDB["Arathi Highlands Quests"] = {
    [9520] = { name = "Silent Hunter", source = "Call to Arms", slot = "One-Hand", type = "Dagger", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 679, side = "Horde", choice = 679 },
    [9521] = { name = "Skullsplitter", source = "Call to Arms", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 679, side = "Horde", choice = 679 },
    [4975] = { name = "Vigilant Buckler", source = "Malin's Request", slot = "Shield", type = "Shield", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 697, side = "Alliance", choice = 697 },
    [15104] = { name = "Wingborne Boots", source = "Malin's Request", slot = "Feet", type = "Cloth Armor", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 697, side = "Alliance", choice = 697 },
    [4741] = { name = "Stromgarde Cavalry Leggings", source = "Stromgarde Badges", slot = "Legs", type = "Mail Armor", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 682, side = "Alliance" },
    [4743] = { name = "Pulsating Crystalline Shard", source = "Summoning the Princess", slot = "Neck", type = "Amulet", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 656 },
    [4976] = { name = "Mistspray Kilt", source = "The Real Threat", slot = "Legs", type = "Leather Armor", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 680, side = "Horde", choice = 680 },
    [4977] = { name = "Sword of Hammerfall", source = "The Real Threat", slot = "Main Hand", type = "One-Handed Sword", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 680, side = "Horde", choice = 680 },
    [4744] = { name = "Arcane Runed Bracers", source = "Wanted! Marez Cowl", slot = "Wrist", type = "Cloth Armor", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 684, side = "Alliance" },
    [4745] = { name = "War Rider Bracers", source = "Wanted! Otto and Falconcrest", slot = "Wrist", type = "Mail Armor", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 685, side = "Alliance", choice = 685 },
    [5247] = { name = "Rod of Sorrow", source = "Wanted! Otto and Falconcrest", slot = "Ranged", type = "Wand", zone = "Arathi Highlands Quests", reqLevel = 30, questID = 685, side = "Alliance", choice = 685 },
    [4507] = { name = "Pit Fighter's Shield", source = "Trol'kalar", slot = "Shield", type = "Shield", zone = "Arathi Highlands Quests", reqLevel = 32, questID = 646, side = "Horde", choice = 646 },
    [4508] = { name = "Blood-tinged Armor", source = "Trol'kalar", slot = "Chest", type = "Mail Armor", zone = "Arathi Highlands Quests", reqLevel = 32, questID = 646, side = "Horde", choice = 646 },
    [4549] = { name = "Seafire Band", source = "Death From Below", slot = "Finger", type = "Ring", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 667, choice = 667 },
    [4550] = { name = "Coldwater Ring", source = "Death From Below", slot = "Finger", type = "Ring", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 667, choice = 667 },
    [4511] = { name = "Black Water Hammer", source = "Deep Sea Salvage", slot = "Main Hand", type = "One-Handed Mace", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 662 },
    [4509] = { name = "Seawolf Gloves", source = "Drowned Sorrows", slot = "Hands", type = "Leather Armor", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 664 },
    [4543] = { name = "White Drakeskin Cap", source = "Foul Magics", slot = "Head", type = "Leather Armor", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 673, side = "Horde", choice = 673 },
    [4545] = { name = "Radiant Silver Bracers", source = "Foul Magics", slot = "Wrist", type = "Cloth Armor", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 673, side = "Horde", choice = 673 },
    [4547] = { name = "Gnomish Zapper", source = "Sunken Treasure", slot = "Ranged", type = "Wand", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 666, choice = 666 },
    [4548] = { name = "Servomechanic Sledgehammer", source = "Sunken Treasure", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Arathi Highlands Quests", reqLevel = 35, questID = 666, choice = 666 },
}

SGJ.ZoneMeta["Ashenvale Quests"] = { name = "Ashenvale Quests", min = 18, world = true }
SGJ.DungeonDB["Ashenvale Quests"] = {
    [1116] = { name = "Ring of Pure Silver", source = "Raene's Cleansing", slot = "Finger", type = "Ring", zone = "Ashenvale Quests", reqLevel = 18, questID = 1046, side = "Alliance" },
    [5815] = { name = "Glacial Stone", source = "Raene's Cleansing", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Ashenvale Quests", reqLevel = 18, questID = 1046, side = "Alliance", choice = 1046 },
    [17046] = { name = "Gutterblade", source = "Raene's Cleansing", slot = "One-Hand", type = "One-Handed Axe", zone = "Ashenvale Quests", reqLevel = 18, questID = 1046, side = "Alliance", choice = 1046 },
    [5323] = { name = "Everglow Lantern", source = "Supplies to Auberdine", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Ashenvale Quests", reqLevel = 19, questID = 976, side = "Alliance", choice = 976 },
    [6721] = { name = "Chestplate of Kor", source = "Supplies to Auberdine", slot = "Chest", type = "Mail Armor", zone = "Ashenvale Quests", reqLevel = 19, questID = 976, side = "Alliance", choice = 976 },
    [5814] = { name = "Snapbrook Armor", source = "Fallen Sky Lake", slot = "Chest", type = "Leather Armor", zone = "Ashenvale Quests", reqLevel = 20, questID = 1035, side = "Alliance", choice = 1035 },
    [6722] = { name = "Beastial Manacles", source = "Fallen Sky Lake", slot = "Wrist", type = "Mail Armor", zone = "Ashenvale Quests", reqLevel = 20, questID = 1035, side = "Alliance", choice = 1035 },
    [17047] = { name = "Luminescent Amice", source = "Fallen Sky Lake", slot = "Shoulder", type = "Cloth Armor", zone = "Ashenvale Quests", reqLevel = 20, questID = 1035, side = "Alliance", choice = 1035 },
    [5812] = { name = "Robes of Antiquity", source = "Ruuzel", slot = "Chest", type = "Cloth Armor", zone = "Ashenvale Quests", reqLevel = 20, questID = 1009, side = "Alliance" },
    [16658] = { name = "Wildhunter Cloak", source = "The Hunt Completed", slot = "Back", type = "Cloak", zone = "Ashenvale Quests", reqLevel = 20, questID = 247, side = "Horde" },
    [16889] = { name = "Polished Walking Staff", source = "Torek's Assault", slot = "Two-Hand", type = "Staff", zone = "Ashenvale Quests", reqLevel = 20, questID = 6544, side = "Horde", choice = 6544 },
    [16890] = { name = "Slatemetal Cutlass", source = "Torek's Assault", slot = "One-Hand", type = "One-Handed Sword", zone = "Ashenvale Quests", reqLevel = 20, questID = 6544, side = "Horde", choice = 6544 },
    [17692] = { name = "Horn Ring", source = "Vorsha the Lasher", slot = "Finger", type = "Ring", zone = "Ashenvale Quests", reqLevel = 20, questID = 6641, side = "Horde" },
    [16886] = { name = "Outlaw Sabre", source = "Baron Aquanis", slot = "One-Hand", type = "One-Handed Sword", zone = "Ashenvale Quests", reqLevel = 21, questID = 909, side = "Horde" },
    [16887] = { name = "Witch's Finger", source = "Baron Aquanis", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Ashenvale Quests", reqLevel = 21, questID = 909, side = "Horde" },
    [270043] = { name = "Dreamer's Chestguard", source = "Baron Aquanis", slot = "Chest", type = "Leather Armor", zone = "Ashenvale Quests", reqLevel = 21, questID = 6922, side = "Horde", choice = 6922 },
    [17005] = { name = "Boorguard Tunic", source = "King of the Foulweald", slot = "Chest", type = "Leather Armor", zone = "Ashenvale Quests", reqLevel = 21, questID = 6621, side = "Horde", choice = 6621 },
    [17006] = { name = "Cobalt Legguards", source = "King of the Foulweald", slot = "Legs", type = "Mail Armor", zone = "Ashenvale Quests", reqLevel = 21, questID = 6621, side = "Horde", choice = 6621 },
    [16975] = { name = "Warsong Sash", source = "Warsong Supplies", slot = "Waist", type = "Cloth Armor", zone = "Ashenvale Quests", reqLevel = 22, questID = 6571, side = "Horde", choice = 6571 },
    [16977] = { name = "Warsong Boots", source = "Warsong Supplies", slot = "Feet", type = "Leather Armor", zone = "Ashenvale Quests", reqLevel = 22, questID = 6571, side = "Horde", choice = 6571 },
    [16978] = { name = "Warsong Gauntlets", source = "Warsong Supplies", slot = "Hands", type = "Mail Armor", zone = "Ashenvale Quests", reqLevel = 22, questID = 6571, side = "Horde", choice = 6571 },
    [16659] = { name = "Deftkin Belt", source = "Je'neu of the Earthen Ring", slot = "Waist", type = "Leather Armor", zone = "Ashenvale Quests", reqLevel = 23, questID = 824, side = "Horde", choice = 824 },
    [16660] = { name = "Driftmire Shield", source = "Je'neu of the Earthen Ring", slot = "Shield", type = "Shield", zone = "Ashenvale Quests", reqLevel = 23, questID = 824, side = "Horde", choice = 824 },
    [16661] = { name = "Soft Willow Cape", source = "Je'neu of the Earthen Ring", slot = "Back", type = "Cloak", zone = "Ashenvale Quests", reqLevel = 23, questID = 824, side = "Horde", choice = 824 },
    [16740] = { name = "Shredder Operating Gloves", source = "The Lost Pages", slot = "Hands", type = "Cloth Armor", zone = "Ashenvale Quests", reqLevel = 23, questID = 6504, side = "Horde", choice = 6504 },
    [16741] = { name = "Oilrag Handwraps", source = "The Lost Pages", slot = "Hands", type = "Leather Armor", zone = "Ashenvale Quests", reqLevel = 23, questID = 6504, side = "Horde", choice = 6504 },
    [5813] = { name = "Emil's Brand", source = "Insane Druids", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Ashenvale Quests", reqLevel = 24, questID = 1012, side = "Alliance" },
    [5817] = { name = "Lunaris Bow", source = "Answered Questions", slot = "Ranged", type = "Bow", zone = "Ashenvale Quests", reqLevel = 25, questID = 1044, side = "Alliance", choice = 1044 },
    [5818] = { name = "Moonbeam Wand", source = "Answered Questions", slot = "Ranged", type = "Wand", zone = "Ashenvale Quests", reqLevel = 25, questID = 1044, side = "Alliance", choice = 1044 },
    [5820] = { name = "Faerie Mantle", source = "The Branch of Cenarius", slot = "Shoulder", type = "Cloth Armor", zone = "Ashenvale Quests", reqLevel = 26, questID = 1031, side = "Alliance", choice = 1031 },
    [11229] = { name = "Brightscale Girdle", source = "The Branch of Cenarius", slot = "Waist", type = "Mail Armor", zone = "Ashenvale Quests", reqLevel = 26, questID = 1031, side = "Alliance", choice = 1031 },
}

SGJ.ZoneMeta["Azshara Quests"] = { name = "Azshara Quests", min = 55, world = true }
SGJ.DungeonDB["Azshara Quests"] = {
    [18398] = { name = "Tidal Loop", source = "A Hero's Reward", slot = "Finger", type = "Ring", zone = "Azshara Quests", reqLevel = 55, questID = 7486, choice = 7486 },
    [18399] = { name = "Ocean's Breeze", source = "A Hero's Reward", slot = "Finger", type = "Ring", zone = "Azshara Quests", reqLevel = 55, questID = 7486, choice = 7486 },
    [21526] = { name = "Band of Icy Depths", source = "The Wrath of Neptulon", slot = "Finger", type = "Ring", zone = "Azshara Quests", reqLevel = 60, questID = 8729, choice = 8729 },
    [21527] = { name = "Darkwater Robes", source = "The Wrath of Neptulon", slot = "Chest", type = "Cloth Armor", zone = "Azshara Quests", reqLevel = 60, questID = 8729, choice = 8729 },
}

SGJ.ZoneMeta["Badlands Quests"] = { name = "Badlands Quests", min = 30, world = true }
SGJ.DungeonDB["Badlands Quests"] = {
    [4984] = { name = "Skull of Impending Doom", source = "Forbidden Knowledge", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Badlands Quests", reqLevel = 30, questID = 737 },
    [4983] = { name = "Rock Pulverizer", source = "Murdaloc", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Badlands Quests", reqLevel = 30, questID = 739, side = "Alliance" },
    [4086] = { name = "Flash Rifle", source = "Pearl Diving", slot = "Ranged", type = "Gun", zone = "Badlands Quests", reqLevel = 30, questID = 705, choice = 705 },
    [5248] = { name = "Flash Wand", source = "Pearl Diving", slot = "Ranged", type = "Wand", zone = "Badlands Quests", reqLevel = 30, questID = 705, choice = 705 },
    [4978] = { name = "Ryedol's Hammer", source = "A Dwarf and His Tools", slot = "Main Hand", type = "One-Handed Mace", zone = "Badlands Quests", reqLevel = 35, questID = 719, side = "Alliance" },
    [4987] = { name = "Dwarf Captain's Sword", source = "An Ambassador of Evil", slot = "One-Hand", type = "One-Handed Sword", zone = "Badlands Quests", reqLevel = 35, questID = 762, side = "Alliance" },
    [4652] = { name = "Salbac Shield", source = "Scrounging", slot = "Shield", type = "Shield", zone = "Badlands Quests", reqLevel = 35, questID = 733, side = "Alliance", choice = 733 },
    [4653] = { name = "Ironheel Boots", source = "Scrounging", slot = "Feet", type = "Mail Armor", zone = "Badlands Quests", reqLevel = 35, questID = 733, side = "Alliance", choice = 733 },
    [4979] = { name = "Enchanted Stonecloth Bracers", source = "Stone Is Better than Cloth", slot = "Wrist", type = "Cloth Armor", zone = "Badlands Quests", reqLevel = 35, questID = 716 },
    [2820] = { name = "Nifty Stopwatch", source = "This Is Going to Be Hard", slot = "Trinket", type = "Trinket", zone = "Badlands Quests", reqLevel = 35, questID = 778 },
    [11193] = { name = "Blazewind Breastplate", source = "Broken Alliances", slot = "Chest", type = "Leather Armor", zone = "Badlands Quests", reqLevel = 40, questID = 793 },
    [11194] = { name = "Prismscale Hauberk", source = "Broken Alliances", slot = "Chest", type = "Mail Armor", zone = "Badlands Quests", reqLevel = 40, questID = 793 },
    [11195] = { name = "Warforged Chestplate", source = "Broken Alliances", slot = "Chest", type = "Plate Armor", zone = "Badlands Quests", reqLevel = 40, questID = 793 },
    [11196] = { name = "Mindburst Medallion", source = "Broken Alliances", slot = "Neck", type = "Amulet", zone = "Badlands Quests", reqLevel = 40, questID = 793 },
}

SGJ.QuestDB["Blackfathom Deeps"] = {
    [6743] = { name = "Sustaining Ring", source = "Knowledge in the Deeps", slot = "Finger", type = "Ring", zone = "Blackfathom Deeps", reqLevel = 10, questID = 971, side = "Alliance" },
    [17694] = { name = "Band of the Fist", source = "Allegiance to the Old Gods", slot = "Finger", type = "Ring", zone = "Blackfathom Deeps", reqLevel = 17, questID = 6565, side = "Horde", choice = 6565 },
    [17695] = { name = "Chestnut Mantle", source = "Allegiance to the Old Gods", slot = "Shoulder", type = "Cloth Armor", zone = "Blackfathom Deeps", reqLevel = 17, questID = 6565, side = "Horde", choice = 6565 },
    [7001] = { name = "Gravestone Scepter", source = "Blackfathom Villainy", slot = "Ranged", type = "Wand", zone = "Blackfathom Deeps", reqLevel = 18, questID = 1200 },
    [7002] = { name = "Arctic Buckler", source = "Blackfathom Villainy", slot = "Shield", type = "Shield", zone = "Blackfathom Deeps", reqLevel = 18, questID = 1200 },
    [270031] = { name = "Dark Ritual Leggings", source = "Blackfathom Villainy", slot = "Legs", type = "Leather Armor", zone = "Blackfathom Deeps", reqLevel = 18, questID = 1200 },
    [270032] = { name = "Cultist's Armguards", source = "Blackfathom Villainy", slot = "Wrist", type = "Leather Armor", zone = "Blackfathom Deeps", reqLevel = 18, questID = 1200 },
    [7003] = { name = "Beetle Clasps", source = "Researching the Corruption", slot = "Wrist", type = "Mail Armor", zone = "Blackfathom Deeps", reqLevel = 18, questID = 1275, side = "Alliance", choice = 1275 },
    [7004] = { name = "Prelacy Cape", source = "Researching the Corruption", slot = "Back", type = "Cloak", zone = "Blackfathom Deeps", reqLevel = 18, questID = 1275, side = "Alliance", choice = 1275 },
    [270021] = { name = "Staghide Armguards", source = "Researching the Corruption", slot = "Wrist", type = "Leather Armor", zone = "Blackfathom Deeps", reqLevel = 18, questID = 1275, side = "Alliance", choice = 1275 },
    [6998] = { name = "Nimbus Boots", source = "Twilight Falls", slot = "Feet", type = "Cloth Armor", zone = "Blackfathom Deeps", reqLevel = 20, questID = 1199, side = "Alliance" },
    [7000] = { name = "Heartwood Girdle", source = "Twilight Falls", slot = "Waist", type = "Leather Armor", zone = "Blackfathom Deeps", reqLevel = 20, questID = 1199, side = "Alliance" },
    [270025] = { name = "Silvered Gauntlets", source = "Twilight Falls", slot = "Hands", type = "Mail Armor", zone = "Blackfathom Deeps", reqLevel = 20, questID = 1199, side = "Alliance" },
}

SGJ.QuestDB["Blackrock Depths"] = {
    [12018] = { name = "Conservator Helm", source = "Abandoned Hope", slot = "Head", type = "Mail Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 4242, side = "Alliance", choice = 4242 },
    [12021] = { name = "Shieldplate Sabatons", source = "Abandoned Hope", slot = "Feet", type = "Plate Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 4242, side = "Alliance", choice = 4242 },
    [12041] = { name = "Windshear Leggings", source = "Abandoned Hope", slot = "Legs", type = "Leather Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 4242, side = "Alliance", choice = 4242 },
    [12112] = { name = "Crypt Demon Bracers", source = "Disharmony of Fire", slot = "Wrist", type = "Mail Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 3907 },
    [12113] = { name = "Sunborne Cape", source = "Disharmony of Fire", slot = "Back", type = "Cloak", zone = "Blackrock Depths", reqLevel = 48, questID = 3907 },
    [12114] = { name = "Nightfall Gloves", source = "Disharmony of Fire", slot = "Hands", type = "Leather Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 3907 },
    [12115] = { name = "Stalwart Clutch", source = "Disharmony of Fire", slot = "Waist", type = "Plate Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 3907 },
    [11865] = { name = "Rancor Boots", source = "Ribbly Screwspigot", slot = "Feet", type = "Cloth Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 4136, choice = 4136 },
    [11963] = { name = "Penance Spaulders", source = "Ribbly Screwspigot", slot = "Shoulder", type = "Leather Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 4136, choice = 4136 },
    [12049] = { name = "Splintsteel Armor", source = "Ribbly Screwspigot", slot = "Chest", type = "Mail Armor", zone = "Blackrock Depths", reqLevel = 48, questID = 4136, choice = 4136 },
    [12038] = { name = "Lagrave's Seal", source = "The Last Element", slot = "Finger", type = "Ring", zone = "Blackrock Depths", reqLevel = 48, questID = 3911 },
    [12544] = { name = "Thrall's Resolve", source = "The Princess Saved?", slot = "Finger", type = "Ring", zone = "Blackrock Depths", reqLevel = 48, questID = 4004, choice = 4004 },
    [12545] = { name = "Eye of Orgrimmar", source = "The Princess Saved?", slot = "Finger", type = "Ring", zone = "Blackrock Depths", reqLevel = 48, questID = 4004, choice = 4004 },
    [11964] = { name = "Swiftstrike Cudgel", source = "Hurley Blackbreath", slot = "Main Hand", type = "One-Handed Mace", zone = "Blackrock Depths", reqLevel = 50, questID = 4126 },
    [12000] = { name = "Limb Cleaver", source = "Hurley Blackbreath", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Blackrock Depths", reqLevel = 50, questID = 4126 },
    [12061] = { name = "Blade of Reckoning", source = "Jail Break!", slot = "One-Hand", type = "One-Handed Sword", zone = "Blackrock Depths", reqLevel = 50, questID = 4322, side = "Alliance", choice = 4322 },
    [12062] = { name = "Skilled Fighting Blade", source = "Jail Break!", slot = "One-Hand", type = "Dagger", zone = "Blackrock Depths", reqLevel = 50, questID = 4322, side = "Alliance", choice = 4322 },
    [12065] = { name = "Ward of the Elements", source = "Jail Break!", slot = "Trinket", type = "Trinket", zone = "Blackrock Depths", reqLevel = 50, questID = 4322, side = "Alliance" },
    [11866] = { name = "Nagmara's Whipping Belt", source = "The Love Potion", slot = "Waist", type = "Leather Armor", zone = "Blackrock Depths", reqLevel = 50, questID = 4201, choice = 4201 },
    [11962] = { name = "Manacle Cuffs", source = "The Love Potion", slot = "Wrist", type = "Cloth Armor", zone = "Blackrock Depths", reqLevel = 50, questID = 4201, choice = 4201 },
    [12543] = { name = "Songstone of Ironforge", source = "The Princess's Surprise", slot = "Finger", type = "Ring", zone = "Blackrock Depths", reqLevel = 50, questID = 4363, side = "Alliance", choice = 4363 },
    [12548] = { name = "Magni's Will", source = "The Princess's Surprise", slot = "Finger", type = "Ring", zone = "Blackrock Depths", reqLevel = 50, questID = 4363, side = "Alliance", choice = 4363 },
    [12066] = { name = "Shaleskin Cape", source = "A Taste of Flame", slot = "Back", type = "Cloak", zone = "Blackrock Depths", reqLevel = 52, questID = 4024, choice = 4024 },
    [12082] = { name = "Wyrmhide Spaulders", source = "A Taste of Flame", slot = "Shoulder", type = "Leather Armor", zone = "Blackrock Depths", reqLevel = 52, questID = 4024, choice = 4024 },
    [12083] = { name = "Valconian Sash", source = "A Taste of Flame", slot = "Waist", type = "Cloth Armor", zone = "Blackrock Depths", reqLevel = 52, questID = 4024, choice = 4024 },
    [12059] = { name = "Conqueror's Medallion", source = "Operation: Death to Angerforge", slot = "Neck", type = "Amulet", zone = "Blackrock Depths", reqLevel = 52, questID = 4132, side = "Horde" },
    [12108] = { name = "Basaltscale Armor", source = "The Rise of the Machines", slot = "Chest", type = "Mail Armor", zone = "Blackrock Depths", reqLevel = 52, questID = 4063, side = "Horde", choice = 4063 },
    [12109] = { name = "Azure Moon Amice", source = "The Rise of the Machines", slot = "Shoulder", type = "Cloth Armor", zone = "Blackrock Depths", reqLevel = 52, questID = 4063, side = "Horde", choice = 4063 },
    [12110] = { name = "Raincaster Drape", source = "The Rise of the Machines", slot = "Back", type = "Cloak", zone = "Blackrock Depths", reqLevel = 52, questID = 4063, side = "Horde", choice = 4063 },
    [12111] = { name = "Lavaplate Gauntlets", source = "The Rise of the Machines", slot = "Hands", type = "Plate Armor", zone = "Blackrock Depths", reqLevel = 52, questID = 4063, side = "Horde", choice = 4063 },
}

SGJ.QuestDB["Blackrock Spire"] = {
    [16309] = { name = "Drakefire Amulet", source = "Blood of the Black Dragon Champion", slot = "Neck", type = "Amulet", zone = "Blackrock Spire", reqLevel = 50, questID = 6602 },
    [15858] = { name = "Freewind Gloves", source = "Bijou's Reconnaissance Report", slot = "Hands", type = "Cloth Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 4983, side = "Horde", choice = 4983 },
    [15859] = { name = "Seapost Girdle", source = "Bijou's Reconnaissance Report", slot = "Waist", type = "Mail Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 4983, side = "Horde", choice = 4983 },
    [13965] = { name = "Blackhand's Breadth", source = "For The Horde!", slot = "Trinket", type = "Trinket", zone = "Blackrock Spire", reqLevel = 55, questID = 4974 },
    [13966] = { name = "Mark of Tyranny", source = "For The Horde!", slot = "Trinket", type = "Trinket", zone = "Blackrock Spire", reqLevel = 55, questID = 4974 },
    [13968] = { name = "Eye of the Beast", source = "For The Horde!", slot = "Trinket", type = "Trinket", zone = "Blackrock Spire", reqLevel = 55, questID = 4974 },
    [13958] = { name = "Wyrmthalak's Shackles", source = "Maxwell's Mission", slot = "Wrist", type = "Cloth Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 5081 },
    [13959] = { name = "Omokk's Girth Restrainer", source = "Maxwell's Mission", slot = "Waist", type = "Plate Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 5081 },
    [13961] = { name = "Halycon's Muzzle", source = "Maxwell's Mission", slot = "Shoulder", type = "Leather Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 5081 },
    [13962] = { name = "Vosh'gajin's Strand", source = "Maxwell's Mission", slot = "Waist", type = "Leather Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 5081 },
    [15873] = { name = "Ragged John's Neverending Cup", source = "Mother's Milk", slot = "Trinket", type = "Trinket", zone = "Blackrock Spire", reqLevel = 55, questID = 4866 },
    [15824] = { name = "Astoria Robes", source = "Put Her Down", slot = "Chest", type = "Cloth Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 4701 },
    [15825] = { name = "Traphook Jerkin", source = "Put Her Down", slot = "Chest", type = "Leather Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 4701 },
    [15827] = { name = "Jadescale Breastplate", source = "Put Her Down", slot = "Chest", type = "Mail Armor", zone = "Blackrock Spire", reqLevel = 55, questID = 4701 },
    [15867] = { name = "Prismcharm", source = "Urok Doomhowl", slot = "Trinket", type = "Trinket", zone = "Blackrock Spire", reqLevel = 55, questID = 4867 },
    [15860] = { name = "Blinkstrike Armguards", source = "Delivery to Ridgewell", slot = "Wrist", type = "Plate Armor", zone = "Blackrock Spire", reqLevel = 57, questID = 4765 },
    [15861] = { name = "Swiftfoot Treads", source = "Delivery to Ridgewell", slot = "Feet", type = "Leather Armor", zone = "Blackrock Spire", reqLevel = 57, questID = 4765 },
    [12344] = { name = "Seal of Ascension", source = "Seal of Ascension", slot = "Finger", type = "Ring", zone = "Blackrock Spire", reqLevel = 57, questID = 4743 },
}

SGJ.ZoneMeta["Blacksmithing Quests"] = { name = "Blacksmithing Quests", min = 40, world = true }
SGJ.DungeonDB["Blacksmithing Quests"] = {
    [10418] = { name = "Glimmering Mithril Insignia", source = "Did You Lose This?", slot = "Trinket", type = "Trinket", zone = "Blacksmithing Quests", reqLevel = 40, questID = 3321 },
    [8703] = { name = "Signet of Expertise", source = "Expert Blacksmith!", slot = "Trinket", type = "Miscellaneous", zone = "Blacksmithing Quests", reqLevel = 40, questID = 2765 },
}

SGJ.ZoneMeta["Blackwing Lair Quests"] = { name = "Blackwing Lair Quests", min = 60, dungeon = true }
SGJ.DungeonDB["Blackwing Lair Quests"] = {
    [21529] = { name = "Amulet of Shadow Shielding", source = "Nefarius's Corruption", slot = "Neck", type = "Amulet", zone = "Blackwing Lair Quests", reqLevel = 60, questID = 8730, choice = 8730 },
    [21530] = { name = "Onyx Embedded Leggings", source = "Nefarius's Corruption", slot = "Legs", type = "Mail Armor", zone = "Blackwing Lair Quests", reqLevel = 60, questID = 8730, choice = 8730 },
}

SGJ.ZoneMeta["Blasted Lands Quests"] = { name = "Blasted Lands Quests", min = 45, world = true }
SGJ.DungeonDB["Blasted Lands Quests"] = {
    [10659] = { name = "Shard of the Splithooves", source = "Heroes of Old", slot = "Trinket", type = "Trinket", zone = "Blasted Lands Quests", reqLevel = 45, questID = 2701 },
    [10778] = { name = "Necklace of Sanctuary", source = "You Are Rakh'likh, Demon", slot = "Neck", type = "Amulet", zone = "Blasted Lands Quests", reqLevel = 45, questID = 3628 },
    [10779] = { name = "Demon's Blood", source = "You Are Rakh'likh, Demon", slot = "Trinket", type = "Trinket", zone = "Blasted Lands Quests", reqLevel = 45, questID = 3628 },
}

SGJ.ZoneMeta["Burning Steppes Quests"] = { name = "Burning Steppes Quests", min = 48, world = true }
SGJ.DungeonDB["Burning Steppes Quests"] = {
    [11869] = { name = "Sha'ni's Ring", source = "Krom'Grul", slot = "Finger", type = "Ring", zone = "Burning Steppes Quests", reqLevel = 48, questID = 3822, side = "Horde" },
    [11867] = { name = "Maddening Gauntlets", source = "Ogre Head On A Stick = Party", slot = "Hands", type = "Mail Armor", zone = "Burning Steppes Quests", reqLevel = 48, questID = 3825, side = "Alliance", choice = 3825 },
    [11868] = { name = "Choking Band", source = "Ogre Head On A Stick = Party", slot = "Finger", type = "Ring", zone = "Burning Steppes Quests", reqLevel = 48, questID = 3825, side = "Alliance", choice = 3825 },
}

SGJ.QuestDB["City of Dalaran"] = {
    [279835] = { name = "Vine Pruner's Cloak", source = "A Green Sample", slot = "Back", type = "Cloak", zone = "City of Dalaran", reqLevel = 24, questID = 92456, side = "Alliance", choice = 92456 },
    [279836] = { name = "Thorn Protecting Girdle", source = "A Green Sample", slot = "Waist", type = "Mail Armor", zone = "City of Dalaran", reqLevel = 24, questID = 92456, side = "Alliance", choice = 92456 },
    [279839] = { name = "Spellguard Pauldrons", source = "Heart of Disruption", slot = "Shoulder", type = "Mail Armor", zone = "City of Dalaran", reqLevel = 24, questID = 92458, side = "Alliance", choice = 92458 },
    [279840] = { name = "Renewing Footpads", source = "Heart of Disruption", slot = "Feet", type = "Leather Armor", zone = "City of Dalaran", reqLevel = 24, questID = 92458, side = "Alliance", choice = 92458 },
    [279841] = { name = "Defender of Dalaran", source = "Heart of Disruption", slot = "Two-Hand", type = "Two-Handed Mace", zone = "City of Dalaran", reqLevel = 24, questID = 92458, side = "Alliance", choice = 92458 },
    [279842] = { name = "Battle Spaulders", source = "Heart of Disruption", slot = "Shoulder", type = "Mail Armor", zone = "City of Dalaran", reqLevel = 24, questID = 96984, side = "Horde", choice = 96984 },
    [279843] = { name = "Enchanted Sandals", source = "Heart of Disruption", slot = "Feet", type = "Cloth Armor", zone = "City of Dalaran", reqLevel = 24, questID = 96984, side = "Horde", choice = 96984 },
    [279844] = { name = "Striking Staff", source = "Heart of Disruption", slot = "Two-Hand", type = "Staff", zone = "City of Dalaran", reqLevel = 24, questID = 96984, side = "Horde", choice = 96984 },
    [251962] = { name = "Violet Sash", source = "Power Overwhelming", slot = "Waist", type = "Cloth Armor", zone = "City of Dalaran", reqLevel = 24, questID = 92489, side = "Alliance", choice = 92489 },
    [279849] = { name = "Runebound Gloves", source = "Power Overwhelming", slot = "Hands", type = "Leather Armor", zone = "City of Dalaran", reqLevel = 24, questID = 92489, side = "Alliance", choice = 92489 },
    [279847] = { name = "Unstable Power Core", source = "Source of Power", slot = "Ranged", type = "Wand", zone = "City of Dalaran", reqLevel = 24, questID = 96988, side = "Horde", choice = 96988 },
    [279848] = { name = "Construct Cloak", source = "Source of Power", slot = "Back", type = "Cloak", zone = "City of Dalaran", reqLevel = 24, questID = 96988, side = "Horde", choice = 96988 },
    [279837] = { name = "Fallen Guard's Pendant", source = "Starving Arcane", slot = "Neck", type = "Amulet", zone = "City of Dalaran", reqLevel = 24, questID = 92457, choice = 92457 },
    [279838] = { name = "Arcane Infused Rod", source = "Starving Arcane", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "City of Dalaran", reqLevel = 24, questID = 92457, choice = 92457 },
    [251963] = { name = "Gravewalker Boots", source = "The Grave Knight", slot = "Feet", type = "Leather Armor", zone = "City of Dalaran", reqLevel = 24, questID = 96986, side = "Horde", choice = 96986 },
    [251965] = { name = "Undead Knight's Bracers", source = "The Grave Knight", slot = "Wrist", type = "Mail Armor", zone = "City of Dalaran", reqLevel = 24, questID = 96986, side = "Horde", choice = 96986 },
}

SGJ.ZoneMeta["Cooking Quests"] = { name = "Cooking Quests", min = 15, world = true }
SGJ.DungeonDB["Cooking Quests"] = {
    [10919] = { name = "Apothecary Gloves", source = "Dig Rat Stew", slot = "Hands", type = "Cloth Armor", zone = "Cooking Quests", reqLevel = 15, questID = 862, side = "Horde" },
}

SGJ.ZoneMeta["Darkmoon Faire Quests"] = { name = "Darkmoon Faire Quests", min = 6, world = true }
SGJ.DungeonDB["Darkmoon Faire Quests"] = {
    [19295] = { name = "Darkmoon Flower", source = "5 Tickets - Darkmoon Flower", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Darkmoon Faire Quests", reqLevel = 6, questID = 7930 },
    [19292] = { name = "Last Month's Mutton", source = "10 Tickets - Last Month's Mutton", slot = "One-Hand", type = "One-Handed Mace", zone = "Darkmoon Faire Quests", reqLevel = 29, questID = 7935 },
    [19293] = { name = "Last Year's Mutton", source = "50 Tickets - Last Year's Mutton", slot = "One-Hand", type = "One-Handed Mace", zone = "Darkmoon Faire Quests", reqLevel = 50, questID = 7936 },
    [19491] = { name = "Amulet of the Darkmoon", source = "1200 Tickets - Amulet of the Darkmoon", slot = "Neck", type = "Amulet", zone = "Darkmoon Faire Quests", reqLevel = 60, questID = 7981 },
    [19426] = { name = "Orb of the Darkmoon", source = "1200 Tickets - Orb of the Darkmoon", slot = "Neck", type = "Amulet", zone = "Darkmoon Faire Quests", reqLevel = 60, questID = 7940 },
    [19288] = { name = "Darkmoon Card: Blue Dragon", source = "Darkmoon Beast Deck", slot = "Trinket", type = "Trinket", zone = "Darkmoon Faire Quests", reqLevel = 60, questID = 7907 },
    [19289] = { name = "Darkmoon Card: Maelstrom", source = "Darkmoon Elementals Deck", slot = "Trinket", type = "Trinket", zone = "Darkmoon Faire Quests", reqLevel = 60, questID = 7929 },
    [19290] = { name = "Darkmoon Card: Twisting Nether", source = "Darkmoon Portals Deck", slot = "Trinket", type = "Trinket", zone = "Darkmoon Faire Quests", reqLevel = 60, questID = 7927 },
    [19287] = { name = "Darkmoon Card: Heroism", source = "Darkmoon Warlords Deck", slot = "Trinket", type = "Trinket", zone = "Darkmoon Faire Quests", reqLevel = 60, questID = 7928 },
}

SGJ.ZoneMeta["Darkshore Quests"] = { name = "Darkshore Quests", min = 7, world = true }
SGJ.DungeonDB["Darkshore Quests"] = {
    [5604] = { name = "Elven Wand", source = "Bashal'Aran", slot = "Ranged", type = "Wand", zone = "Darkshore Quests", reqLevel = 7, questID = 957, side = "Alliance", choice = 957 },
    [5617] = { name = "Vagabond Leggings", source = "Bashal'Aran", slot = "Legs", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 7, questID = 957, side = "Alliance", choice = 957 },
    [7229] = { name = "Explorer's Vest", source = "Bashal'Aran", slot = "Chest", type = "Mail Armor", zone = "Darkshore Quests", reqLevel = 7, questID = 957, side = "Alliance", choice = 957 },
    [5612] = { name = "Ivy Cuffs", source = "Tools of the Highborne", slot = "Wrist", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 9, questID = 958, side = "Alliance" },
    [5609] = { name = "Steadfast Cinch", source = "Escape Through Force", slot = "Waist", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 10, questID = 994, side = "Alliance" },
    [6659] = { name = "Scarab Trousers", source = "Escape Through Stealth", slot = "Legs", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 10, questID = 995, side = "Alliance" },
    [7738] = { name = "Evergreen Gloves", source = "Tharnariun's Hope", slot = "Hands", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 10, questID = 2139, side = "Alliance", choice = 2139 },
    [7739] = { name = "Timberland Cape", source = "Tharnariun's Hope", slot = "Back", type = "Cloak", zone = "Darkshore Quests", reqLevel = 10, questID = 2139, side = "Alliance", choice = 2139 },
    [12225] = { name = "Blump Family Fishing Pole", source = "The Family and the Fishing Pole", slot = "Two-Hand", type = "Fishing Pole", zone = "Darkshore Quests", reqLevel = 10, questID = 1141, side = "Alliance" },
    [281289] = { name = "Swordfeather Cloak", source = "WANTED: Jai'vhanel", slot = "Back", type = "Cloak", zone = "Darkshore Quests", reqLevel = 10, questID = 98025, side = "Alliance" },
    [5611] = { name = "Tear of Grief", source = "For Love Eternal", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Darkshore Quests", reqLevel = 11, questID = 963, side = "Alliance" },
    [15398] = { name = "Sandcomber Boots", source = "Washed Ashore", slot = "Feet", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 11, questID = 4681, side = "Alliance", choice = 4681 },
    [15399] = { name = "Dryweed Belt", source = "Washed Ashore", slot = "Waist", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 11, questID = 4681, side = "Alliance", choice = 4681 },
    [15400] = { name = "Clamshell Bracers", source = "Washed Ashore", slot = "Wrist", type = "Mail Armor", zone = "Darkshore Quests", reqLevel = 11, questID = 4681, side = "Alliance", choice = 4681 },
    [5610] = { name = "Gustweald Cloak", source = "Cave Mushrooms", slot = "Back", type = "Cloak", zone = "Darkshore Quests", reqLevel = 12, questID = 947, side = "Alliance" },
    [5615] = { name = "Woodsman Sword", source = "Mathystra Relics", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Darkshore Quests", reqLevel = 12, questID = 951, side = "Alliance", choice = 951 },
    [5757] = { name = "Hardwood Cudgel", source = "Mathystra Relics", slot = "Main Hand", type = "One-Handed Mace", zone = "Darkshore Quests", reqLevel = 12, questID = 951, side = "Alliance", choice = 951 },
    [15335] = { name = "Briarsteel Shortsword", source = "The Fragments Within", slot = "One-Hand", type = "One-Handed Sword", zone = "Darkshore Quests", reqLevel = 12, questID = 4813, side = "Alliance", choice = 4813 },
    [15396] = { name = "Curvewood Dagger", source = "The Fragments Within", slot = "One-Hand", type = "Dagger", zone = "Darkshore Quests", reqLevel = 12, questID = 4813, side = "Alliance", choice = 4813 },
    [15397] = { name = "Oakthrush Staff", source = "The Fragments Within", slot = "Two-Hand", type = "Staff", zone = "Darkshore Quests", reqLevel = 12, questID = 4813, side = "Alliance", choice = 4813 },
    [15401] = { name = "Welldrip Gloves", source = "Deep Ocean, Vast Sea", slot = "Hands", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 13, questID = 982, side = "Alliance", choice = 982 },
    [15402] = { name = "Noosegrip Gauntlets", source = "Deep Ocean, Vast Sea", slot = "Hands", type = "Mail Armor", zone = "Darkshore Quests", reqLevel = 13, questID = 982, side = "Alliance", choice = 982 },
    [270004] = { name = "Murloc-hide Gloves", source = "Deep Ocean, Vast Sea", slot = "Hands", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 13, questID = 982, side = "Alliance", choice = 982 },
    [5613] = { name = "Staff of the Purifier", source = "The Tower of Althalaxx", slot = "Two-Hand", type = "Staff", zone = "Darkshore Quests", reqLevel = 13, questID = 973, side = "Alliance", choice = 973 },
    [5614] = { name = "Seraph's Strike", source = "The Tower of Althalaxx", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Darkshore Quests", reqLevel = 13, questID = 981, side = "Alliance", choice = 981 },
    [5622] = { name = "Clergy Ring", source = "The Tower of Althalaxx", slot = "Finger", type = "Ring", zone = "Darkshore Quests", reqLevel = 13, questID = 973, side = "Alliance", choice = 973 },
    [10043] = { name = "Pious Legwraps", source = "The Tower of Althalaxx", slot = "Legs", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 13, questID = 981, side = "Alliance", choice = 981 },
    [15405] = { name = "Shucking Gloves", source = "Fruit of the Sea", slot = "Hands", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 1138, side = "Alliance", choice = 1138 },
    [15406] = { name = "Crustacean Boots", source = "Fruit of the Sea", slot = "Feet", type = "Mail Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 1138, side = "Alliance", choice = 1138 },
    [5626] = { name = "Skullchipper", source = "The Absent Minded Prospector", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Darkshore Quests", reqLevel = 15, questID = 943, side = "Alliance", choice = 943 },
    [5627] = { name = "Relic Blade", source = "The Absent Minded Prospector", slot = "One-Hand", type = "Dagger", zone = "Darkshore Quests", reqLevel = 15, questID = 943, side = "Alliance", choice = 943 },
    [5629] = { name = "Hammerfist Gloves", source = "The Absent Minded Prospector", slot = "Hands", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 741, side = "Alliance", choice = 741 },
    [5630] = { name = "Windfelt Gloves", source = "The Absent Minded Prospector", slot = "Hands", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 741, side = "Alliance", choice = 741 },
    [11936] = { name = "Relic Hunter Belt", source = "The Absent Minded Prospector", slot = "Waist", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 741, side = "Alliance", choice = 741 },
    [270022] = { name = "Archaeologist's Gown", source = "The Absent Minded Prospector", slot = "Chest", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 943, side = "Alliance", choice = 943 },
    [15202] = { name = "Wildkeeper Leggings", source = "The Blackwood Corrupted", slot = "Legs", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 4763, side = "Alliance", choice = 4763 },
    [15203] = { name = "Guststorm Legguards", source = "The Blackwood Corrupted", slot = "Legs", type = "Mail Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 4763, side = "Alliance", choice = 4763 },
    [15204] = { name = "Moonstone Wand", source = "The Blackwood Corrupted", slot = "Ranged", type = "Wand", zone = "Darkshore Quests", reqLevel = 15, questID = 4763, side = "Alliance", choice = 4763 },
    [5315] = { name = "Timberland Armguards", source = "WANTED: Murkdeep!", slot = "Wrist", type = "Cloth Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 4740, side = "Alliance", choice = 4740 },
    [15403] = { name = "Ridgeback Bracers", source = "WANTED: Murkdeep!", slot = "Wrist", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 4740, side = "Alliance", choice = 4740 },
    [15404] = { name = "Breakwater Girdle", source = "WANTED: Murkdeep!", slot = "Waist", type = "Mail Armor", zone = "Darkshore Quests", reqLevel = 15, questID = 4740, side = "Alliance", choice = 4740 },
    [281291] = { name = "Mathystra Channeling Orb", source = "Baron Marinous", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Darkshore Quests", reqLevel = 17, questID = 98028, side = "Alliance", choice = 98028 },
    [281292] = { name = "Onu's Patience", source = "Baron Marinous", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Darkshore Quests", reqLevel = 17, questID = 98028, side = "Alliance", choice = 98028 },
    [15205] = { name = "Owlsight Rifle", source = "The Sleeper Has Awakened", slot = "Ranged", type = "Gun", zone = "Darkshore Quests", reqLevel = 17, questID = 5321, side = "Alliance", choice = 5321 },
    [15206] = { name = "Jadefinger Baton", source = "The Sleeper Has Awakened", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Darkshore Quests", reqLevel = 17, questID = 5321, side = "Alliance", choice = 5321 },
    [15207] = { name = "Steelcap Shield", source = "The Sleeper Has Awakened", slot = "Shield", type = "Shield", zone = "Darkshore Quests", reqLevel = 17, questID = 5321, side = "Alliance", choice = 5321 },
    [270014] = { name = "Deerhide Pants", source = "The Sleeper Has Awakened", slot = "Legs", type = "Leather Armor", zone = "Darkshore Quests", reqLevel = 17, questID = 5321, side = "Alliance", choice = 5321 },
}

SGJ.ZoneMeta["Darnassus Quests"] = { name = "Darnassus Quests", min = 5, world = true }
SGJ.DungeonDB["Darnassus Quests"] = {
    [9600] = { name = "Lace Pants", source = "Sathrah's Sacrifice", slot = "Legs", type = "Cloth Armor", zone = "Darnassus Quests", reqLevel = 5, questID = 2520, side = "Alliance", choice = 2520 },
    [9601] = { name = "Cushioned Boots", source = "Sathrah's Sacrifice", slot = "Feet", type = "Leather Armor", zone = "Darnassus Quests", reqLevel = 5, questID = 2520, side = "Alliance", choice = 2520 },
    [11870] = { name = "Oblivion Orb", source = "Calm Before the Storm", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Darnassus Quests", reqLevel = 50, questID = 4510, side = "Alliance", choice = 4510 },
    [11871] = { name = "Snarkshaw Spaulders", source = "Calm Before the Storm", slot = "Shoulder", type = "Leather Armor", zone = "Darnassus Quests", reqLevel = 50, questID = 4510, side = "Alliance", choice = 4510 },
    [11872] = { name = "Eschewal Greaves", source = "Calm Before the Storm", slot = "Feet", type = "Plate Armor", zone = "Darnassus Quests", reqLevel = 50, questID = 4510, side = "Alliance", choice = 4510 },
}

SGJ.QuestDB["Deadmines"] = {
    [2036] = { name = "Dusty Mining Gloves", source = "Collecting Memories", slot = "Hands", type = "Leather Armor", zone = "Deadmines", reqLevel = 14, questID = 168, side = "Alliance", choice = 168 },
    [2037] = { name = "Tunneler's Boots", source = "Collecting Memories", slot = "Feet", type = "Mail Armor", zone = "Deadmines", reqLevel = 14, questID = 168, side = "Alliance", choice = 168 },
    [270007] = { name = "Worn Miner's Waistcord", source = "Collecting Memories", slot = "Waist", type = "Cloth Armor", zone = "Deadmines", reqLevel = 14, questID = 168, side = "Alliance", choice = 168 },
    [2074] = { name = "Solid Shortblade", source = "Red Silk Bandanas", slot = "One-Hand", type = "One-Handed Sword", zone = "Deadmines", reqLevel = 14, questID = 214, side = "Alliance", choice = 214 },
    [2089] = { name = "Scrimshaw Dagger", source = "Red Silk Bandanas", slot = "One-Hand", type = "Dagger", zone = "Deadmines", reqLevel = 14, questID = 214, side = "Alliance", choice = 214 },
    [6094] = { name = "Piercing Axe", source = "Red Silk Bandanas", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Deadmines", reqLevel = 14, questID = 214, side = "Alliance", choice = 214 },
    [270005] = { name = "Monastic Hammer", source = "Red Silk Bandanas", slot = "Main Hand", type = "One-Handed Mace", zone = "Deadmines", reqLevel = 14, questID = 214, side = "Alliance", choice = 214 },
    [2041] = { name = "Tunic of Westfall", source = "The Defias Brotherhood", slot = "Chest", type = "Leather Armor", zone = "Deadmines", reqLevel = 14, questID = 166, side = "Alliance", choice = 166 },
    [2042] = { name = "Staff of Westfall", source = "The Defias Brotherhood", slot = "Two-Hand", type = "Staff", zone = "Deadmines", reqLevel = 14, questID = 166, side = "Alliance", choice = 166 },
    [6087] = { name = "Chausses of Westfall", source = "The Defias Brotherhood", slot = "Legs", type = "Mail Armor", zone = "Deadmines", reqLevel = 14, questID = 166, side = "Alliance", choice = 166 },
    [1893] = { name = "Miner's Revenge", source = "Oh Brother...", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Deadmines", reqLevel = 15, questID = 167, side = "Alliance", choice = 167 },
    [270012] = { name = "Miner's Workgloves", source = "Oh Brother...", slot = "Hands", type = "Cloth Armor", zone = "Deadmines", reqLevel = 15, questID = 167, side = "Alliance", choice = 167 },
    [270013] = { name = "Miner's Workboots", source = "Oh Brother...", slot = "Feet", type = "Leather Armor", zone = "Deadmines", reqLevel = 15, questID = 167, side = "Alliance", choice = 167 },
    [7606] = { name = "Polar Gauntlets", source = "Underground Assault", slot = "Hands", type = "Mail Armor", zone = "Deadmines", reqLevel = 15, questID = 2040, side = "Alliance", choice = 2040 },
    [7607] = { name = "Sable Wand", source = "Underground Assault", slot = "Ranged", type = "Wand", zone = "Deadmines", reqLevel = 15, questID = 2040, side = "Alliance", choice = 2040 },
    [270015] = { name = "Bravo's Armbands", source = "Underground Assault", slot = "Wrist", type = "Leather Armor", zone = "Deadmines", reqLevel = 15, questID = 2040, side = "Alliance", choice = 2040 },
    [270016] = { name = "Dreamer's Leggings", source = "Underground Assault", slot = "Legs", type = "Leather Armor", zone = "Deadmines", reqLevel = 15, questID = 2040, side = "Alliance", choice = 2040 },
}

SGJ.ZoneMeta["Desolace Quests"] = { name = "Desolace Quests", min = 25, world = true }
SGJ.DungeonDB["Desolace Quests"] = {
    [6746] = { name = "Basalt Buckler", source = "The Corrupter", slot = "Shield", type = "Shield", zone = "Desolace Quests", reqLevel = 25, questID = 1488, side = "Horde", choice = 1488 },
    [6747] = { name = "Enforcer Pauldrons", source = "The Corrupter", slot = "Shoulder", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 25, questID = 1488, side = "Horde", choice = 1488 },
    [15689] = { name = "Trader's Ring", source = "Bodyguard for Hire", slot = "Finger", type = "Ring", zone = "Desolace Quests", reqLevel = 30, questID = 5821 },
    [16791] = { name = "Silkstream Cuffs", source = "Book of the Ancients", slot = "Wrist", type = "Cloth Armor", zone = "Desolace Quests", reqLevel = 30, questID = 6027, choice = 6027 },
    [16793] = { name = "Arcmetal Shoulders", source = "Book of the Ancients", slot = "Shoulder", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 30, questID = 6027, choice = 6027 },
    [6780] = { name = "Lilac Sash", source = "Centaur Bounty", slot = "Waist", type = "Cloth Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1366, side = "Horde", choice = 1366 },
    [6784] = { name = "Braced Handguards", source = "Centaur Bounty", slot = "Hands", type = "Leather Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1366, side = "Horde", choice = 1366 },
    [6790] = { name = "Ring of Calm", source = "Centaur Bounty", slot = "Finger", type = "Ring", zone = "Desolace Quests", reqLevel = 30, questID = 1387, side = "Alliance" },
    [16788] = { name = "Captain Rackmore's Wheel", source = "Claim Rackmore's Treasure!", slot = "Shield", type = "Shield", zone = "Desolace Quests", reqLevel = 30, questID = 6161 },
    [16789] = { name = "Captain Rackmore's Tiller", source = "Claim Rackmore's Treasure!", slot = "Ranged", type = "Wand", zone = "Desolace Quests", reqLevel = 30, questID = 6161 },
    [15697] = { name = "Kodo Rustler Boots", source = "Kodo Roundup", slot = "Feet", type = "Cloth Armor", zone = "Desolace Quests", reqLevel = 30, questID = 5561, choice = 5561 },
    [15698] = { name = "Wrangling Spaulders", source = "Kodo Roundup", slot = "Shoulder", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 30, questID = 5561, choice = 5561 },
    [6793] = { name = "Auric Bracers", source = "Reagents for Reclaimers Inc.", slot = "Wrist", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1467, side = "Alliance", choice = 1467 },
    [6794] = { name = "Stormfire Gauntlets", source = "Reagents for Reclaimers Inc.", slot = "Hands", type = "Leather Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1467, side = "Alliance", choice = 1467 },
    [9687] = { name = "Grappler's Belt", source = "Return to Vahlarriel", slot = "Waist", type = "Leather Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1440, side = "Alliance", choice = 1440 },
    [9698] = { name = "Gloves of Insight", source = "Return to Vahlarriel", slot = "Hands", type = "Leather Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1440, side = "Alliance", choice = 1440 },
    [9699] = { name = "Garrison Cloak", source = "Return to Vahlarriel", slot = "Back", type = "Cloak", zone = "Desolace Quests", reqLevel = 30, questID = 1440, side = "Alliance", choice = 1440 },
    [11884] = { name = "Moonlit Amice", source = "Return to Vahlarriel", slot = "Shoulder", type = "Cloth Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1440, side = "Alliance", choice = 1440 },
    [3463] = { name = "Silver Star", source = "Stealing Supplies", slot = "Thrown", type = "Thrown", zone = "Desolace Quests", reqLevel = 30, questID = 1370, choice = 1370 },
    [6791] = { name = "Hellion Boots", source = "The Karnitol Shipwreck", slot = "Feet", type = "Cloth Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1457, side = "Alliance", choice = 1457 },
    [6792] = { name = "Sanguine Pauldrons", source = "The Karnitol Shipwreck", slot = "Shoulder", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 30, questID = 1457, side = "Alliance", choice = 1457 },
    [15585] = { name = "Pardoc Grips", source = "Clam Bait", slot = "Hands", type = "Cloth Armor", zone = "Desolace Quests", reqLevel = 31, questID = 6142, side = "Horde", choice = 6142 },
    [15587] = { name = "Ringtail Girdle", source = "Clam Bait", slot = "Waist", type = "Leather Armor", zone = "Desolace Quests", reqLevel = 31, questID = 6142, side = "Horde", choice = 6142 },
    [15588] = { name = "Bracesteel Belt", source = "Clam Bait", slot = "Waist", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 31, questID = 6142, side = "Horde", choice = 6142 },
    [15691] = { name = "Sidegunner Shottie", source = "Gizelton Caravan", slot = "Ranged", type = "Gun", zone = "Desolace Quests", reqLevel = 32, questID = 5943, choice = 5943 },
    [15692] = { name = "Kodo Brander", source = "Gizelton Caravan", slot = "Ranged", type = "Wand", zone = "Desolace Quests", reqLevel = 32, questID = 5943, choice = 5943 },
    [15695] = { name = "Studded Ring Shield", source = "Gizelton Caravan", slot = "Shield", type = "Shield", zone = "Desolace Quests", reqLevel = 32, questID = 5943, choice = 5943 },
    [16794] = { name = "Gripsteel Wristguards", source = "Portals of the Legion", slot = "Wrist", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 32, questID = 5581, side = "Horde", choice = 5581 },
    [16873] = { name = "Braidfur Gloves", source = "Portals of the Legion", slot = "Hands", type = "Leather Armor", zone = "Desolace Quests", reqLevel = 32, questID = 5581, side = "Horde", choice = 5581 },
    [15690] = { name = "Kodobone Necklace", source = "Bone Collector", slot = "Neck", type = "Amulet", zone = "Desolace Quests", reqLevel = 33, questID = 5501 },
    [15864] = { name = "Condor Bracers", source = "Ghost-o-plasm Round Up", slot = "Wrist", type = "Cloth Armor", zone = "Desolace Quests", reqLevel = 34, questID = 6134, choice = 6134 },
    [15865] = { name = "Anchorhold Buckler", source = "Ghost-o-plasm Round Up", slot = "Shield", type = "Shield", zone = "Desolace Quests", reqLevel = 34, questID = 6134, choice = 6134 },
    [6773] = { name = "Kolkar Marauder Chain", source = "Khan Hratha", slot = "Chest", type = "Mail Armor", zone = "Desolace Quests", reqLevel = 35, questID = 1380, choice = 1380 },
    [6774] = { name = "Traitor's Finger", source = "Khan Hratha", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Desolace Quests", reqLevel = 35, questID = 1380, choice = 1380 },
    [6788] = { name = "Kolkar Hunter's Belt", source = "Khan Hratha", slot = "Waist", type = "Leather Armor", zone = "Desolace Quests", reqLevel = 35, questID = 1381, choice = 1381 },
    [6789] = { name = "Ceremonial Centaur Blanket", source = "Khan Hratha", slot = "Back", type = "Cloak", zone = "Desolace Quests", reqLevel = 35, questID = 1381, choice = 1381 },
}

SGJ.QuestDB["Dire Maul"] = {
    [18466] = { name = "Royal Seal of Eldre'Thalas", source = "Codex of Defense", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7499 },
    [18471] = { name = "Royal Seal of Eldre'Thalas", source = "Frost Shock and You", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7505 },
    [18465] = { name = "Royal Seal of Eldre'Thalas", source = "Garona: A Study on Stealth and Treachery", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7498 },
    [18467] = { name = "Royal Seal of Eldre'Thalas", source = "Harnessing Shadows", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7502 },
    [18469] = { name = "Royal Seal of Eldre'Thalas", source = "Holy Bologna: What the Light Won't Tell You", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7504 },
    [18491] = { name = "Lorespinner", source = "Lethtendris's Web", slot = "Main Hand", type = "Dagger", zone = "Dire Maul", reqLevel = 54, questID = 7488 },
    [18410] = { name = "Sprinter's Sword", source = "Pusillin and the Elder Azj'Tordin", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Dire Maul", reqLevel = 54, questID = 7441, choice = 7441 },
    [18411] = { name = "Spry Boots", source = "Pusillin and the Elder Azj'Tordin", slot = "Feet", type = "Leather Armor", zone = "Dire Maul", reqLevel = 54, questID = 7441, choice = 7441 },
    [18468] = { name = "Royal Seal of Eldre'Thalas", source = "The Arcanist's Cookbook", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7500 },
    [18470] = { name = "Royal Seal of Eldre'Thalas", source = "The Emerald Dream...", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7506 },
    [18473] = { name = "Royal Seal of Eldre'Thalas", source = "The Greatest Race of Hunters", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7503 },
    [18472] = { name = "Royal Seal of Eldre'Thalas", source = "The Light and How To Swing It", slot = "Trinket", type = "Trinket", zone = "Dire Maul", reqLevel = 54, questID = 7501 },
    [18420] = { name = "Bonecrusher", source = "The Treasure of the Shen'dralar", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Dire Maul", reqLevel = 56, questID = 7462 },
    [18421] = { name = "Backwood Helm", source = "The Treasure of the Shen'dralar", slot = "Head", type = "Mail Armor", zone = "Dire Maul", reqLevel = 56, questID = 7462 },
    [18424] = { name = "Sedge Boots", source = "The Treasure of the Shen'dralar", slot = "Feet", type = "Leather Armor", zone = "Dire Maul", reqLevel = 56, questID = 7462 },
    [18366] = { name = "Gordok's Handguards", source = "Unfinished Gordok Business", slot = "Hands", type = "Plate Armor", zone = "Dire Maul", reqLevel = 56, questID = 1318 },
    [18367] = { name = "Gordok's Gauntlets", source = "Unfinished Gordok Business", slot = "Hands", type = "Mail Armor", zone = "Dire Maul", reqLevel = 56, questID = 1318 },
    [18368] = { name = "Gordok's Gloves", source = "Unfinished Gordok Business", slot = "Hands", type = "Leather Armor", zone = "Dire Maul", reqLevel = 56, questID = 1318 },
    [18369] = { name = "Gordok's Handwraps", source = "Unfinished Gordok Business", slot = "Hands", type = "Cloth Armor", zone = "Dire Maul", reqLevel = 56, questID = 1318 },
    [22149] = { name = "Beads of Ogre Mojo", source = "Falrin's Vendetta", slot = "Neck", type = "Amulet", zone = "Dire Maul", reqLevel = 58, questID = 8949, choice = 8949 },
    [22150] = { name = "Beads of Ogre Might", source = "Falrin's Vendetta", slot = "Neck", type = "Amulet", zone = "Dire Maul", reqLevel = 58, questID = 8949, choice = 8949 },
}

SGJ.ZoneMeta["Druid Quests"] = { name = "Druid Quests", min = 14, world = true }
SGJ.DungeonDB["Druid Quests"] = {
    [15866] = { name = "Veildust Medicine Bag", source = "Curing the Sick", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Druid Quests", reqLevel = 14, questID = 6124, class = "DRUID" },
    [16608] = { name = "Aquarius Belt", source = "Aquatic Form", slot = "Waist", type = "Leather Armor", zone = "Druid Quests", reqLevel = 16, questID = 31, class = "DRUID" },
    [22272] = { name = "Forest's Embrace", source = "A Better Ingredient", slot = "Chest", type = "Leather Armor", zone = "Druid Quests", reqLevel = 50, questID = 9053, class = "DRUID", choice = 9053 },
    [22274] = { name = "Grizzled Pelt", source = "A Better Ingredient", slot = "Chest", type = "Leather Armor", zone = "Druid Quests", reqLevel = 50, questID = 9053, class = "DRUID", choice = 9053 },
    [22458] = { name = "Moonshadow Stave", source = "A Better Ingredient", slot = "Two-Hand", type = "Staff", zone = "Druid Quests", reqLevel = 50, questID = 9053, class = "DRUID", choice = 9053 },
}

SGJ.ZoneMeta["Dun Morogh Quests"] = { name = "Dun Morogh Quests", min = 1, world = true }
SGJ.DungeonDB["Dun Morogh Quests"] = {
    [2172] = { name = "Rustic Belt", source = "A New Threat", slot = "Waist", type = "Mail Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 170, side = "Alliance", choice = 170 },
    [6173] = { name = "Snow Boots", source = "A New Threat", slot = "Feet", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 170, side = "Alliance", choice = 170 },
    [6185] = { name = "Bear Shawl", source = "A New Threat", slot = "Back", type = "Cloak", zone = "Dun Morogh Quests", reqLevel = 1, questID = 170, side = "Alliance", choice = 170 },
    [719] = { name = "Rabbit Handler Gloves", source = "Dwarven Outfitters", slot = "Hands", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 179, side = "Alliance", choice = 179 },
    [2547] = { name = "Boar Handler Gloves", source = "Dwarven Outfitters", slot = "Hands", type = "Mail Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 179, side = "Alliance", choice = 179 },
    [6171] = { name = "Wolf Handler Gloves", source = "Dwarven Outfitters", slot = "Hands", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 179, side = "Alliance", choice = 179 },
    [61] = { name = "Dwarven Leather Pants", source = "The Boar Hunter", slot = "Legs", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 183, side = "Alliance", choice = 183 },
    [79] = { name = "Dwarven Cloth Britches", source = "The Boar Hunter", slot = "Legs", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 183, side = "Alliance", choice = 183 },
    [5581] = { name = "Smooth Walking Staff", source = "The Stolen Journal", slot = "Two-Hand", type = "Staff", zone = "Dun Morogh Quests", reqLevel = 1, questID = 218, side = "Alliance", choice = 218 },
    [6176] = { name = "Dwarven Kite Shield", source = "The Stolen Journal", slot = "Shield", type = "Shield", zone = "Dun Morogh Quests", reqLevel = 1, questID = 218, side = "Alliance", choice = 218 },
    [2047] = { name = "Anvilmar Hand Axe", source = "The Troll Cave", slot = "Main Hand", type = "One-Handed Axe", zone = "Dun Morogh Quests", reqLevel = 1, questID = 182, side = "Alliance", choice = 182 },
    [2048] = { name = "Anvilmar Hammer", source = "The Troll Cave", slot = "Main Hand", type = "One-Handed Mace", zone = "Dun Morogh Quests", reqLevel = 1, questID = 182, side = "Alliance", choice = 182 },
    [2195] = { name = "Anvilmar Knife", source = "The Troll Cave", slot = "One-Hand", type = "Dagger", zone = "Dun Morogh Quests", reqLevel = 1, questID = 182, side = "Alliance", choice = 182 },
    [1010] = { name = "Gnarled Short Staff", source = "Return to Bellowfiz", slot = "Two-Hand", type = "Staff", zone = "Dun Morogh Quests", reqLevel = 2, questID = 320, side = "Alliance", choice = 320 },
    [1011] = { name = "Sharp Axe", source = "Return to Bellowfiz", slot = "Main Hand", type = "One-Handed Axe", zone = "Dun Morogh Quests", reqLevel = 2, questID = 320, side = "Alliance", choice = 320 },
    [10547] = { name = "Camping Knife", source = "Return to Bellowfiz", slot = "One-Hand", type = "Dagger", zone = "Dun Morogh Quests", reqLevel = 2, questID = 320, side = "Alliance", choice = 320 },
    [281322] = { name = "Frosthowl's Footwarmers", source = "Frosthowl", slot = "Feet", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 5, questID = 98326, side = "Alliance" },
    [2326] = { name = "Ivy-weave Bracers", source = "The Perfect Stout", slot = "Wrist", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 5, questID = 315, side = "Alliance", choice = 315 },
    [2905] = { name = "Goat Fur Cloak", source = "The Perfect Stout", slot = "Back", type = "Cloak", zone = "Dun Morogh Quests", reqLevel = 5, questID = 315, side = "Alliance", choice = 315 },
    [2817] = { name = "Soft Leather Tunic", source = "Protecting the Herd", slot = "Chest", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 6, questID = 314, side = "Alliance", choice = 314 },
    [3103] = { name = "Coldridge Hammer", source = "Protecting the Herd", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Dun Morogh Quests", reqLevel = 6, questID = 314, side = "Alliance", choice = 314 },
    [10549] = { name = "Rancher's Trousers", source = "Protecting the Herd", slot = "Legs", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 6, questID = 314, side = "Alliance", choice = 314 },
    [2900] = { name = "Stone Buckler", source = "Frostmane Hold", slot = "Shield", type = "Shield", zone = "Dun Morogh Quests", reqLevel = 7, questID = 287, side = "Alliance", choice = 287 },
    [3216] = { name = "Warm Winter Robe", source = "Frostmane Hold", slot = "Chest", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 287, side = "Alliance", choice = 287 },
    [3152] = { name = "Driving Gloves", source = "Operation Recombobulation", slot = "Hands", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 412, side = "Alliance", choice = 412 },
    [3153] = { name = "Oil-stained Cloak", source = "Operation Recombobulation", slot = "Back", type = "Cloak", zone = "Dun Morogh Quests", reqLevel = 7, questID = 412, side = "Alliance", choice = 412 },
    [6177] = { name = "Ironwrought Bracers", source = "Tundra MacGrann's Stolen Stash", slot = "Wrist", type = "Mail Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 312, side = "Alliance", choice = 312 },
    [10550] = { name = "Wooly Mittens", source = "Tundra MacGrann's Stolen Stash", slot = "Hands", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 312, side = "Alliance", choice = 312 },
    [1009] = { name = "Compact Hammer", source = "A Pilot's Revenge", slot = "Main Hand", type = "One-Handed Mace", zone = "Dun Morogh Quests", reqLevel = 8, questID = 417, side = "Alliance", choice = 417 },
    [2218] = { name = "Craftsman's Dagger", source = "A Pilot's Revenge", slot = "One-Hand", type = "Dagger", zone = "Dun Morogh Quests", reqLevel = 8, questID = 417, side = "Alliance", choice = 417 },
    [3151] = { name = "Siege Brigade Vest", source = "The Lost Pilot", slot = "Chest", type = "Mail Armor", zone = "Dun Morogh Quests", reqLevel = 8, questID = 419, side = "Alliance" },
    [3565] = { name = "Beerstained Gloves", source = "Search for Incendicite", slot = "Hands", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 20, questID = 466, side = "Alliance" },
}

SGJ.ZoneMeta["Durotar Quests"] = { name = "Durotar Quests", min = 1, world = true }
SGJ.DungeonDB["Durotar Quests"] = {
    [4921] = { name = "Dust-covered Leggings", source = "Burning Blade Medallion", slot = "Legs", type = "Leather Armor", zone = "Durotar Quests", reqLevel = 1, questID = 794, side = "Horde", choice = 794 },
    [4922] = { name = "Jagged Chain Vest", source = "Burning Blade Medallion", slot = "Chest", type = "Mail Armor", zone = "Durotar Quests", reqLevel = 1, questID = 794, side = "Horde", choice = 794 },
    [6713] = { name = "Ripped Pants", source = "Burning Blade Medallion", slot = "Legs", type = "Cloth Armor", zone = "Durotar Quests", reqLevel = 1, questID = 794, side = "Horde", choice = 794 },
    [4914] = { name = "Battleworn Leather Gloves", source = "Cutting Teeth", slot = "Hands", type = "Leather Armor", zone = "Durotar Quests", reqLevel = 1, questID = 788, side = "Horde", choice = 788 },
    [4915] = { name = "Soft Wool Boots", source = "Cutting Teeth", slot = "Feet", type = "Cloth Armor", zone = "Durotar Quests", reqLevel = 1, questID = 788, side = "Horde", choice = 788 },
    [4916] = { name = "Soft Wool Vest", source = "Sarkoth", slot = "Chest", type = "Cloth Armor", zone = "Durotar Quests", reqLevel = 1, questID = 804, side = "Horde", choice = 804 },
    [4917] = { name = "Battleworn Chain Leggings", source = "Sarkoth", slot = "Legs", type = "Mail Armor", zone = "Durotar Quests", reqLevel = 1, questID = 804, side = "Horde", choice = 804 },
    [4919] = { name = "Soft Wool Belt", source = "Sting of the Scorpid", slot = "Waist", type = "Cloth Armor", zone = "Durotar Quests", reqLevel = 1, questID = 789, side = "Horde", choice = 789 },
    [4920] = { name = "Battleworn Cape", source = "Sting of the Scorpid", slot = "Back", type = "Cloak", zone = "Durotar Quests", reqLevel = 1, questID = 789, side = "Horde", choice = 789 },
    [4923] = { name = "Primitive Hatchet", source = "Vile Familiars", slot = "Main Hand", type = "One-Handed Axe", zone = "Durotar Quests", reqLevel = 2, questID = 792, side = "Horde", choice = 792 },
    [4924] = { name = "Primitive Club", source = "Vile Familiars", slot = "Main Hand", type = "One-Handed Mace", zone = "Durotar Quests", reqLevel = 2, questID = 792, side = "Horde", choice = 792 },
    [4925] = { name = "Primitive Hand Blade", source = "Vile Familiars", slot = "One-Hand", type = "Dagger", zone = "Durotar Quests", reqLevel = 2, questID = 792, side = "Horde", choice = 792 },
    [5778] = { name = "Primitive Walking Stick", source = "Vile Familiars", slot = "Two-Hand", type = "Staff", zone = "Durotar Quests", reqLevel = 2, questID = 792, side = "Horde", choice = 792 },
    [4928] = { name = "Sandrunner Wristguards", source = "From The Wreckage....", slot = "Wrist", type = "Leather Armor", zone = "Durotar Quests", reqLevel = 3, questID = 825, side = "Horde", choice = 825 },
    [4935] = { name = "Wide Metal Girdle", source = "From The Wreckage....", slot = "Waist", type = "Mail Armor", zone = "Durotar Quests", reqLevel = 3, questID = 825, side = "Horde", choice = 825 },
    [4936] = { name = "Dirt-trodden Boots", source = "From The Wreckage....", slot = "Feet", type = "Cloth Armor", zone = "Durotar Quests", reqLevel = 3, questID = 825, side = "Horde", choice = 825 },
    [4942] = { name = "Tiger Hide Boots", source = "Dark Storms", slot = "Feet", type = "Leather Armor", zone = "Durotar Quests", reqLevel = 4, questID = 806, side = "Horde" },
    [281268] = { name = "Depleted Ritual Band", source = "Forgotten Loa Idols", slot = "Finger", type = "Ring", zone = "Durotar Quests", reqLevel = 4, questID = 97225, side = "Horde" },
    [4939] = { name = "Steady Bastard Sword", source = "Skull Rock", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Durotar Quests", reqLevel = 4, questID = 827, side = "Horde", choice = 827 },
    [4947] = { name = "Jagged Dagger", source = "Skull Rock", slot = "One-Hand", type = "Dagger", zone = "Durotar Quests", reqLevel = 4, questID = 827, side = "Horde", choice = 827 },
    [4948] = { name = "Stinging Mace", source = "Skull Rock", slot = "Main Hand", type = "One-Handed Mace", zone = "Durotar Quests", reqLevel = 4, questID = 827, side = "Horde", choice = 827 },
    [4940] = { name = "Veiled Grips", source = "Zalazane", slot = "Hands", type = "Leather Armor", zone = "Durotar Quests", reqLevel = 4, questID = 826, side = "Horde", choice = 826 },
    [4946] = { name = "Lightweight Boots", source = "Zalazane", slot = "Feet", type = "Mail Armor", zone = "Durotar Quests", reqLevel = 4, questID = 826, side = "Horde", choice = 826 },
    [281267] = { name = "Raptorscale Pants", source = "Bloodtalon Matriarch", slot = "Legs", type = "Mail Armor", zone = "Durotar Quests", reqLevel = 5, questID = 97223, side = "Horde" },
    [4933] = { name = "Seasoned Fighter's Cloak", source = "Thwarting Kolkar Aggression", slot = "Back", type = "Cloak", zone = "Durotar Quests", reqLevel = 5, questID = 786, side = "Horde", choice = 786 },
    [6062] = { name = "Heavy Cord Bracers", source = "Thwarting Kolkar Aggression", slot = "Wrist", type = "Cloth Armor", zone = "Durotar Quests", reqLevel = 5, questID = 786, side = "Horde", choice = 786 },
    [4929] = { name = "Light Scorpid Armor", source = "Need for a Cure", slot = "Chest", type = "Leather Armor", zone = "Durotar Quests", reqLevel = 7, questID = 812, side = "Horde", choice = 812 },
    [4937] = { name = "Charging Buckler", source = "Need for a Cure", slot = "Shield", type = "Shield", zone = "Durotar Quests", reqLevel = 7, questID = 812, side = "Horde", choice = 812 },
    [4931] = { name = "Hickory Shortbow", source = "Securing the Lines", slot = "Ranged", type = "Bow", zone = "Durotar Quests", reqLevel = 7, questID = 835, side = "Horde", choice = 835 },
    [4932] = { name = "Harpy Wing Clipper", source = "Securing the Lines", slot = "Main Hand", type = "One-Handed Sword", zone = "Durotar Quests", reqLevel = 7, questID = 835, side = "Horde", choice = 835 },
    [4938] = { name = "Blemished Wooden Staff", source = "Securing the Lines", slot = "Two-Hand", type = "Staff", zone = "Durotar Quests", reqLevel = 7, questID = 835, side = "Horde", choice = 835 },
    [281274] = { name = "Makeshift Stormcaller", source = "Stormy Potential", slot = "Two-Hand", type = "Staff", zone = "Durotar Quests", reqLevel = 7, questID = 97282, side = "Horde" },
    [4944] = { name = "Handsewn Cloak", source = "Lost But Not Forgotten", slot = "Back", type = "Cloak", zone = "Durotar Quests", reqLevel = 8, questID = 816, side = "Horde" },
    [5420] = { name = "Banshee Armor", source = "The Demon Seed", slot = "Chest", type = "Cloth Armor", zone = "Durotar Quests", reqLevel = 9, questID = 924, side = "Horde" },
}

SGJ.ZoneMeta["Duskwood Quests"] = { name = "Duskwood Quests", min = 17, world = true }
SGJ.DungeonDB["Duskwood Quests"] = {
    [3559] = { name = "Night Watch Gauntlets", source = "Eight-Legged Menaces", slot = "Hands", type = "Mail Armor", zone = "Duskwood Quests", reqLevel = 17, questID = 245, side = "Alliance" },
    [1131] = { name = "Totem of Infliction", source = "The Totem of Infliction", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Duskwood Quests", reqLevel = 18, questID = 101, side = "Alliance" },
    [3560] = { name = "Mantle of Honor", source = "Bride of the Embalmer", slot = "Shoulder", type = "Cloth Armor", zone = "Duskwood Quests", reqLevel = 20, questID = 253, side = "Alliance", choice = 253 },
    [6223] = { name = "Crest of Darkshire", source = "Bride of the Embalmer", slot = "Shield", type = "Shield", zone = "Duskwood Quests", reqLevel = 20, questID = 253, side = "Alliance" },
    [270044] = { name = "Darkshire Shoulderguards", source = "Bride of the Embalmer", slot = "Shoulder", type = "Leather Armor", zone = "Duskwood Quests", reqLevel = 20, questID = 253, side = "Alliance", choice = 253 },
    [7106] = { name = "Zodiac Gloves", source = "Look to the Stars", slot = "Hands", type = "Cloth Armor", zone = "Duskwood Quests", reqLevel = 20, questID = 181, side = "Alliance", choice = 181 },
    [7107] = { name = "Belt of the Stars", source = "Look to the Stars", slot = "Waist", type = "Mail Armor", zone = "Duskwood Quests", reqLevel = 20, questID = 181, side = "Alliance", choice = 181 },
    [1282] = { name = "Sparkmetal Coif", source = "Morbent Fel", slot = "Head", type = "Mail Armor", zone = "Duskwood Quests", reqLevel = 20, questID = 55, side = "Alliance", choice = 55 },
    [2953] = { name = "Watch Master's Cloak", source = "Morbent Fel", slot = "Back", type = "Cloak", zone = "Duskwood Quests", reqLevel = 20, questID = 55, side = "Alliance", choice = 55 },
    [2954] = { name = "Night Watch Pantaloons", source = "Morbent Fel", slot = "Legs", type = "Cloth Armor", zone = "Duskwood Quests", reqLevel = 20, questID = 55, side = "Alliance", choice = 55 },
    [7344] = { name = "Torch of Holy Flame", source = "Morbent Fel", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Duskwood Quests", reqLevel = 20, questID = 55, side = "Alliance" },
    [2043] = { name = "Ring of Forlorn Spirits", source = "The Legend of Stalvan", slot = "Finger", type = "Ring", zone = "Duskwood Quests", reqLevel = 22, questID = 98, side = "Alliance", choice = 98 },
    [2044] = { name = "Crescent of Forlorn Spirits", source = "The Legend of Stalvan", slot = "Main Hand", type = "One-Handed Axe", zone = "Duskwood Quests", reqLevel = 22, questID = 98, side = "Alliance", choice = 98 },
    [1547] = { name = "Shield of the Faith", source = "Worgen in the Woods", slot = "Shield", type = "Shield", zone = "Duskwood Quests", reqLevel = 23, questID = 223, side = "Alliance", choice = 223 },
    [2902] = { name = "Cloak of the Faith", source = "Worgen in the Woods", slot = "Back", type = "Cloak", zone = "Duskwood Quests", reqLevel = 23, questID = 223, side = "Alliance", choice = 223 },
    [5244] = { name = "Consecrated Wand", source = "Worgen in the Woods", slot = "Ranged", type = "Wand", zone = "Duskwood Quests", reqLevel = 23, questID = 223, side = "Alliance" },
    [2000] = { name = "Archeus", source = "A Daughter's Love", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Duskwood Quests", reqLevel = 28, questID = 231, side = "Alliance" },
    [6832] = { name = "Cloak of Blight", source = "Nothing But The Truth", slot = "Back", type = "Cloak", zone = "Duskwood Quests", reqLevel = 37, questID = 1383, side = "Horde", choice = 1383 },
    [11265] = { name = "Cragwood Maul", source = "Nothing But The Truth", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Duskwood Quests", reqLevel = 37, questID = 1383, side = "Horde", choice = 1383 },
}

SGJ.ZoneMeta["Dustwallow Marsh Quests"] = { name = "Dustwallow Marsh Quests", min = 25, world = true }
SGJ.DungeonDB["Dustwallow Marsh Quests"] = {
    [6719] = { name = "Windborne Belt", source = "Highperch Venom", slot = "Waist", type = "Leather Armor", zone = "Dustwallow Marsh Quests", reqLevel = 25, questID = 1135, side = "Alliance" },
    [5016] = { name = "Artisan's Trousers", source = "Jarl Needs a Blade", slot = "Legs", type = "Cloth Armor", zone = "Dustwallow Marsh Quests", reqLevel = 30, questID = 1203 },
    [9622] = { name = "Reedknot Ring", source = "Jarl Needs a Blade", slot = "Finger", type = "Ring", zone = "Dustwallow Marsh Quests", reqLevel = 30, questID = 1203 },
    [6797] = { name = "Eyepoker", source = "Questioning Reethe", slot = "Ranged", type = "Wand", zone = "Dustwallow Marsh Quests", reqLevel = 30, questID = 1273, side = "Horde", choice = 1273 },
    [6798] = { name = "Blasting Hackbut", source = "Questioning Reethe", slot = "Ranged", type = "Gun", zone = "Dustwallow Marsh Quests", reqLevel = 30, questID = 1273, side = "Horde", choice = 1273 },
    [18585] = { name = "Band of Allegiance", source = "Service to the Horde", slot = "Finger", type = "Ring", zone = "Dustwallow Marsh Quests", reqLevel = 30, questID = 7541, side = "Horde", choice = 7541 },
    [18586] = { name = "Lonetree's Circle", source = "Service to the Horde", slot = "Finger", type = "Ring", zone = "Dustwallow Marsh Quests", reqLevel = 30, questID = 7541, side = "Horde", choice = 7541 },
    [9518] = { name = "Mud's Crushers", source = "Hungry!", slot = "Hands", type = "Leather Armor", zone = "Dustwallow Marsh Quests", reqLevel = 32, questID = 1177, choice = 1177 },
    [9519] = { name = "Durtfeet Stompers", source = "Hungry!", slot = "Feet", type = "Cloth Armor", zone = "Dustwallow Marsh Quests", reqLevel = 32, questID = 1177, choice = 1177 },
    [6801] = { name = "Baroque Apron", source = "... and Bugs", slot = "Chest", type = "Cloth Armor", zone = "Dustwallow Marsh Quests", reqLevel = 33, questID = 1258, side = "Alliance" },
    [9705] = { name = "Tharg's Shoelace", source = "Army of the Black Dragon", slot = "Waist", type = "Leather Armor", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1168, side = "Horde", choice = 1168 },
    [9706] = { name = "Tharg's Disk", source = "Army of the Black Dragon", slot = "Shield", type = "Shield", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1168, side = "Horde", choice = 1168 },
    [10703] = { name = "Fiendish Skiv", source = "Challenge Overlord Mok'Morokk", slot = "One-Hand", type = "Dagger", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1173, side = "Horde", choice = 1173 },
    [10704] = { name = "Chillnail Splinter", source = "Challenge Overlord Mok'Morokk", slot = "Ranged", type = "Wand", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1173, side = "Horde", choice = 1173 },
    [9703] = { name = "Scorched Cape", source = "Identifying the Brood", slot = "Back", type = "Cloak", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1169, side = "Horde", choice = 1169 },
    [9704] = { name = "Rustler Gloves", source = "Identifying the Brood", slot = "Hands", type = "Leather Armor", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1169, side = "Horde", choice = 1169 },
    [10702] = { name = "Enormous Ogre Boots", source = "Overlord Mok'Morokk's Concern", slot = "Feet", type = "Leather Armor", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1166, side = "Horde" },
    [10700] = { name = "Encarmine Boots", source = "The Brood of Onyxia", slot = "Feet", type = "Cloth Armor", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1172, side = "Horde", choice = 1172 },
    [10701] = { name = "Boots of Zua'tec", source = "The Brood of Onyxia", slot = "Feet", type = "Mail Armor", zone = "Dustwallow Marsh Quests", reqLevel = 38, questID = 1172, side = "Horde", choice = 1172 },
}

SGJ.ZoneMeta["Eastern Plaguelands Quests"] = { name = "Eastern Plaguelands Quests", min = 50, world = true }
SGJ.DungeonDB["Eastern Plaguelands Quests"] = {
    [12846] = { name = "Argent Dawn Commission", source = "Argent Dawn Commission", slot = "Trinket", type = "Trinket", zone = "Eastern Plaguelands Quests", reqLevel = 50, questID = 5503 },
    [15855] = { name = "Ring of Protection", source = "Hidden Treasures", slot = "Finger", type = "Ring", zone = "Eastern Plaguelands Quests", reqLevel = 50, questID = 5942 },
    [15856] = { name = "Archlight Talisman", source = "Hidden Treasures", slot = "Neck", type = "Amulet", zone = "Eastern Plaguelands Quests", reqLevel = 50, questID = 5942 },
    [15857] = { name = "Magebane Scion", source = "Hidden Treasures", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Eastern Plaguelands Quests", reqLevel = 50, questID = 5942 },
    [15814] = { name = "Hameya's Slayer", source = "Hameya's Plea", slot = "One-Hand", type = "One-Handed Sword", zone = "Eastern Plaguelands Quests", reqLevel = 54, questID = 6024 },
    [15815] = { name = "Hameya's Cloak", source = "Hameya's Plea", slot = "Back", type = "Cloak", zone = "Eastern Plaguelands Quests", reqLevel = 54, questID = 6024 },
    [16992] = { name = "Smokey's Explosive Launcher", source = "When Smokey Sings, I Get Violent", slot = "Ranged", type = "Gun", zone = "Eastern Plaguelands Quests", reqLevel = 54, questID = 6041, choice = 6041 },
    [16993] = { name = "Smokey's Fireshooter", source = "When Smokey Sings, I Get Violent", slot = "Ranged", type = "Wand", zone = "Eastern Plaguelands Quests", reqLevel = 54, questID = 6041, choice = 6041 },
    [17523] = { name = "Smokey's Drape", source = "When Smokey Sings, I Get Violent", slot = "Back", type = "Cloak", zone = "Eastern Plaguelands Quests", reqLevel = 54, questID = 6041 },
    [22657] = { name = "Amulet of the Dawn", source = "Epic Armaments of Battle - Exalted Amongst the Dawn", slot = "Neck", type = "Amulet", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 9228 },
    [22659] = { name = "Medallion of the Dawn", source = "Epic Armaments of Battle - Exalted Amongst the Dawn", slot = "Neck", type = "Amulet", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 9228 },
    [22667] = { name = "Bracers of Hope", source = "Epic Armaments of Battle - Exalted Amongst the Dawn", slot = "Wrist", type = "Cloth Armor", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 9228 },
    [22668] = { name = "Bracers of Subterfuge", source = "Epic Armaments of Battle - Exalted Amongst the Dawn", slot = "Wrist", type = "Leather Armor", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 9228 },
    [22680] = { name = "Band of Resolution", source = "Superior Armaments of Battle - Exalted Amongst the Dawn", slot = "Finger", type = "Ring", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 9227 },
    [22681] = { name = "Band of Piety", source = "Superior Armaments of Battle - Exalted Amongst the Dawn", slot = "Finger", type = "Ring", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 9227 },
    [22688] = { name = "Verimonde's Last Resort", source = "Superior Armaments of Battle - Exalted Amongst the Dawn", slot = "Main Hand", type = "Dagger", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 9227 },
    [13243] = { name = "Argent Defender", source = "The Argent Hold", slot = "Shield", type = "Shield", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 5265, choice = 5265 },
    [13246] = { name = "Argent Avenger", source = "The Argent Hold", slot = "One-Hand", type = "One-Handed Sword", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 5265, choice = 5265 },
    [13249] = { name = "Argent Crusader", source = "The Argent Hold", slot = "Two-Hand", type = "Staff", zone = "Eastern Plaguelands Quests", reqLevel = 55, questID = 5265, choice = 5265 },
    [16994] = { name = "Duskwing Gloves", source = "Duskwing, Oh How I Hate Thee...", slot = "Hands", type = "Leather Armor", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6135, side = "Horde", choice = 6135 },
    [16995] = { name = "Duskwing Mantle", source = "Duskwing, Oh How I Hate Thee...", slot = "Shoulder", type = "Leather Armor", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6135, side = "Horde", choice = 6135 },
    [16996] = { name = "Gorewood Bow", source = "Order Must Be Restored", slot = "Ranged", type = "Bow", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6187 },
    [16997] = { name = "Stormrager", source = "Order Must Be Restored", slot = "Ranged", type = "Wand", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6187 },
    [16998] = { name = "Sacred Protector", source = "Order Must Be Restored", slot = "Shield", type = "Shield", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6187 },
    [17002] = { name = "Ichor Spitter", source = "The Corpulent One", slot = "One-Hand", type = "One-Handed Axe", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6136, side = "Horde", choice = 6136 },
    [17003] = { name = "Skullstone Hammer", source = "The Corpulent One", slot = "Main Hand", type = "One-Handed Mace", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6136, side = "Horde", choice = 6136 },
    [17004] = { name = "Sarah's Guide", source = "The Corpulent One", slot = "Two-Hand", type = "Staff", zone = "Eastern Plaguelands Quests", reqLevel = 56, questID = 6136, side = "Horde", choice = 6136 },
}

SGJ.ZoneMeta["Elwynn Forest Quests"] = { name = "Elwynn Forest Quests", min = 1, world = true }
SGJ.DungeonDB["Elwynn Forest Quests"] = {
    [248005] = { name = "Northshire Hammer", source = "Rare Books", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 91777, side = "Alliance", choice = 91777 },
    [248006] = { name = "Militia Sword", source = "Rare Books", slot = "Main Hand", type = "One-Handed Sword", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 91777, side = "Alliance", choice = 91777 },
    [248007] = { name = "Militia Shortblade", source = "Rare Books", slot = "One-Hand", type = "Dagger", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 91777, side = "Alliance", choice = 91777 },
    [248008] = { name = "Apprentice's Spellstaff", source = "Rare Books", slot = "Two-Hand", type = "Staff", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 91777, side = "Alliance", choice = 91777 },
    [6078] = { name = "Pikeman Shield", source = "Report to Goldshire", slot = "Shield", type = "Shield", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 54, side = "Alliance" },
    [2186] = { name = "Outfitter Belt", source = "Skirmish at Echo Ridge", slot = "Waist", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 21, side = "Alliance", choice = 21 },
    [2691] = { name = "Outfitter Boots", source = "Skirmish at Echo Ridge", slot = "Feet", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 21, side = "Alliance", choice = 21 },
    [11192] = { name = "Outfitter Gloves", source = "Skirmish at Echo Ridge", slot = "Hands", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 21, side = "Alliance", choice = 21 },
    [80] = { name = "Soft Fur-lined Shoes", source = "Wolves Across the Border", slot = "Feet", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 33, side = "Alliance", choice = 33 },
    [6070] = { name = "Wolfskin Bracers", source = "Wolves Across the Border", slot = "Wrist", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 33, side = "Alliance", choice = 33 },
    [60] = { name = "Layered Tunic", source = "Bounty on Garrick Padfoot", slot = "Chest", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 6, side = "Alliance", choice = 6 },
    [3070] = { name = "Ensign Cloak", source = "Bounty on Garrick Padfoot", slot = "Back", type = "Cloak", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 6, side = "Alliance", choice = 6 },
    [6076] = { name = "Tapered Pants", source = "Bounty on Garrick Padfoot", slot = "Legs", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 6, side = "Alliance", choice = 6 },
    [1161] = { name = "Militia Shortsword", source = "Brotherhood of Thieves", slot = "Main Hand", type = "One-Handed Sword", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18, side = "Alliance", choice = 18 },
    [2224] = { name = "Militia Dagger", source = "Brotherhood of Thieves", slot = "One-Hand", type = "Dagger", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18, side = "Alliance", choice = 18 },
    [5579] = { name = "Militia Warhammer", source = "Brotherhood of Thieves", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18, side = "Alliance", choice = 18 },
    [5580] = { name = "Militia Hammer", source = "Brotherhood of Thieves", slot = "Main Hand", type = "One-Handed Mace", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18, side = "Alliance", choice = 18 },
    [2690] = { name = "Latched Belt", source = "Grape Manifest", slot = "Waist", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 3905, side = "Alliance", choice = 3905 },
    [11475] = { name = "Wine-stained Cloak", source = "Grape Manifest", slot = "Back", type = "Cloak", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 3905, side = "Alliance", choice = 3905 },
    [983] = { name = "Red Linen Sash", source = "Red Linen Goods", slot = "Waist", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 4, questID = 83, side = "Alliance" },
    [1359] = { name = "Lion-stamped Gloves", source = "Goldtooth", slot = "Hands", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 87, side = "Alliance" },
    [6084] = { name = "Stormwind Guard Leggings", source = "WANTED: \"Hogger\"", slot = "Legs", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 176, side = "Alliance", choice = 176 },
    [6085] = { name = "Footman Tunic", source = "WANTED: \"Hogger\"", slot = "Chest", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 176, side = "Alliance", choice = 176 },
    [6215] = { name = "Balanced Fighting Stick", source = "WANTED: \"Hogger\"", slot = "Two-Hand", type = "Staff", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 176, side = "Alliance", choice = 176 },
    [270000] = { name = "Apprentice Wizard's Gown", source = "WANTED: \"Hogger\"", slot = "Chest", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 176, side = "Alliance", choice = 176 },
    [1173] = { name = "Weather-worn Boots", source = "Princess Must Die!", slot = "Feet", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 88, side = "Alliance", choice = 88 },
    [1182] = { name = "Brass-studded Bracers", source = "Princess Must Die!", slot = "Wrist", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 88, side = "Alliance", choice = 88 },
    [11191] = { name = "Farmer's Boots", source = "Princess Must Die!", slot = "Feet", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 88, side = "Alliance", choice = 88 },
    [2238] = { name = "Urchin's Pants", source = "Riverpaw Gnoll Bounty", slot = "Legs", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 11, side = "Alliance", choice = 11 },
    [2249] = { name = "Militia Buckler", source = "Riverpaw Gnoll Bounty", slot = "Shield", type = "Shield", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 11, side = "Alliance", choice = 11 },
    [1008] = { name = "Well-used Sword", source = "Bounty on Murlocs", slot = "Main Hand", type = "One-Handed Sword", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 46, side = "Alliance", choice = 46 },
    [1158] = { name = "Solid Metal Club", source = "Bounty on Murlocs", slot = "Main Hand", type = "One-Handed Mace", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 46, side = "Alliance", choice = 46 },
    [4840] = { name = "Long Bayonet", source = "Bounty on Murlocs", slot = "One-Hand", type = "Dagger", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 46, side = "Alliance", choice = 46 },
    [276686] = { name = "Junior's Hunting Bow", source = "Bounty on Murlocs", slot = "Ranged", type = "Bow", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 46, side = "Alliance", choice = 46 },
    [1171] = { name = "Well-stitched Robe", source = "Cloth and Leather Armor", slot = "Chest", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 59, side = "Alliance", choice = 59 },
    [2237] = { name = "Patched Pants", source = "Cloth and Leather Armor", slot = "Legs", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 59, side = "Alliance", choice = 59 },
    [1183] = { name = "Elastic Wristguards", source = "Manhunt", slot = "Wrist", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 147, side = "Alliance", choice = 147 },
    [1360] = { name = "Stormwind Chain Gloves", source = "Manhunt", slot = "Hands", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 147, side = "Alliance", choice = 147 },
}

SGJ.ZoneMeta["Epic Quests"] = { name = "Epic Quests", min = 60, world = true }
SGJ.DungeonDB["Epic Quests"] = {
    [20600] = { name = "Malfurion's Signet Ring", source = "Waking Legends", slot = "Finger", type = "Ring", zone = "Epic Quests", reqLevel = 60, questID = 8447 },
}

SGJ.QuestDB["Excavation Site"] = {
    [280766] = { name = "Satchel of Potions", source = "Changing Tastes", slot = "Trinket", type = "Trinket", zone = "Excavation Site", reqLevel = 24, questID = 95697, side = "Horde", choice = 95697 },
    [280805] = { name = "Serrated Raptor Claw", source = "Changing Tastes", slot = "One-Hand", type = "Dagger", zone = "Excavation Site", reqLevel = 24, questID = 95697, side = "Horde", choice = 95697 },
    [271719] = { name = "Furs of the Earthen Ring", source = "Earthen Echo", slot = "Back", type = "Cloak", zone = "Excavation Site", reqLevel = 24, questID = 98823, side = "Horde", choice = 98823 },
    [271766] = { name = "Heavehammer", source = "Earthen Echo", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Excavation Site", reqLevel = 24, questID = 98823 },
    [271767] = { name = "Healer's Staff", source = "Earthen Echo", slot = "Two-Hand", type = "Staff", zone = "Excavation Site", reqLevel = 24, questID = 98823 },
    [271768] = { name = "Songblade Stabilizer", source = "Fallen in the Fen", slot = "Waist", type = "Mail Armor", zone = "Excavation Site", reqLevel = 24, questID = 95795, side = "Alliance", choice = 95795 },
    [271769] = { name = "Daewyn's Girdle", source = "Fallen in the Fen", slot = "Waist", type = "Cloth Armor", zone = "Excavation Site", reqLevel = 24, questID = 95795, side = "Alliance", choice = 95795 },
    [271664] = { name = "Hornbeam Heft", source = "Horrors in the Highland", slot = "One-Hand", type = "One-Handed Axe", zone = "Excavation Site", reqLevel = 24, questID = 95646, side = "Alliance", choice = 95646 },
    [271667] = { name = "Ironwood Destroyer", source = "Horrors in the Highland", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Excavation Site", reqLevel = 24, questID = 95646, side = "Alliance", choice = 95646 },
    [271670] = { name = "Curl of Life", source = "Horrors in the Highland", slot = "Finger", type = "Ring", zone = "Excavation Site", reqLevel = 24, questID = 95646, side = "Alliance", choice = 95646 },
    [271732] = { name = "Dirt-Heavy Bracers", source = "Open the Maw", slot = "Wrist", type = "Leather Armor", zone = "Excavation Site", reqLevel = 24, questID = 95682, side = "Horde", choice = 95682 },
    [271740] = { name = "Knife-Polishing Rag", source = "Open the Maw", slot = "Wrist", type = "Cloth Armor", zone = "Excavation Site", reqLevel = 24, questID = 95682, side = "Horde", choice = 95682 },
    [271716] = { name = "Explorer's League Dustcover", source = "Prehistoric Prism", slot = "Back", type = "Cloak", zone = "Excavation Site", reqLevel = 24, questID = 98824, side = "Alliance", choice = 98824 },
}

SGJ.ZoneMeta["Felwood Quests"] = { name = "Felwood Quests", min = 45, world = true }
SGJ.DungeonDB["Felwood Quests"] = {
    [21316] = { name = "Leggings of the Ursa", source = "Deadwood of the North", slot = "Legs", type = "Plate Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8461, choice = 8461 },
    [21317] = { name = "Helm of the Pathfinder", source = "Deadwood of the North", slot = "Head", type = "Leather Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8461, choice = 8461 },
    [21326] = { name = "Defender of the Timbermaw", source = "The Root of All Evil", slot = "Trinket", type = "Trinket", zone = "Felwood Quests", reqLevel = 45, questID = 8481 },
    [21311] = { name = "Earth Warder's Vest", source = "Timbermaw Ally", slot = "Chest", type = "Cloth Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8460, choice = 8460 },
    [21312] = { name = "Belt of the Den Watcher", source = "Timbermaw Ally", slot = "Waist", type = "Mail Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8460, choice = 8460 },
    [21318] = { name = "Earth Warder's Gloves", source = "Winterfall Activity", slot = "Hands", type = "Cloth Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8464, choice = 8464 },
    [21319] = { name = "Gloves of the Pathfinder", source = "Winterfall Activity", slot = "Hands", type = "Leather Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8464, choice = 8464 },
    [21320] = { name = "Vest of the Den Watcher", source = "Winterfall Activity", slot = "Chest", type = "Mail Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8464, choice = 8464 },
    [21322] = { name = "Ursa's Embrace", source = "Winterfall Activity", slot = "Chest", type = "Plate Armor", zone = "Felwood Quests", reqLevel = 45, questID = 8464, choice = 8464 },
    [15707] = { name = "Brantwood Sash", source = "A Final Blow", slot = "Waist", type = "Cloth Armor", zone = "Felwood Quests", reqLevel = 48, questID = 5242, choice = 5242 },
    [15708] = { name = "Blight Leather Gloves", source = "A Final Blow", slot = "Hands", type = "Leather Armor", zone = "Felwood Quests", reqLevel = 48, questID = 5242, choice = 5242 },
    [15709] = { name = "Gearforge Girdle", source = "A Final Blow", slot = "Waist", type = "Plate Armor", zone = "Felwood Quests", reqLevel = 48, questID = 5242, choice = 5242 },
    [11873] = { name = "Ethereal Mist Cape", source = "Ancient Spirit", slot = "Back", type = "Cloak", zone = "Felwood Quests", reqLevel = 49, questID = 4261, side = "Alliance", choice = 4261 },
    [11874] = { name = "Clouddrift Mantle", source = "Ancient Spirit", slot = "Shoulder", type = "Leather Armor", zone = "Felwood Quests", reqLevel = 49, questID = 4261, side = "Alliance", choice = 4261 },
    [11875] = { name = "Breezecloud Bracers", source = "Further Corruption", slot = "Wrist", type = "Cloth Armor", zone = "Felwood Quests", reqLevel = 49, questID = 4906, side = "Alliance" },
    [15705] = { name = "Tidecrest Blade", source = "The Remains of Trey Lightforge", slot = "One-Hand", type = "One-Handed Sword", zone = "Felwood Quests", reqLevel = 49, questID = 5385, choice = 5385 },
    [15706] = { name = "Hunt Tracker Blade", source = "The Remains of Trey Lightforge", slot = "One-Hand", type = "Dagger", zone = "Felwood Quests", reqLevel = 49, questID = 5385, choice = 5385 },
    [15822] = { name = "Shadowskin Spaulders", source = "Runecloth", slot = "Shoulder", type = "Leather Armor", zone = "Felwood Quests", reqLevel = 50, questID = 6031, choice = 6031 },
    [15823] = { name = "Bricksteel Gauntlets", source = "Runecloth", slot = "Hands", type = "Mail Armor", zone = "Felwood Quests", reqLevel = 50, questID = 6031, choice = 6031 },
}

SGJ.ZoneMeta["Feralas Quests"] = { name = "Feralas Quests", min = 37, world = true }
SGJ.DungeonDB["Feralas Quests"] = {
    [11858] = { name = "Battlehard Cape", source = "A Grim Discovery", slot = "Back", type = "Cloak", zone = "Feralas Quests", reqLevel = 37, questID = 2976, side = "Horde", choice = 2976 },
    [11859] = { name = "Jademoon Orb", source = "A Grim Discovery", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Feralas Quests", reqLevel = 37, questID = 2976, side = "Horde", choice = 2976 },
    [10705] = { name = "Firwillow Wristbands", source = "Doling Justice", slot = "Wrist", type = "Cloth Armor", zone = "Feralas Quests", reqLevel = 38, questID = 2972, side = "Alliance", choice = 2972 },
    [10706] = { name = "Nightscale Girdle", source = "Doling Justice", slot = "Waist", type = "Mail Armor", zone = "Feralas Quests", reqLevel = 38, questID = 2972, side = "Alliance", choice = 2972 },
    [9658] = { name = "Boots of the Maharishi", source = "Gordunni Cobalt", slot = "Feet", type = "Cloth Armor", zone = "Feralas Quests", reqLevel = 38, questID = 2987, side = "Horde", choice = 2987 },
    [9660] = { name = "Stargazer Cloak", source = "Gordunni Cobalt", slot = "Back", type = "Cloak", zone = "Feralas Quests", reqLevel = 38, questID = 2987, side = "Horde", choice = 2987 },
    [9661] = { name = "Earthclasp Barrier", source = "The Battle Plans", slot = "Shield", type = "Shield", zone = "Feralas Quests", reqLevel = 39, questID = 2903, side = "Horde", choice = 2903 },
    [9662] = { name = "Rushridge Boots", source = "The Battle Plans", slot = "Feet", type = "Plate Armor", zone = "Feralas Quests", reqLevel = 39, questID = 2903, side = "Horde", choice = 2903 },
    [19037] = { name = "Emerald Peak Spaulders", source = "Zukk'ash Report", slot = "Shoulder", type = "Plate Armor", zone = "Feralas Quests", reqLevel = 39, questID = 7732, side = "Horde", choice = 7732 },
    [19038] = { name = "Ring of Subtlety", source = "Zukk'ash Report", slot = "Finger", type = "Ring", zone = "Feralas Quests", reqLevel = 39, questID = 7732, side = "Horde", choice = 7732 },
    [11856] = { name = "Ceremonial Elven Blade", source = "A Hero's Welcome", slot = "One-Hand", type = "Dagger", zone = "Feralas Quests", reqLevel = 40, questID = 4266, side = "Alliance", choice = 4266 },
    [11857] = { name = "Sanctimonial Rod", source = "A Hero's Welcome", slot = "Two-Hand", type = "Staff", zone = "Feralas Quests", reqLevel = 40, questID = 4266, side = "Alliance", choice = 4266 },
    [9663] = { name = "Dawnrider's Chestpiece", source = "Delivering the Relic", slot = "Chest", type = "Mail Armor", zone = "Feralas Quests", reqLevel = 40, questID = 2871, side = "Alliance", choice = 2871 },
    [9664] = { name = "Sentinel's Guard", source = "Delivering the Relic", slot = "Head", type = "Plate Armor", zone = "Feralas Quests", reqLevel = 40, questID = 2871, side = "Alliance", choice = 2871 },
    [19041] = { name = "Pratt's Handcrafted Tunic", source = "Improved Quality", slot = "Chest", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 40, questID = 7733, side = "Alliance" },
    [19042] = { name = "Jangdor's Handcrafted Tunic", source = "Improved Quality", slot = "Chest", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 40, questID = 7734, side = "Horde" },
    [9647] = { name = "Failed Flying Experiment", source = "Rescue OOX-22/FE!", slot = "Shoulder", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 40, questID = 2767, choice = 2767 },
    [9648] = { name = "Chainlink Towel", source = "Rescue OOX-22/FE!", slot = "Back", type = "Cloak", zone = "Feralas Quests", reqLevel = 40, questID = 2767, choice = 2767 },
    [9630] = { name = "Pratt's Handcrafted Boots", source = "The Mark of Quality", slot = "Feet", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 40, questID = 2821, side = "Alliance", choice = 2821 },
    [9631] = { name = "Pratt's Handcrafted Gloves", source = "The Mark of Quality", slot = "Hands", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 40, questID = 2821, side = "Alliance", choice = 2821 },
    [9632] = { name = "Jangdor's Handcrafted Gloves", source = "The Mark of Quality", slot = "Hands", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 40, questID = 2822, side = "Horde", choice = 2822 },
    [9633] = { name = "Jangdor's Handcrafted Boots", source = "The Mark of Quality", slot = "Feet", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 40, questID = 2822, side = "Horde", choice = 2822 },
    [9683] = { name = "Strength of the Treant", source = "Weapons of Spirit", slot = "Two-Hand", type = "Staff", zone = "Feralas Quests", reqLevel = 40, questID = 3129, side = "Horde", choice = 3129 },
    [9684] = { name = "Force of the Hippogryph", source = "Weapons of Spirit", slot = "Main Hand", type = "One-Handed Axe", zone = "Feralas Quests", reqLevel = 40, questID = 3129, side = "Horde", choice = 3129 },
    [9686] = { name = "Spirit of the Faerie Dragon", source = "Weapons of Spirit", slot = "Main Hand", type = "One-Handed Mace", zone = "Feralas Quests", reqLevel = 40, questID = 3129, side = "Horde", choice = 3129 },
    [10652] = { name = "Will of the Mountain Giant", source = "Weapons of Spirit", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Feralas Quests", reqLevel = 40, questID = 3129, side = "Horde", choice = 3129 },
    [9654] = { name = "Cairnstone Sliver", source = "The Morrow Stone", slot = "Ranged", type = "Wand", zone = "Feralas Quests", reqLevel = 42, questID = 2942, side = "Alliance", choice = 2942 },
    [9655] = { name = "Seedtime Hoop", source = "The Morrow Stone", slot = "Finger", type = "Ring", zone = "Feralas Quests", reqLevel = 42, questID = 2942, side = "Alliance", choice = 2942 },
    [9656] = { name = "Granite Grips", source = "Wandering Shay", slot = "Hands", type = "Plate Armor", zone = "Feralas Quests", reqLevel = 44, questID = 2845, side = "Alliance", choice = 2845 },
    [9657] = { name = "Vinehedge Cinch", source = "Wandering Shay", slot = "Waist", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 44, questID = 2845, side = "Alliance", choice = 2845 },
    [9665] = { name = "Wingcrest Gloves", source = "Dark Heart", slot = "Hands", type = "Cloth Armor", zone = "Feralas Quests", reqLevel = 45, questID = 3062, side = "Horde", choice = 3062 },
    [9666] = { name = "Stronghorn Girdle", source = "Dark Heart", slot = "Waist", type = "Mail Armor", zone = "Feralas Quests", reqLevel = 45, questID = 3062, side = "Horde", choice = 3062 },
    [19039] = { name = "Zorbin's Water Resistant Hat", source = "Fuel for the Zapping", slot = "Head", type = "Leather Armor", zone = "Feralas Quests", reqLevel = 45, questID = 7721 },
    [19040] = { name = "Zorbin's Mega-Slicer", source = "Zapped Giants", slot = "One-Hand", type = "One-Handed Sword", zone = "Feralas Quests", reqLevel = 45, questID = 7003 },
    [11888] = { name = "Quintis' Research Gloves", source = "The Mystery of Morrowgrain", slot = "Hands", type = "Cloth Armor", zone = "Feralas Quests", reqLevel = 47, questID = 3791, side = "Alliance", choice = 3791 },
    [11889] = { name = "Bark Iron Pauldrons", source = "The Mystery of Morrowgrain", slot = "Shoulder", type = "Plate Armor", zone = "Feralas Quests", reqLevel = 47, questID = 3791, side = "Alliance", choice = 3791 },
}

SGJ.ZoneMeta["Fishing Quests"] = { name = "Fishing Quests", min = 1, world = true }
SGJ.DungeonDB["Fishing Quests"] = {
    [19970] = { name = "Arcanite Fishing Pole", source = "Master Angler", slot = "Two-Hand", type = "Fishing Pole", zone = "Fishing Quests", reqLevel = 1, questID = 8193, choice = 8193 },
    [19979] = { name = "Hook of the Master Angler", source = "Master Angler", slot = "Trinket", type = "Trinket", zone = "Fishing Quests", reqLevel = 1, questID = 8193, choice = 8193 },
    [19969] = { name = "Nat Pagle's Extreme Anglin' Boots", source = "Rare Fish - Brownell's Blue Striped Racer", slot = "Feet", type = "Cloth Armor", zone = "Fishing Quests", reqLevel = 1, questID = 8225 },
    [19972] = { name = "Lucky Fishing Hat", source = "Rare Fish - Keefer's Angelfish", slot = "Head", type = "Cloth Armor", zone = "Fishing Quests", reqLevel = 1, questID = 8221 },
}

SGJ.QuestDB["Gnomeregan"] = {
    [9535] = { name = "Fire-welded Bracers", source = "A Fine Mess", slot = "Wrist", type = "Mail Armor", zone = "Gnomeregan", reqLevel = 20, questID = 2904, choice = 2904 },
    [9536] = { name = "Fairywing Mantle", source = "A Fine Mess", slot = "Shoulder", type = "Cloth Armor", zone = "Gnomeregan", reqLevel = 20, questID = 2904, choice = 2904 },
    [270042] = { name = "Technician's Bracers", source = "A Fine Mess", slot = "Wrist", type = "Leather Armor", zone = "Gnomeregan", reqLevel = 20, questID = 2904, choice = 2904 },
    [9608] = { name = "Shoni's Disarming Tool", source = "Gyrodrillmatic Excavationators", slot = "Off Hand", type = "One-Handed Axe", zone = "Gnomeregan", reqLevel = 20, questID = 2928, side = "Alliance", choice = 2928 },
    [9609] = { name = "Shilly Mitts", source = "Gyrodrillmatic Excavationators", slot = "Hands", type = "Cloth Armor", zone = "Gnomeregan", reqLevel = 20, questID = 2928, side = "Alliance", choice = 2928 },
    [270045] = { name = "Operator's Gloves", source = "Gyrodrillmatic Excavationators", slot = "Hands", type = "Leather Armor", zone = "Gnomeregan", reqLevel = 20, questID = 2928, side = "Alliance", choice = 2928 },
    [9604] = { name = "Mechanic's Pipehammer", source = "Data Rescue", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Gnomeregan", reqLevel = 25, questID = 2930, side = "Alliance" },
    [9605] = { name = "Repairman's Cape", source = "Data Rescue", slot = "Back", type = "Cloak", zone = "Gnomeregan", reqLevel = 25, questID = 2930, side = "Alliance" },
    [9623] = { name = "Civinad Robes", source = "Rig Wars", slot = "Chest", type = "Cloth Armor", zone = "Gnomeregan", reqLevel = 25, questID = 2841 },
    [9624] = { name = "Triprunner Dungarees", source = "Rig Wars", slot = "Legs", type = "Leather Armor", zone = "Gnomeregan", reqLevel = 25, questID = 2841 },
    [9625] = { name = "Dual Reinforced Leggings", source = "Rig Wars", slot = "Legs", type = "Mail Armor", zone = "Gnomeregan", reqLevel = 25, questID = 2841 },
}

SGJ.QuestDB["Hall of Thanes"] = {
    [279894] = { name = "Calibrated Blunderbuss", source = "Old Ironforge Incursion", slot = "Ranged", type = "Gun", zone = "Hall of Thanes", reqLevel = 9, questID = 96393, side = "Alliance", choice = 96393 },
    [279895] = { name = "Ironforge Greathammer", source = "Old Ironforge Incursion", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Hall of Thanes", reqLevel = 9, questID = 96393, side = "Alliance", choice = 96393 },
    [279896] = { name = "Deepblaze", source = "Old Ironforge Incursion", slot = "Ranged", type = "Wand", zone = "Hall of Thanes", reqLevel = 9, questID = 96393, side = "Alliance", choice = 96393 },
    [279899] = { name = "Catacomb Cloak", source = "An Ancient Grudge", slot = "Back", type = "Cloak", zone = "Hall of Thanes", reqLevel = 10, questID = 96395, choice = 96395 },
    [279900] = { name = "Deepgrave Trousers", source = "An Ancient Grudge", slot = "Legs", type = "Leather Armor", zone = "Hall of Thanes", reqLevel = 10, questID = 96395, choice = 96395 },
    [279898] = { name = "Dwarven Tome", source = "Important Heirlooms", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Hall of Thanes", reqLevel = 10, questID = 96403, side = "Alliance", choice = 96403 },
    [280096] = { name = "Tomb Robber's Gloves", source = "Important Heirlooms", slot = "Hands", type = "Cloth Armor", zone = "Hall of Thanes", reqLevel = 10, questID = 96403, side = "Alliance", choice = 96403 },
    [279897] = { name = "Dusty Belt", source = "The Restless Dead", slot = "Waist", type = "Leather Armor", zone = "Hall of Thanes", reqLevel = 10, questID = 96394, side = "Alliance", choice = 96394 },
    [280095] = { name = "Cryptwalker Bracers", source = "The Restless Dead", slot = "Wrist", type = "Mail Armor", zone = "Hall of Thanes", reqLevel = 10, questID = 96394, side = "Alliance", choice = 96394 },
}

SGJ.ZoneMeta["Herbalism Quests"] = { name = "Herbalism Quests", min = 9, world = true }
SGJ.DungeonDB["Herbalism Quests"] = {
    [5341] = { name = "Spore-covered Tunic", source = "Root Samples", slot = "Chest", type = "Leather Armor", zone = "Herbalism Quests", reqLevel = 9, questID = 866 },
}

SGJ.ZoneMeta["Hillsbrad Foothills Quests"] = { name = "Hillsbrad Foothills Quests", min = 17, world = true }
SGJ.DungeonDB["Hillsbrad Foothills Quests"] = {
    [3733] = { name = "Orcish War Chain", source = "The Rescue", slot = "Chest", type = "Mail Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 17, questID = 498, side = "Horde", choice = 498 },
    [3752] = { name = "Grunt Vest", source = "The Rescue", slot = "Chest", type = "Cloth Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 17, questID = 498, side = "Horde", choice = 498 },
    [276720] = { name = "Criminal's Pauldrons", source = "WANTED: Syndicate Personnel", slot = "Shoulder", type = "Mail Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 17, questID = 549, side = "Horde" },
    [3760] = { name = "Band of the Undercity", source = "Battle of Hillsbrad", slot = "Finger", type = "Ring", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 550, side = "Horde" },
    [3761] = { name = "Deadskull Shield", source = "Battle of Hillsbrad", slot = "Shield", type = "Shield", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 550, side = "Horde", choice = 550 },
    [3822] = { name = "Runic Darkblade", source = "Battle of Hillsbrad", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 550, side = "Horde", choice = 550 },
    [6282] = { name = "Sacred Burial Trousers", source = "Battle of Hillsbrad", slot = "Legs", type = "Cloth Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 550, side = "Horde", choice = 550 },
    [3732] = { name = "Hooded Cowl", source = "Dangerous!", slot = "Head", type = "Cloth Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 567, side = "Horde" },
    [3742] = { name = "Bow of Plunder", source = "Dangerous!", slot = "Ranged", type = "Bow", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 567, side = "Horde", choice = 567 },
    [3743] = { name = "Sentry Buckler", source = "Dangerous!", slot = "Shield", type = "Shield", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 567, side = "Horde", choice = 567 },
    [5250] = { name = "Charred Wand", source = "Dangerous!", slot = "Ranged", type = "Wand", zone = "Hillsbrad Foothills Quests", reqLevel = 19, questID = 567, side = "Horde", choice = 567 },
    [3739] = { name = "Skull Ring", source = "Souvenirs of Death", slot = "Finger", type = "Ring", zone = "Hillsbrad Foothills Quests", reqLevel = 20, questID = 546, side = "Horde" },
    [2230] = { name = "Gloves of Brawn", source = "Elixir of Pain", slot = "Hands", type = "Mail Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 21, questID = 501, side = "Horde", choice = 501 },
    [3741] = { name = "Stomping Boots", source = "Elixir of Pain", slot = "Feet", type = "Leather Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 21, questID = 501, side = "Horde", choice = 501 },
    [6482] = { name = "Firewalker Boots", source = "Elixir of Pain", slot = "Feet", type = "Cloth Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 21, questID = 501, side = "Horde", choice = 501 },
    [3747] = { name = "Meditative Sash", source = "Elixir of Agony", slot = "Waist", type = "Leather Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 24, questID = 515, side = "Horde", choice = 515 },
    [3749] = { name = "High Apothecary Cloak", source = "Elixir of Agony", slot = "Back", type = "Cloak", zone = "Hillsbrad Foothills Quests", reqLevel = 24, questID = 515, side = "Horde", choice = 515 },
    [3755] = { name = "Fish Gutter", source = "Stormwind Ho!", slot = "Main Hand", type = "One-Handed Axe", zone = "Hillsbrad Foothills Quests", reqLevel = 25, questID = 562, side = "Alliance" },
    [3750] = { name = "Ribbed Breastplate", source = "Humbert's Sword", slot = "Chest", type = "Leather Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 26, questID = 547, side = "Horde", choice = 547 },
    [3751] = { name = "Mercenary Leggings", source = "Humbert's Sword", slot = "Legs", type = "Mail Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 26, questID = 547, side = "Horde", choice = 547 },
    [2805] = { name = "Yeti Fur Cloak", source = "Bartolo's Yeti Fur Cloak", slot = "Back", type = "Cloak", zone = "Hillsbrad Foothills Quests", reqLevel = 29, questID = 565, side = "Alliance" },
    [3764] = { name = "Mantis Boots", source = "Taretha's Gift", slot = "Feet", type = "Cloth Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 29, questID = 508, side = "Horde", choice = 508 },
    [3765] = { name = "Brigand's Pauldrons", source = "Taretha's Gift", slot = "Shoulder", type = "Mail Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 29, questID = 508, side = "Horde", choice = 508 },
    [3753] = { name = "Shepherd's Girdle", source = "Costly Menace", slot = "Waist", type = "Leather Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 30, questID = 564, side = "Alliance", choice = 564 },
    [3754] = { name = "Shepherd's Gloves", source = "Costly Menace", slot = "Hands", type = "Leather Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 30, questID = 564, side = "Alliance", choice = 564 },
    [15455] = { name = "Dustfall Robes", source = "Hints of a New Plague?", slot = "Chest", type = "Cloth Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 30, questID = 661, side = "Alliance", choice = 661 },
    [15456] = { name = "Lightstep Leggings", source = "Hints of a New Plague?", slot = "Legs", type = "Leather Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 30, questID = 661, side = "Alliance", choice = 661 },
    [4430] = { name = "Ethereal Talisman", source = "The Crown of Will", slot = "Neck", type = "Amulet", zone = "Hillsbrad Foothills Quests", reqLevel = 34, questID = 521, side = "Horde" },
    [2231] = { name = "Inferno Robe", source = "WANTED: Baron Vardus", slot = "Chest", type = "Cloth Armor", zone = "Hillsbrad Foothills Quests", reqLevel = 35, questID = 566, side = "Horde" },
}

SGJ.ZoneMeta["Hunter Quests"] = { name = "Hunter Quests", min = 50, world = true }
SGJ.DungeonDB["Hunter Quests"] = {
    [19991] = { name = "Devilsaur Eye", source = "The Green Drake", slot = "Trinket", type = "Trinket", zone = "Hunter Quests", reqLevel = 50, questID = 8232, class = "HUNTER", choice = 8232 },
    [19992] = { name = "Devilsaur Tooth", source = "The Green Drake", slot = "Trinket", type = "Trinket", zone = "Hunter Quests", reqLevel = 50, questID = 8232, class = "HUNTER", choice = 8232 },
    [20083] = { name = "Hunting Spear", source = "The Green Drake", slot = "Two-Hand", type = "Polearm", zone = "Hunter Quests", reqLevel = 50, questID = 8232, class = "HUNTER", choice = 8232 },
}

SGJ.ZoneMeta["Invasion Quests"] = { name = "Invasion Quests", min = 50, world = true }
SGJ.DungeonDB["Invasion Quests"] = {
    [23078] = { name = "Gauntlets of Undead Slaying", source = "Argent Dawn Gloves", slot = "Hands", type = "Plate Armor", zone = "Invasion Quests", reqLevel = 50, questID = 9094 },
    [23081] = { name = "Handwraps of Undead Slaying", source = "Argent Dawn Gloves", slot = "Hands", type = "Leather Armor", zone = "Invasion Quests", reqLevel = 50, questID = 9094 },
    [23082] = { name = "Handguards of Undead Slaying", source = "Argent Dawn Gloves", slot = "Hands", type = "Mail Armor", zone = "Invasion Quests", reqLevel = 50, questID = 9094 },
    [23084] = { name = "Gloves of Undead Cleansing", source = "Argent Dawn Gloves", slot = "Hands", type = "Cloth Armor", zone = "Invasion Quests", reqLevel = 50, questID = 9094 },
}

SGJ.ZoneMeta["Ironforge Quests"] = { name = "Ironforge Quests", min = 25, world = true }
SGJ.DungeonDB["Ironforge Quests"] = {
    [4535] = { name = "Ironforge Memorial Ring", source = "A King's Tribute", slot = "Finger", type = "Ring", zone = "Ironforge Quests", reqLevel = 25, questID = 700, side = "Alliance" },
    [9538] = { name = "Talvash's Gold Ring", source = "Gnome Improvement", slot = "Finger", type = "Ring", zone = "Ironforge Quests", reqLevel = 28, questID = 2948, side = "Alliance" },
    [10707] = { name = "Steelsmith Greaves", source = "Return to Tymor", slot = "Feet", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 45, questID = 3461, side = "Alliance", choice = 3461 },
    [10708] = { name = "Skullspell Orb", source = "Return to Tymor", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Ironforge Quests", reqLevel = 45, questID = 3461, side = "Alliance", choice = 3461 },
    [12050] = { name = "Hazecover Boots", source = "A Little Slime Goes a Long Way", slot = "Feet", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 48, questID = 4513, side = "Alliance", choice = 4513 },
    [12051] = { name = "Brazen Gauntlets", source = "A Little Slime Goes a Long Way", slot = "Hands", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 48, questID = 4513, side = "Alliance", choice = 4513 },
    [12102] = { name = "Ring of the Aristocrat", source = "The Smoldering Ruins of Thaurissan", slot = "Finger", type = "Ring", zone = "Ironforge Quests", reqLevel = 50, questID = 3701, side = "Alliance" },
    [21996] = { name = "Bracers of Heroism", source = "An Earnest Proposition", slot = "Wrist", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8912, side = "Alliance" },
    [22004] = { name = "Darkmantle Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8910, side = "Alliance" },
    [22011] = { name = "Beastmaster's Bindings", source = "An Earnest Proposition", slot = "Wrist", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8906, side = "Alliance" },
    [22063] = { name = "Sorcerer's Bindings", source = "An Earnest Proposition", slot = "Wrist", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8907, side = "Alliance" },
    [22071] = { name = "Deathmist Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8911, side = "Alliance" },
    [22079] = { name = "Virtuous Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8909, side = "Alliance" },
    [22088] = { name = "Soulforge Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8908, side = "Alliance" },
    [22108] = { name = "Feralheart Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8905, side = "Alliance" },
    [21995] = { name = "Boots of Heroism", source = "Anthion's Parting Words", slot = "Feet", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8959, side = "Alliance" },
    [22000] = { name = "Legplates of Heroism", source = "Anthion's Parting Words", slot = "Legs", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8959, side = "Alliance" },
    [22001] = { name = "Spaulders of Heroism", source = "Anthion's Parting Words", slot = "Shoulder", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8959, side = "Alliance" },
    [22003] = { name = "Darkmantle Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8956, side = "Alliance" },
    [22007] = { name = "Darkmantle Pants", source = "Anthion's Parting Words", slot = "Legs", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8956, side = "Alliance" },
    [22008] = { name = "Darkmantle Spaulders", source = "Anthion's Parting Words", slot = "Shoulder", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8956, side = "Alliance" },
    [22016] = { name = "Beastmaster's Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8952, side = "Alliance" },
    [22017] = { name = "Beastmaster's Pants", source = "Anthion's Parting Words", slot = "Legs", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8952, side = "Alliance" },
    [22061] = { name = "Beastmaster's Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8952, side = "Alliance" },
    [22064] = { name = "Sorcerer's Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8953, side = "Alliance" },
    [22067] = { name = "Sorcerer's Leggings", source = "Anthion's Parting Words", slot = "Legs", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8953, side = "Alliance" },
    [22068] = { name = "Sorcerer's Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8953, side = "Alliance" },
    [22072] = { name = "Deathmist Leggings", source = "Anthion's Parting Words", slot = "Legs", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8958, side = "Alliance" },
    [22073] = { name = "Deathmist Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8958, side = "Alliance" },
    [22076] = { name = "Deathmist Sandals", source = "Anthion's Parting Words", slot = "Feet", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8958, side = "Alliance" },
    [22082] = { name = "Virtuous Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8955, side = "Alliance" },
    [22084] = { name = "Virtuous Sandals", source = "Anthion's Parting Words", slot = "Feet", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8955, side = "Alliance" },
    [22085] = { name = "Virtuous Skirt", source = "Anthion's Parting Words", slot = "Legs", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8955, side = "Alliance" },
    [22087] = { name = "Soulforge Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8954, side = "Alliance" },
    [22092] = { name = "Soulforge Legplates", source = "Anthion's Parting Words", slot = "Legs", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8954, side = "Alliance" },
    [22093] = { name = "Soulforge Spaulders", source = "Anthion's Parting Words", slot = "Shoulder", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8954, side = "Alliance" },
    [22107] = { name = "Feralheart Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8951, side = "Alliance" },
    [22111] = { name = "Feralheart Kilt", source = "Anthion's Parting Words", slot = "Legs", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8951, side = "Alliance" },
    [22112] = { name = "Feralheart Spaulders", source = "Anthion's Parting Words", slot = "Shoulder", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8951, side = "Alliance" },
    [21994] = { name = "Belt of Heroism", source = "Just Compensation", slot = "Waist", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8937, side = "Alliance" },
    [21998] = { name = "Gauntlets of Heroism", source = "Just Compensation", slot = "Hands", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8937, side = "Alliance" },
    [22002] = { name = "Darkmantle Belt", source = "Just Compensation", slot = "Waist", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8935, side = "Alliance" },
    [22006] = { name = "Darkmantle Gloves", source = "Just Compensation", slot = "Hands", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8935, side = "Alliance" },
    [22010] = { name = "Beastmaster's Belt", source = "Just Compensation", slot = "Waist", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8931, side = "Alliance" },
    [22015] = { name = "Beastmaster's Gloves", source = "Just Compensation", slot = "Hands", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8931, side = "Alliance" },
    [22062] = { name = "Sorcerer's Belt", source = "Just Compensation", slot = "Waist", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8932, side = "Alliance" },
    [22066] = { name = "Sorcerer's Gloves", source = "Just Compensation", slot = "Hands", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8932, side = "Alliance" },
    [22070] = { name = "Deathmist Belt", source = "Just Compensation", slot = "Waist", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8936, side = "Alliance" },
    [22077] = { name = "Deathmist Wraps", source = "Just Compensation", slot = "Hands", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8936, side = "Alliance" },
    [22078] = { name = "Virtuous Belt", source = "Just Compensation", slot = "Waist", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8934, side = "Alliance" },
    [22081] = { name = "Virtuous Gloves", source = "Just Compensation", slot = "Hands", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8934, side = "Alliance" },
    [22086] = { name = "Soulforge Belt", source = "Just Compensation", slot = "Waist", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8933, side = "Alliance" },
    [22090] = { name = "Soulforge Gauntlets", source = "Just Compensation", slot = "Hands", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8933, side = "Alliance" },
    [22106] = { name = "Feralheart Belt", source = "Just Compensation", slot = "Waist", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8926, side = "Alliance" },
    [22110] = { name = "Feralheart Gloves", source = "Just Compensation", slot = "Hands", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8926, side = "Alliance" },
    [21997] = { name = "Breastplate of Heroism", source = "Saving the Best for Last", slot = "Chest", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9006, side = "Alliance" },
    [21999] = { name = "Helm of Heroism", source = "Saving the Best for Last", slot = "Head", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9006, side = "Alliance" },
    [22005] = { name = "Darkmantle Cap", source = "Saving the Best for Last", slot = "Head", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9004, side = "Alliance" },
    [22009] = { name = "Darkmantle Tunic", source = "Saving the Best for Last", slot = "Chest", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9004, side = "Alliance" },
    [22013] = { name = "Beastmaster's Cap", source = "Saving the Best for Last", slot = "Head", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9000, side = "Alliance" },
    [22060] = { name = "Beastmaster's Tunic", source = "Saving the Best for Last", slot = "Chest", type = "Mail Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9000, side = "Alliance" },
    [22065] = { name = "Sorcerer's Crown", source = "Saving the Best for Last", slot = "Head", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9001, side = "Alliance" },
    [22069] = { name = "Sorcerer's Robes", source = "Saving the Best for Last", slot = "Chest", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9001, side = "Alliance" },
    [22074] = { name = "Deathmist Mask", source = "Saving the Best for Last", slot = "Head", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9005, side = "Alliance" },
    [22075] = { name = "Deathmist Robe", source = "Saving the Best for Last", slot = "Chest", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9005, side = "Alliance" },
    [22080] = { name = "Virtuous Crown", source = "Saving the Best for Last", slot = "Head", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9003, side = "Alliance" },
    [22083] = { name = "Virtuous Robe", source = "Saving the Best for Last", slot = "Chest", type = "Cloth Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9003, side = "Alliance" },
    [22089] = { name = "Soulforge Breastplate", source = "Saving the Best for Last", slot = "Chest", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9002, side = "Alliance" },
    [22091] = { name = "Soulforge Helm", source = "Saving the Best for Last", slot = "Head", type = "Plate Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 9002, side = "Alliance" },
    [22109] = { name = "Feralheart Cowl", source = "Saving the Best for Last", slot = "Head", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8999, side = "Alliance" },
    [22113] = { name = "Feralheart Vest", source = "Saving the Best for Last", slot = "Chest", type = "Leather Armor", zone = "Ironforge Quests", reqLevel = 58, questID = 8999, side = "Alliance" },
}

SGJ.ZoneMeta["Legendary Quests"] = { name = "Legendary Quests", min = 60, world = true }
SGJ.DungeonDB["Legendary Quests"] = {
    [22589] = { name = "Atiesh, Greatstaff of the Guardian", source = "Atiesh, Greatstaff of the Guardian", slot = "Two-Hand", type = "Staff", zone = "Legendary Quests", reqLevel = 60, questID = 9270 },
    [22630] = { name = "Atiesh, Greatstaff of the Guardian", source = "Atiesh, Greatstaff of the Guardian", slot = "Two-Hand", type = "Staff", zone = "Legendary Quests", reqLevel = 60, questID = 9271 },
    [22631] = { name = "Atiesh, Greatstaff of the Guardian", source = "Atiesh, Greatstaff of the Guardian", slot = "Two-Hand", type = "Staff", zone = "Legendary Quests", reqLevel = 60, questID = 9257 },
    [22632] = { name = "Atiesh, Greatstaff of the Guardian", source = "Atiesh, Greatstaff of the Guardian", slot = "Two-Hand", type = "Staff", zone = "Legendary Quests", reqLevel = 60, questID = 9269 },
    [19019] = { name = "Thunderfury, Blessed Blade of the Windseeker", source = "Rise, Thunderfury!", slot = "One-Hand", type = "One-Handed Sword", zone = "Legendary Quests", reqLevel = 60, questID = 7787 },
}

SGJ.ZoneMeta["Loch Modan Quests"] = { name = "Loch Modan Quests", min = 9, world = true }
SGJ.DungeonDB["Loch Modan Quests"] = {
    [3160] = { name = "Ironplate Buckler", source = "Filthy Paws", slot = "Shield", type = "Shield", zone = "Loch Modan Quests", reqLevel = 9, questID = 307, side = "Alliance", choice = 307 },
    [3161] = { name = "Robe of the Keeper", source = "Filthy Paws", slot = "Chest", type = "Cloth Armor", zone = "Loch Modan Quests", reqLevel = 9, questID = 307, side = "Alliance", choice = 307 },
    [3166] = { name = "Ironheart Chain", source = "Filthy Paws", slot = "Chest", type = "Mail Armor", zone = "Loch Modan Quests", reqLevel = 9, questID = 307, side = "Alliance", choice = 307 },
    [281253] = { name = "Mountaineer's Greataxe", source = "Banner of the Fallen", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Loch Modan Quests", reqLevel = 10, questID = 86585, side = "Alliance", choice = 86585 },
    [281254] = { name = "Invader's Mace", source = "Banner of the Fallen", slot = "One-Hand", type = "One-Handed Mace", zone = "Loch Modan Quests", reqLevel = 10, questID = 86585, side = "Alliance", choice = 86585 },
    [2240] = { name = "Rugged Cape", source = "Crocolisk Hunting", slot = "Back", type = "Cloak", zone = "Loch Modan Quests", reqLevel = 10, questID = 385, side = "Alliance" },
    [1436] = { name = "Frontier Britches", source = "In Defense of the King's Lands", slot = "Legs", type = "Leather Armor", zone = "Loch Modan Quests", reqLevel = 10, questID = 217, side = "Alliance", choice = 217 },
    [1832] = { name = "Lucky Trousers", source = "In Defense of the King's Lands", slot = "Legs", type = "Cloth Armor", zone = "Loch Modan Quests", reqLevel = 10, questID = 217, side = "Alliance", choice = 217 },
    [6187] = { name = "Dwarven Defender", source = "In Defense of the King's Lands", slot = "Shield", type = "Shield", zone = "Loch Modan Quests", reqLevel = 10, questID = 217, side = "Alliance", choice = 217 },
    [3217] = { name = "Foreman Belt", source = "Protecting the Shipment", slot = "Waist", type = "Cloth Armor", zone = "Loch Modan Quests", reqLevel = 10, questID = 309, side = "Alliance", choice = 309 },
    [6188] = { name = "Mud Stompers", source = "Protecting the Shipment", slot = "Feet", type = "Mail Armor", zone = "Loch Modan Quests", reqLevel = 10, questID = 309, side = "Alliance", choice = 309 },
    [860] = { name = "Cavalier's Boots", source = "Rat Catching", slot = "Feet", type = "Cloth Armor", zone = "Loch Modan Quests", reqLevel = 10, questID = 416, side = "Alliance", choice = 416 },
    [3158] = { name = "Burnt Hide Bracers", source = "Rat Catching", slot = "Wrist", type = "Leather Armor", zone = "Loch Modan Quests", reqLevel = 10, questID = 416, side = "Alliance", choice = 416 },
    [2903] = { name = "Daryl's Hunting Bow", source = "A Hunter's Boast", slot = "Ranged", type = "Bow", zone = "Loch Modan Quests", reqLevel = 11, questID = 257, side = "Alliance", choice = 257 },
    [2904] = { name = "Daryl's Hunting Rifle", source = "A Hunter's Boast", slot = "Ranged", type = "Gun", zone = "Loch Modan Quests", reqLevel = 11, questID = 257, side = "Alliance", choice = 257 },
    [3572] = { name = "Daryl's Shortsword", source = "A Hunter's Challenge", slot = "One-Hand", type = "One-Handed Sword", zone = "Loch Modan Quests", reqLevel = 11, questID = 258, side = "Alliance" },
    [12522] = { name = "Bingles' Flying Gloves", source = "Bingles' Missing Supplies", slot = "Hands", type = "Leather Armor", zone = "Loch Modan Quests", reqLevel = 12, questID = 2038, side = "Alliance" },
    [281257] = { name = "Daggerfang's Daggerfang", source = "Twisting the Knife", slot = "One-Hand", type = "Dagger", zone = "Loch Modan Quests", reqLevel = 12, questID = 86758, side = "Alliance" },
    [3154] = { name = "Thelsamar Axe", source = "Gathering Idols", slot = "Main Hand", type = "One-Handed Axe", zone = "Loch Modan Quests", reqLevel = 13, questID = 297, side = "Alliance", choice = 297 },
    [5241] = { name = "Dwarven Flamestick", source = "Gathering Idols", slot = "Ranged", type = "Wand", zone = "Loch Modan Quests", reqLevel = 13, questID = 297, side = "Alliance", choice = 297 },
    [6186] = { name = "Trogg Slicer", source = "Gathering Idols", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Loch Modan Quests", reqLevel = 13, questID = 297, side = "Alliance", choice = 297 },
    [281256] = { name = "Repurposed Hair Band", source = "Silver of the Waves", slot = "Wrist", type = "Cloth Armor", zone = "Loch Modan Quests", reqLevel = 13, questID = 86614, side = "Alliance" },
    [2907] = { name = "Dwarven Tree Chopper", source = "A Dark Threat Looms", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Loch Modan Quests", reqLevel = 16, questID = 283, side = "Alliance", choice = 283 },
    [2908] = { name = "Thornblade", source = "A Dark Threat Looms", slot = "One-Hand", type = "Dagger", zone = "Loch Modan Quests", reqLevel = 16, questID = 283, side = "Alliance", choice = 283 },
    [1449] = { name = "Minor Channeling Ring", source = "WANTED: Chok'sul", slot = "Finger", type = "Ring", zone = "Loch Modan Quests", reqLevel = 17, questID = 256, side = "Alliance" },
    [6189] = { name = "Durable Chain Shoulders", source = "WANTED: Chok'sul", slot = "Shoulder", type = "Mail Armor", zone = "Loch Modan Quests", reqLevel = 17, questID = 256, side = "Alliance", choice = 256 },
    [6191] = { name = "Kimbra Boots", source = "WANTED: Chok'sul", slot = "Feet", type = "Cloth Armor", zone = "Loch Modan Quests", reqLevel = 17, questID = 256, side = "Alliance", choice = 256 },
    [270019] = { name = "Loch Walkers", source = "WANTED: Chok'sul", slot = "Feet", type = "Leather Armor", zone = "Loch Modan Quests", reqLevel = 17, questID = 256, side = "Alliance", choice = 256 },
}

SGJ.ZoneMeta["Lunar Festival Quests"] = { name = "Lunar Festival Quests", min = 1, world = true }
SGJ.DungeonDB["Lunar Festival Quests"] = {
    [21157] = { name = "Festive Green Dress", source = "Festive Lunar Dresses", slot = "Chest", type = "Armor", zone = "Lunar Festival Quests", reqLevel = 1, questID = 8864, choice = 8864 },
    [21538] = { name = "Festive Pink Dress", source = "Festive Lunar Dresses", slot = "Chest", type = "Armor", zone = "Lunar Festival Quests", reqLevel = 1, questID = 8864, choice = 8864 },
    [21539] = { name = "Festive Purple Dress", source = "Festive Lunar Dresses", slot = "Chest", type = "Armor", zone = "Lunar Festival Quests", reqLevel = 1, questID = 8864, choice = 8864 },
    [21541] = { name = "Festive Black Pant Suit", source = "Festive Lunar Pant Suits", slot = "Chest", type = "Armor", zone = "Lunar Festival Quests", reqLevel = 1, questID = 8865, choice = 8865 },
    [21543] = { name = "Festive Teal Pant Suit", source = "Festive Lunar Pant Suits", slot = "Chest", type = "Armor", zone = "Lunar Festival Quests", reqLevel = 1, questID = 8865, choice = 8865 },
    [21544] = { name = "Festive Blue Pant Suit", source = "Festive Lunar Pant Suits", slot = "Chest", type = "Armor", zone = "Lunar Festival Quests", reqLevel = 1, questID = 8865, choice = 8865 },
}

SGJ.ZoneMeta["Mage Quests"] = { name = "Mage Quests", min = 10, world = true }
SGJ.DungeonDB["Mage Quests"] = {
    [263430] = { name = "Windbough Wand", source = "Boughs in the Wind", slot = "Ranged", type = "Wand", zone = "Mage Quests", reqLevel = 10, questID = 93797, side = "Alliance", class = "MAGE", race = "Skyborne" },
    [7508] = { name = "Ley Orb", source = "Ju-Ju Heaps", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Mage Quests", reqLevel = 10, questID = 1884, class = "MAGE" },
    [9513] = { name = "Ley Staff", source = "Ju-Ju Heaps", slot = "Two-Hand", type = "Staff", zone = "Mage Quests", reqLevel = 10, questID = 1884, class = "MAGE" },
    [7507] = { name = "Arcane Orb", source = "Mage-tastic Gizmonitor", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Mage Quests", reqLevel = 10, questID = 1880, class = "MAGE" },
    [9514] = { name = "Arcane Staff", source = "Mage-tastic Gizmonitor", slot = "Two-Hand", type = "Staff", zone = "Mage Quests", reqLevel = 10, questID = 1880, class = "MAGE" },
    [7509] = { name = "Manaweave Robe", source = "Manaweave Robe", slot = "Chest", type = "Cloth Armor", zone = "Mage Quests", reqLevel = 15, questID = 1941, side = "Alliance", class = "MAGE" },
    [7510] = { name = "Lesser Spellfire Robes", source = "Spellfire Robes", slot = "Chest", type = "Cloth Armor", zone = "Mage Quests", reqLevel = 15, questID = 1962, side = "Horde", class = "MAGE" },
    [7511] = { name = "Astral Knot Robe", source = "Astral Knot Garment", slot = "Chest", type = "Cloth Armor", zone = "Mage Quests", reqLevel = 26, questID = 1942, side = "Alliance", class = "MAGE", choice = 1942 },
    [9516] = { name = "Astral Knot Blouse", source = "Astral Knot Garment", slot = "Chest", type = "Cloth Armor", zone = "Mage Quests", reqLevel = 26, questID = 1942, side = "Alliance", class = "MAGE", choice = 1942 },
    [7512] = { name = "Nether-lace Robe", source = "Nether-lace Garment", slot = "Chest", type = "Cloth Armor", zone = "Mage Quests", reqLevel = 26, questID = 1946, side = "Horde", class = "MAGE", choice = 1946 },
    [9515] = { name = "Nether-lace Tunic", source = "Nether-lace Garment", slot = "Chest", type = "Cloth Armor", zone = "Mage Quests", reqLevel = 26, questID = 1946, side = "Horde", class = "MAGE", choice = 1946 },
    [7513] = { name = "Ragefire Wand", source = "Mage's Wand", slot = "Ranged", type = "Wand", zone = "Mage Quests", reqLevel = 30, questID = 1952, class = "MAGE", choice = 1952 },
    [7514] = { name = "Icefury Wand", source = "Mage's Wand", slot = "Ranged", type = "Wand", zone = "Mage Quests", reqLevel = 30, questID = 1952, class = "MAGE", choice = 1952 },
    [11263] = { name = "Nether Force Wand", source = "Mage's Wand", slot = "Ranged", type = "Wand", zone = "Mage Quests", reqLevel = 30, questID = 1952, class = "MAGE", choice = 1952 },
    [7515] = { name = "Celestial Orb", source = "Celestial Power", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Mage Quests", reqLevel = 35, questID = 1958, class = "MAGE", choice = 1958 },
    [9517] = { name = "Celestial Stave", source = "Celestial Power", slot = "Two-Hand", type = "Staff", zone = "Mage Quests", reqLevel = 35, questID = 1958, class = "MAGE", choice = 1958 },
    [20035] = { name = "Glacial Spike", source = "Destroy Morphaz", slot = "One-Hand", type = "Dagger", zone = "Mage Quests", reqLevel = 50, questID = 8253, class = "MAGE", choice = 8253 },
    [20036] = { name = "Fire Ruby", source = "Destroy Morphaz", slot = "Trinket", type = "Trinket", zone = "Mage Quests", reqLevel = 50, questID = 8253, class = "MAGE", choice = 8253 },
    [20037] = { name = "Arcane Crystal Pendant", source = "Destroy Morphaz", slot = "Neck", type = "Amulet", zone = "Mage Quests", reqLevel = 50, questID = 8253, class = "MAGE", choice = 8253 },
}

SGJ.QuestDB["Maraudon"] = {
    [17772] = { name = "Zealous Shadowshard Pendant", source = "Shadowshard Fragments", slot = "Neck", type = "Amulet", zone = "Maraudon", reqLevel = 39, questID = 7068 },
    [17773] = { name = "Prodigious Shadowshard Pendant", source = "Shadowshard Fragments", slot = "Neck", type = "Amulet", zone = "Maraudon", reqLevel = 39, questID = 7068 },
    [17774] = { name = "Mark of the Chosen", source = "The Pariah's Instructions", slot = "Trinket", type = "Trinket", zone = "Maraudon", reqLevel = 39, questID = 7067 },
    [17775] = { name = "Acumen Robes", source = "Twisted Evils", slot = "Chest", type = "Cloth Armor", zone = "Maraudon", reqLevel = 41, questID = 7028, choice = 7028 },
    [17776] = { name = "Sprightring Helm", source = "Twisted Evils", slot = "Head", type = "Leather Armor", zone = "Maraudon", reqLevel = 41, questID = 7028, choice = 7028 },
    [17777] = { name = "Relentless Chain", source = "Twisted Evils", slot = "Chest", type = "Mail Armor", zone = "Maraudon", reqLevel = 41, questID = 7028, choice = 7028 },
    [17779] = { name = "Hulkstone Pauldrons", source = "Twisted Evils", slot = "Shoulder", type = "Plate Armor", zone = "Maraudon", reqLevel = 41, questID = 7028, choice = 7028 },
    [17768] = { name = "Woodseed Hoop", source = "Vyletongue Corruption", slot = "Finger", type = "Ring", zone = "Maraudon", reqLevel = 41, questID = 7029 },
    [17770] = { name = "Branchclaw Gauntlets", source = "Vyletongue Corruption", slot = "Hands", type = "Plate Armor", zone = "Maraudon", reqLevel = 41, questID = 7029 },
    [17778] = { name = "Sagebrush Girdle", source = "Vyletongue Corruption", slot = "Waist", type = "Leather Armor", zone = "Maraudon", reqLevel = 41, questID = 7029 },
    [17705] = { name = "Thrash Blade", source = "Corruption of Earth and Seed", slot = "One-Hand", type = "One-Handed Sword", zone = "Maraudon", reqLevel = 45, questID = 7064 },
    [17743] = { name = "Resurgence Rod", source = "Corruption of Earth and Seed", slot = "Two-Hand", type = "Staff", zone = "Maraudon", reqLevel = 45, questID = 7064 },
    [17753] = { name = "Verdant Keeper's Aim", source = "Corruption of Earth and Seed", slot = "Ranged", type = "Bow", zone = "Maraudon", reqLevel = 45, questID = 7064 },
}

SGJ.ZoneMeta["Midsummer Quests"] = { name = "Midsummer Quests", min = 1, world = true }
SGJ.DungeonDB["Midsummer Quests"] = {
    [23323] = { name = "Crown of the Fire Festival", source = "A Thief's Reward", slot = "Head", type = "Cloth Armor", zone = "Midsummer Quests", reqLevel = 1, questID = 9339 },
    [23324] = { name = "Mantle of the Fire Festival", source = "Wild Fires in the Eastern Kingdoms", slot = "Shoulder", type = "Cloth Armor", zone = "Midsummer Quests", reqLevel = 1, questID = 9323 },
}

SGJ.ZoneMeta["Moonglade Quests"] = { name = "Moonglade Quests", min = 54, world = true }
SGJ.DungeonDB["Moonglade Quests"] = {
    [18400] = { name = "Ring of Living Stone", source = "Uncovering Past Secrets", slot = "Finger", type = "Ring", zone = "Moonglade Quests", reqLevel = 54, questID = 6845, choice = 6845 },
    [18402] = { name = "Glowing Crystal Ring", source = "Uncovering Past Secrets", slot = "Finger", type = "Ring", zone = "Moonglade Quests", reqLevel = 54, questID = 6845, choice = 6845 },
    [18535] = { name = "Milli's Shield", source = "Shards of the Felvine", slot = "Shield", type = "Shield", zone = "Moonglade Quests", reqLevel = 56, questID = 5526, choice = 5526 },
    [18536] = { name = "Milli's Lexicon", source = "Shards of the Felvine", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Moonglade Quests", reqLevel = 56, questID = 5526, choice = 5526 },
    [21531] = { name = "Drake Tooth Necklace", source = "The Nightmare Manifests", slot = "Neck", type = "Amulet", zone = "Moonglade Quests", reqLevel = 60, questID = 8736, choice = 8736 },
    [21532] = { name = "Drudge Boots", source = "The Nightmare Manifests", slot = "Feet", type = "Leather Armor", zone = "Moonglade Quests", reqLevel = 60, questID = 8736, choice = 8736 },
}

SGJ.ZoneMeta["Mulgore Quests"] = { name = "Mulgore Quests", min = 1, world = true }
SGJ.DungeonDB["Mulgore Quests"] = {
    [4911] = { name = "Thick Bark Buckler", source = "Attack on Camp Narache", slot = "Shield", type = "Shield", zone = "Mulgore Quests", reqLevel = 1, questID = 781, side = "Horde" },
    [1382] = { name = "Rock Mace", source = "Rite of Strength", slot = "Main Hand", type = "One-Handed Mace", zone = "Mulgore Quests", reqLevel = 1, questID = 757, side = "Horde", choice = 757 },
    [1383] = { name = "Stone Tomahawk", source = "Rite of Strength", slot = "Main Hand", type = "One-Handed Axe", zone = "Mulgore Quests", reqLevel = 1, questID = 757, side = "Horde", choice = 757 },
    [2137] = { name = "Whittling Knife", source = "Rite of Strength", slot = "One-Hand", type = "Dagger", zone = "Mulgore Quests", reqLevel = 1, questID = 757, side = "Horde", choice = 757 },
    [5776] = { name = "Elder's Cane", source = "Rite of Strength", slot = "Two-Hand", type = "Staff", zone = "Mulgore Quests", reqLevel = 1, questID = 757, side = "Horde", choice = 757 },
    [6059] = { name = "Nomadic Vest", source = "The Battleboars", slot = "Chest", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 1, questID = 780, side = "Horde" },
    [4910] = { name = "Painted Chain Gloves", source = "The Hunt Begins", slot = "Hands", type = "Mail Armor", zone = "Mulgore Quests", reqLevel = 1, questID = 747, side = "Horde", choice = 747 },
    [4954] = { name = "Nomadic Belt", source = "The Hunt Begins", slot = "Waist", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 1, questID = 747, side = "Horde", choice = 747 },
    [4908] = { name = "Nomadic Bracers", source = "The Hunt Continues", slot = "Wrist", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 1, questID = 750, side = "Horde", choice = 750 },
    [4913] = { name = "Painted Chain Belt", source = "The Hunt Continues", slot = "Waist", type = "Mail Armor", zone = "Mulgore Quests", reqLevel = 1, questID = 750, side = "Horde", choice = 750 },
    [10635] = { name = "Painted Chain Leggings", source = "Break Sharptusk!", slot = "Legs", type = "Mail Armor", zone = "Mulgore Quests", reqLevel = 3, questID = 3376, side = "Horde", choice = 3376 },
    [10636] = { name = "Nomadic Gloves", source = "Break Sharptusk!", slot = "Hands", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 3, questID = 3376, side = "Horde", choice = 3376 },
    [4906] = { name = "Rainwalker Boots", source = "Rite of Vision", slot = "Feet", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 3, questID = 772, side = "Horde", choice = 772 },
    [4958] = { name = "Sun-beaten Cloak", source = "Rite of Vision", slot = "Back", type = "Cloak", zone = "Mulgore Quests", reqLevel = 3, questID = 772, side = "Horde", choice = 772 },
    [4909] = { name = "Kodo Hunter's Leggings", source = "Rites of the Earthmother", slot = "Legs", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 3, questID = 776, side = "Horde" },
    [277988] = { name = "Hoof-Holstered Blade", source = "Stalk With The Earthmother", slot = "One-Hand", type = "Dagger", zone = "Mulgore Quests", reqLevel = 4, questID = 76240, side = "Horde", choice = 76240 },
    [278002] = { name = "Valley Cosh", source = "Stalk With The Earthmother", slot = "Main Hand", type = "One-Handed Mace", zone = "Mulgore Quests", reqLevel = 4, questID = 76240, side = "Horde", choice = 76240 },
    [4963] = { name = "Thunderhorn Cloak", source = "Thunderhorn Cleansing", slot = "Back", type = "Cloak", zone = "Mulgore Quests", reqLevel = 4, questID = 758, side = "Horde" },
    [3443] = { name = "Ceremonial Tomahawk", source = "Thunderhorn's Report", slot = "Main Hand", type = "One-Handed Axe", zone = "Mulgore Quests", reqLevel = 4, questID = 98435, side = "Horde" },
    [4961] = { name = "Dreamwatcher Staff", source = "Thunderhorn's Report", slot = "Two-Hand", type = "Staff", zone = "Mulgore Quests", reqLevel = 4, questID = 98435, side = "Horde" },
    [281266] = { name = "Furred Belt", source = "Chakuyak", slot = "Waist", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 5, questID = 96130, side = "Horde" },
    [4972] = { name = "Cliff Runner Boots", source = "Mazzranache", slot = "Feet", type = "Mail Armor", zone = "Mulgore Quests", reqLevel = 5, questID = 766, side = "Horde", choice = 766 },
    [4973] = { name = "Plains Hunter Wristguards", source = "Mazzranache", slot = "Wrist", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 5, questID = 766, side = "Horde", choice = 766 },
    [4964] = { name = "Goblin Smasher", source = "Supervisor Fizsprocket", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Mulgore Quests", reqLevel = 5, questID = 765, side = "Horde", choice = 765 },
    [4974] = { name = "Compact Fighting Knife", source = "Supervisor Fizsprocket", slot = "One-Hand", type = "Dagger", zone = "Mulgore Quests", reqLevel = 5, questID = 765, side = "Horde", choice = 765 },
    [4969] = { name = "Fortified Bindings", source = "Dwarven Digging", slot = "Wrist", type = "Mail Armor", zone = "Mulgore Quests", reqLevel = 6, questID = 746, side = "Horde", choice = 746 },
    [4970] = { name = "Rough-hewn Kodo Leggings", source = "Dwarven Digging", slot = "Legs", type = "Leather Armor", zone = "Mulgore Quests", reqLevel = 6, questID = 746, side = "Horde", choice = 746 },
    [3079] = { name = "Skorn's Rifle", source = "The Demon Scarred Cloak", slot = "Ranged", type = "Gun", zone = "Mulgore Quests", reqLevel = 6, questID = 770, side = "Horde", choice = 770 },
    [4971] = { name = "Skorn's Hammer", source = "The Demon Scarred Cloak", slot = "Main Hand", type = "One-Handed Mace", zone = "Mulgore Quests", reqLevel = 6, questID = 770, side = "Horde", choice = 770 },
}

SGJ.ZoneMeta["Naxxramas Quests"] = { name = "Naxxramas Quests", min = 60, dungeon = true }
SGJ.DungeonDB["Naxxramas Quests"] = {
    [22518] = { name = "Belt of Faith", source = "Belt of Faith", slot = "Waist", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9117 },
    [22519] = { name = "Bindings of Faith", source = "Bindings of Faith", slot = "Wrist", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9118 },
    [22483] = { name = "Bonescythe Bracers", source = "Bonescythe Bracers", slot = "Wrist", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9084 },
    [22476] = { name = "Bonescythe Breastplate", source = "Bonescythe Breastplate", slot = "Chest", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9077 },
    [22481] = { name = "Bonescythe Gauntlets", source = "Bonescythe Gauntlets", slot = "Hands", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9082 },
    [22478] = { name = "Bonescythe Helmet", source = "Bonescythe Helmet", slot = "Head", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9079 },
    [22477] = { name = "Bonescythe Legplates", source = "Bonescythe Legplates", slot = "Legs", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9078 },
    [22479] = { name = "Bonescythe Pauldrons", source = "Bonescythe Pauldrons", slot = "Shoulder", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9080 },
    [22480] = { name = "Bonescythe Sabatons", source = "Bonescythe Sabatons", slot = "Feet", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9081 },
    [22482] = { name = "Bonescythe Waistguard", source = "Bonescythe Waistguard", slot = "Waist", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9083 },
    [22514] = { name = "Circlet of Faith", source = "Circlet of Faith", slot = "Head", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9113 },
    [22440] = { name = "Cryptstalker Boots", source = "Cryptstalker Boots", slot = "Feet", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9058 },
    [22442] = { name = "Cryptstalker Girdle", source = "Cryptstalker Girdle", slot = "Waist", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9060 },
    [22441] = { name = "Cryptstalker Handguards", source = "Cryptstalker Handguards", slot = "Hands", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9059 },
    [22438] = { name = "Cryptstalker Headpiece", source = "Cryptstalker Headpiece", slot = "Head", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9056 },
    [22437] = { name = "Cryptstalker Legguards", source = "Cryptstalker Legguards", slot = "Legs", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9055 },
    [22439] = { name = "Cryptstalker Spaulders", source = "Cryptstalker Spaulders", slot = "Shoulder", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9057 },
    [22436] = { name = "Cryptstalker Tunic", source = "Cryptstalker Tunic", slot = "Chest", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9054 },
    [22443] = { name = "Cryptstalker Wristguards", source = "Cryptstalker Wristguards", slot = "Wrist", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9061 },
    [22423] = { name = "Dreadnaught Bracers", source = "Dreadnaught Bracers", slot = "Wrist", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9042 },
    [22416] = { name = "Dreadnaught Breastplate", source = "Dreadnaught Breastplate", slot = "Chest", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9034 },
    [22421] = { name = "Dreadnaught Gauntlets", source = "Dreadnaught Gauntlets", slot = "Hands", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9040 },
    [22418] = { name = "Dreadnaught Helmet", source = "Dreadnaught Helmet", slot = "Head", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9037 },
    [22417] = { name = "Dreadnaught Legplates", source = "Dreadnaught Legplates", slot = "Legs", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9036 },
    [22419] = { name = "Dreadnaught Pauldrons", source = "Dreadnaught Pauldrons", slot = "Shoulder", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9038 },
    [22420] = { name = "Dreadnaught Sabatons", source = "Dreadnaught Sabatons", slot = "Feet", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9039 },
    [22422] = { name = "Dreadnaught Waistguard", source = "Dreadnaught Waistguard", slot = "Waist", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9041 },
    [22492] = { name = "Dreamwalker Boots", source = "Dreamwalker Boots", slot = "Feet", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9090 },
    [22494] = { name = "Dreamwalker Girdle", source = "Dreamwalker Girdle", slot = "Waist", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9092 },
    [22493] = { name = "Dreamwalker Handguards", source = "Dreamwalker Handguards", slot = "Hands", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9091 },
    [22490] = { name = "Dreamwalker Headpiece", source = "Dreamwalker Headpiece", slot = "Head", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9088 },
    [22489] = { name = "Dreamwalker Legguards", source = "Dreamwalker Legguards", slot = "Legs", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9087 },
    [22491] = { name = "Dreamwalker Spaulders", source = "Dreamwalker Spaulders", slot = "Shoulder", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9089 },
    [22488] = { name = "Dreamwalker Tunic", source = "Dreamwalker Tunic", slot = "Chest", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9086 },
    [22495] = { name = "Dreamwalker Wristguards", source = "Dreamwalker Wristguards", slot = "Wrist", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9093 },
    [22468] = { name = "Earthshatter Boots", source = "Earthshatter Boots", slot = "Feet", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9072 },
    [22470] = { name = "Earthshatter Girdle", source = "Earthshatter Girdle", slot = "Waist", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9074 },
    [22469] = { name = "Earthshatter Handguards", source = "Earthshatter Handguards", slot = "Hands", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9073 },
    [22466] = { name = "Earthshatter Headpiece", source = "Earthshatter Headpiece", slot = "Head", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9070 },
    [22465] = { name = "Earthshatter Legguards", source = "Earthshatter Legguards", slot = "Legs", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9069 },
    [22467] = { name = "Earthshatter Spaulders", source = "Earthshatter Spaulders", slot = "Shoulder", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9071 },
    [22464] = { name = "Earthshatter Tunic", source = "Earthshatter Tunic", slot = "Chest", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9068 },
    [22471] = { name = "Earthshatter Wristguards", source = "Earthshatter Wristguards", slot = "Wrist", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9075 },
    [22502] = { name = "Frostfire Belt", source = "Frostfire Belt", slot = "Waist", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9101 },
    [22503] = { name = "Frostfire Bindings", source = "Frostfire Bindings", slot = "Wrist", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9102 },
    [22498] = { name = "Frostfire Circlet", source = "Frostfire Circlet", slot = "Head", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9097 },
    [22501] = { name = "Frostfire Gloves", source = "Frostfire Gloves", slot = "Hands", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9100 },
    [22497] = { name = "Frostfire Leggings", source = "Frostfire Leggings", slot = "Legs", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9096 },
    [22496] = { name = "Frostfire Robe", source = "Frostfire Robe", slot = "Chest", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9095 },
    [22500] = { name = "Frostfire Sandals", source = "Frostfire Sandals", slot = "Feet", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9099 },
    [22499] = { name = "Frostfire Shoulderpads", source = "Frostfire Shoulderpads", slot = "Shoulder", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9098 },
    [22658] = { name = "Glacial Cloak", source = "Glacial Cloak", slot = "Back", type = "Cloak", zone = "Naxxramas Quests", reqLevel = 60, questID = 9237 },
    [22654] = { name = "Glacial Gloves", source = "Glacial Gloves", slot = "Hands", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9239 },
    [22652] = { name = "Glacial Vest", source = "Glacial Vest", slot = "Chest", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9240 },
    [22655] = { name = "Glacial Wrists", source = "Glacial Wrists", slot = "Wrist", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9238 },
    [22517] = { name = "Gloves of Faith", source = "Gloves of Faith", slot = "Hands", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9116 },
    [22671] = { name = "Icebane Bracers", source = "Icebane Bracers", slot = "Wrist", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9235 },
    [22669] = { name = "Icebane Breastplate", source = "Icebane Breastplate", slot = "Chest", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9236 },
    [22670] = { name = "Icebane Gauntlets", source = "Icebane Gauntlets", slot = "Hands", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9234 },
    [22665] = { name = "Icy Scale Bracers", source = "Icy Scale Bracers", slot = "Wrist", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9244 },
    [22664] = { name = "Icy Scale Breastplate", source = "Icy Scale Breastplate", slot = "Chest", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9246 },
    [22666] = { name = "Icy Scale Gauntlets", source = "Icy Scale Gauntlets", slot = "Hands", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9245 },
    [22513] = { name = "Leggings of Faith", source = "Leggings of Faith", slot = "Legs", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9112 },
    [22510] = { name = "Plagueheart Belt", source = "Plagueheart Belt", slot = "Waist", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9109 },
    [22511] = { name = "Plagueheart Bindings", source = "Plagueheart Bindings", slot = "Wrist", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9110 },
    [22506] = { name = "Plagueheart Circlet", source = "Plagueheart Circlet", slot = "Head", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9105 },
    [22509] = { name = "Plagueheart Gloves", source = "Plagueheart Gloves", slot = "Hands", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9108 },
    [22505] = { name = "Plagueheart Leggings", source = "Plagueheart Leggings", slot = "Legs", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9104 },
    [22504] = { name = "Plagueheart Robe", source = "Plagueheart Robe", slot = "Chest", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9103 },
    [22508] = { name = "Plagueheart Sandals", source = "Plagueheart Sandals", slot = "Feet", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9107 },
    [22507] = { name = "Plagueheart Shoulderpads", source = "Plagueheart Shoulderpads", slot = "Shoulder", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9106 },
    [22663] = { name = "Polar Bracers", source = "Polar Bracers", slot = "Wrist", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9241 },
    [22662] = { name = "Polar Gloves", source = "Polar Gloves", slot = "Hands", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9242 },
    [22661] = { name = "Polar Tunic", source = "Polar Tunic", slot = "Chest", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9243 },
    [22707] = { name = "Ramaladni's Icy Grasp", source = "Ramaladni's Icy Grasp", slot = "Finger", type = "Ring", zone = "Naxxramas Quests", reqLevel = 60, questID = 9230 },
    [22430] = { name = "Redemption Boots", source = "Redemption Boots", slot = "Feet", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9047 },
    [22431] = { name = "Redemption Girdle", source = "Redemption Girdle", slot = "Waist", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9049 },
    [22426] = { name = "Redemption Handguards", source = "Redemption Handguards", slot = "Hands", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9048 },
    [22428] = { name = "Redemption Headpiece", source = "Redemption Headpiece", slot = "Head", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9045 },
    [22427] = { name = "Redemption Legguards", source = "Redemption Legguards", slot = "Legs", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9044 },
    [22429] = { name = "Redemption Spaulders", source = "Redemption Spaulders", slot = "Shoulder", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9046 },
    [22425] = { name = "Redemption Tunic", source = "Redemption Tunic", slot = "Chest", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9043 },
    [22424] = { name = "Redemption Wristguards", source = "Redemption Wristguards", slot = "Wrist", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9050 },
    [22512] = { name = "Robe of Faith", source = "Robe of Faith", slot = "Chest", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9111 },
    [22516] = { name = "Sandals of Faith", source = "Sandals of Faith", slot = "Feet", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9115 },
    [22515] = { name = "Shoulderpads of Faith", source = "Shoulderpads of Faith", slot = "Shoulder", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9114 },
    [23206] = { name = "Mark of the Champion", source = "The Fall of Kel'Thuzad", slot = "Trinket", type = "Trinket", zone = "Naxxramas Quests", reqLevel = 60, questID = 9120, choice = 9120 },
    [23207] = { name = "Mark of the Champion", source = "The Fall of Kel'Thuzad", slot = "Trinket", type = "Trinket", zone = "Naxxramas Quests", reqLevel = 60, questID = 9120, choice = 9120 },
    [22699] = { name = "Icebane Leggings", source = "The Only Song I Know...", slot = "Legs", type = "Plate Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9232, choice = 9232 },
    [22700] = { name = "Glacial Leggings", source = "The Only Song I Know...", slot = "Legs", type = "Cloth Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9232, choice = 9232 },
    [22701] = { name = "Polar Leggings", source = "The Only Song I Know...", slot = "Legs", type = "Leather Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9232, choice = 9232 },
    [22702] = { name = "Icy Scale Leggings", source = "The Only Song I Know...", slot = "Legs", type = "Mail Armor", zone = "Naxxramas Quests", reqLevel = 60, questID = 9232, choice = 9232 },
}

SGJ.ZoneMeta["Onyxia's Lair Quests"] = { name = "Onyxia's Lair Quests", min = 60, dungeon = true }
SGJ.DungeonDB["Onyxia's Lair Quests"] = {
    [18348] = { name = "Quel'Serrar", source = "The Forging of Quel'Serrar", slot = "Main Hand", type = "One-Handed Sword", zone = "Onyxia's Lair Quests", reqLevel = 60, questID = 7509 },
}

SGJ.ZoneMeta["Orgrimmar Quests"] = { name = "Orgrimmar Quests", min = 5, world = true }
SGJ.DungeonDB["Orgrimmar Quests"] = {
    [281269] = { name = "Mogra's Friendship Bracelet", source = "Rocks to Rests", slot = "Wrist", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 5, questID = 97326, side = "Horde", choice = 97326 },
    [281270] = { name = "Thra's Friendship Bracelet", source = "Rocks to Rests", slot = "Wrist", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 5, questID = 97326, side = "Horde", choice = 97326 },
    [281271] = { name = "Puk's Friendship Bracelet", source = "Rocks to Rests", slot = "Wrist", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 5, questID = 97326, side = "Horde", choice = 97326 },
    [281272] = { name = "Brog's Friendship Bracelet", source = "Rocks to Rests", slot = "Wrist", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 5, questID = 97326, side = "Horde", choice = 97326 },
    [286426] = { name = "Honorbound Cloak", source = "Exploring the Horde", slot = "Back", type = "Cloak", zone = "Orgrimmar Quests", reqLevel = 7, questID = 93739, side = "Horde", race = "Skyborne" },
    [15424] = { name = "Axe of Orgrimmar", source = "Hidden Enemies", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Orgrimmar Quests", reqLevel = 9, questID = 5730, side = "Horde", choice = 5730 },
    [15443] = { name = "Kris of Orgrimmar", source = "Hidden Enemies", slot = "One-Hand", type = "Dagger", zone = "Orgrimmar Quests", reqLevel = 9, questID = 5730, side = "Horde", choice = 5730 },
    [15444] = { name = "Staff of Orgrimmar", source = "Hidden Enemies", slot = "Two-Hand", type = "Staff", zone = "Orgrimmar Quests", reqLevel = 9, questID = 5730, side = "Horde", choice = 5730 },
    [15445] = { name = "Hammer of Orgrimmar", source = "Hidden Enemies", slot = "Main Hand", type = "One-Handed Mace", zone = "Orgrimmar Quests", reqLevel = 9, questID = 5730, side = "Horde", choice = 5730 },
    [9588] = { name = "Nogg's Gold Ring", source = "Nogg's Ring Redo", slot = "Finger", type = "Ring", zone = "Orgrimmar Quests", reqLevel = 28, questID = 2950, side = "Horde" },
    [6744] = { name = "Gloves of Kapelan", source = "Alliance Relations", slot = "Hands", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 30, questID = 1436, side = "Horde", choice = 1436 },
    [6745] = { name = "Swiftrunner Cape", source = "Alliance Relations", slot = "Back", type = "Cloak", zone = "Orgrimmar Quests", reqLevel = 30, questID = 1436, side = "Horde", choice = 1436 },
    [10709] = { name = "Pyrestone Orb", source = "Betrayed", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Orgrimmar Quests", reqLevel = 44, questID = 3507, side = "Horde", choice = 3507 },
    [11120] = { name = "Belgrom's Hammer", source = "Betrayed", slot = "Main Hand", type = "One-Handed Mace", zone = "Orgrimmar Quests", reqLevel = 44, questID = 3507, side = "Horde", choice = 3507 },
    [11862] = { name = "White Bone Band", source = "Bone-Bladed Weapons", slot = "Finger", type = "Ring", zone = "Orgrimmar Quests", reqLevel = 48, questID = 4300, side = "Horde", choice = 4300 },
    [11863] = { name = "White Bone Shredder", source = "Bone-Bladed Weapons", slot = "Off Hand", type = "Fist Weapon", zone = "Orgrimmar Quests", reqLevel = 48, questID = 4300, side = "Horde", choice = 4300 },
    [11864] = { name = "White Bone Spear", source = "Bone-Bladed Weapons", slot = "Two-Hand", type = "Polearm", zone = "Orgrimmar Quests", reqLevel = 48, questID = 4300, side = "Horde", choice = 4300 },
    [11870] = { name = "Oblivion Orb", source = "Calm Before the Storm", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Orgrimmar Quests", reqLevel = 50, questID = 4511, side = "Horde", choice = 4511 },
    [11871] = { name = "Snarkshaw Spaulders", source = "Calm Before the Storm", slot = "Shoulder", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 50, questID = 4511, side = "Horde", choice = 4511 },
    [11872] = { name = "Eschewal Greaves", source = "Calm Before the Storm", slot = "Feet", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 50, questID = 4511, side = "Horde", choice = 4511 },
    [21996] = { name = "Bracers of Heroism", source = "An Earnest Proposition", slot = "Wrist", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8920, side = "Horde" },
    [22004] = { name = "Darkmantle Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8917, side = "Horde" },
    [22011] = { name = "Beastmaster's Bindings", source = "An Earnest Proposition", slot = "Wrist", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8914, side = "Horde" },
    [22063] = { name = "Sorcerer's Bindings", source = "An Earnest Proposition", slot = "Wrist", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8915, side = "Horde" },
    [22071] = { name = "Deathmist Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8919, side = "Horde" },
    [22079] = { name = "Virtuous Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8916, side = "Horde" },
    [22095] = { name = "Bindings of The Five Thunders", source = "An Earnest Proposition", slot = "Wrist", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8918, side = "Horde" },
    [22108] = { name = "Feralheart Bracers", source = "An Earnest Proposition", slot = "Wrist", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8913, side = "Horde" },
    [21995] = { name = "Boots of Heroism", source = "Anthion's Parting Words", slot = "Feet", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9022, side = "Horde" },
    [22000] = { name = "Legplates of Heroism", source = "Anthion's Parting Words", slot = "Legs", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9022, side = "Horde" },
    [22001] = { name = "Spaulders of Heroism", source = "Anthion's Parting Words", slot = "Shoulder", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9022, side = "Horde" },
    [22003] = { name = "Darkmantle Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9020, side = "Horde" },
    [22007] = { name = "Darkmantle Pants", source = "Anthion's Parting Words", slot = "Legs", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9020, side = "Horde" },
    [22008] = { name = "Darkmantle Spaulders", source = "Anthion's Parting Words", slot = "Shoulder", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9020, side = "Horde" },
    [22016] = { name = "Beastmaster's Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9017, side = "Horde" },
    [22017] = { name = "Beastmaster's Pants", source = "Anthion's Parting Words", slot = "Legs", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9017, side = "Horde" },
    [22061] = { name = "Beastmaster's Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9017, side = "Horde" },
    [22064] = { name = "Sorcerer's Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9018, side = "Horde" },
    [22067] = { name = "Sorcerer's Leggings", source = "Anthion's Parting Words", slot = "Legs", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9018, side = "Horde" },
    [22068] = { name = "Sorcerer's Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9018, side = "Horde" },
    [22072] = { name = "Deathmist Leggings", source = "Anthion's Parting Words", slot = "Legs", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9021, side = "Horde" },
    [22073] = { name = "Deathmist Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9021, side = "Horde" },
    [22076] = { name = "Deathmist Sandals", source = "Anthion's Parting Words", slot = "Feet", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9021, side = "Horde" },
    [22082] = { name = "Virtuous Mantle", source = "Anthion's Parting Words", slot = "Shoulder", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9019, side = "Horde" },
    [22084] = { name = "Virtuous Sandals", source = "Anthion's Parting Words", slot = "Feet", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9019, side = "Horde" },
    [22085] = { name = "Virtuous Skirt", source = "Anthion's Parting Words", slot = "Legs", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9019, side = "Horde" },
    [22096] = { name = "Boots of The Five Thunders", source = "Anthion's Parting Words", slot = "Feet", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8957, side = "Horde" },
    [22100] = { name = "Kilt of The Five Thunders", source = "Anthion's Parting Words", slot = "Legs", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8957, side = "Horde" },
    [22101] = { name = "Pauldrons of The Five Thunders", source = "Anthion's Parting Words", slot = "Shoulder", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8957, side = "Horde" },
    [22107] = { name = "Feralheart Boots", source = "Anthion's Parting Words", slot = "Feet", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9016, side = "Horde" },
    [22111] = { name = "Feralheart Kilt", source = "Anthion's Parting Words", slot = "Legs", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9016, side = "Horde" },
    [22112] = { name = "Feralheart Spaulders", source = "Anthion's Parting Words", slot = "Shoulder", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9016, side = "Horde" },
    [21994] = { name = "Belt of Heroism", source = "Just Compensation", slot = "Waist", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8944, side = "Horde" },
    [21998] = { name = "Gauntlets of Heroism", source = "Just Compensation", slot = "Hands", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8944, side = "Horde" },
    [22002] = { name = "Darkmantle Belt", source = "Just Compensation", slot = "Waist", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8941, side = "Horde" },
    [22006] = { name = "Darkmantle Gloves", source = "Just Compensation", slot = "Hands", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8941, side = "Horde" },
    [22010] = { name = "Beastmaster's Belt", source = "Just Compensation", slot = "Waist", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8938, side = "Horde" },
    [22015] = { name = "Beastmaster's Gloves", source = "Just Compensation", slot = "Hands", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8938, side = "Horde" },
    [22062] = { name = "Sorcerer's Belt", source = "Just Compensation", slot = "Waist", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8939, side = "Horde" },
    [22066] = { name = "Sorcerer's Gloves", source = "Just Compensation", slot = "Hands", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8939, side = "Horde" },
    [22070] = { name = "Deathmist Belt", source = "Just Compensation", slot = "Waist", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8943, side = "Horde" },
    [22077] = { name = "Deathmist Wraps", source = "Just Compensation", slot = "Hands", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8943, side = "Horde" },
    [22078] = { name = "Virtuous Belt", source = "Just Compensation", slot = "Waist", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8940, side = "Horde" },
    [22081] = { name = "Virtuous Gloves", source = "Just Compensation", slot = "Hands", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8940, side = "Horde" },
    [22098] = { name = "Cord of The Five Thunders", source = "Just Compensation", slot = "Waist", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8942, side = "Horde" },
    [22099] = { name = "Gauntlets of The Five Thunders", source = "Just Compensation", slot = "Hands", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8942, side = "Horde" },
    [22106] = { name = "Feralheart Belt", source = "Just Compensation", slot = "Waist", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8927, side = "Horde" },
    [22110] = { name = "Feralheart Gloves", source = "Just Compensation", slot = "Hands", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 8927, side = "Horde" },
    [21997] = { name = "Breastplate of Heroism", source = "Saving the Best for Last", slot = "Chest", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9013, side = "Horde" },
    [21999] = { name = "Helm of Heroism", source = "Saving the Best for Last", slot = "Head", type = "Plate Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9013, side = "Horde" },
    [22005] = { name = "Darkmantle Cap", source = "Saving the Best for Last", slot = "Head", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9010, side = "Horde" },
    [22009] = { name = "Darkmantle Tunic", source = "Saving the Best for Last", slot = "Chest", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9010, side = "Horde" },
    [22013] = { name = "Beastmaster's Cap", source = "Saving the Best for Last", slot = "Head", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9008, side = "Horde" },
    [22060] = { name = "Beastmaster's Tunic", source = "Saving the Best for Last", slot = "Chest", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9008, side = "Horde" },
    [22065] = { name = "Sorcerer's Crown", source = "Saving the Best for Last", slot = "Head", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9014, side = "Horde" },
    [22069] = { name = "Sorcerer's Robes", source = "Saving the Best for Last", slot = "Chest", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9014, side = "Horde" },
    [22074] = { name = "Deathmist Mask", source = "Saving the Best for Last", slot = "Head", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9012, side = "Horde" },
    [22075] = { name = "Deathmist Robe", source = "Saving the Best for Last", slot = "Chest", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9012, side = "Horde" },
    [22080] = { name = "Virtuous Crown", source = "Saving the Best for Last", slot = "Head", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9009, side = "Horde" },
    [22083] = { name = "Virtuous Robe", source = "Saving the Best for Last", slot = "Chest", type = "Cloth Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9009, side = "Horde" },
    [22097] = { name = "Coif of The Five Thunders", source = "Saving the Best for Last", slot = "Head", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9011, side = "Horde" },
    [22102] = { name = "Vest of The Five Thunders", source = "Saving the Best for Last", slot = "Chest", type = "Mail Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9011, side = "Horde" },
    [22109] = { name = "Feralheart Cowl", source = "Saving the Best for Last", slot = "Head", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9007, side = "Horde" },
    [22113] = { name = "Feralheart Vest", source = "Saving the Best for Last", slot = "Chest", type = "Leather Armor", zone = "Orgrimmar Quests", reqLevel = 58, questID = 9007, side = "Horde" },
    [18403] = { name = "Dragonslayer's Signet", source = "For All To See", slot = "Finger", type = "Ring", zone = "Orgrimmar Quests", reqLevel = 60, questID = 7491, side = "Horde", choice = 7491 },
    [18404] = { name = "Onyxia Tooth Pendant", source = "For All To See", slot = "Neck", type = "Amulet", zone = "Orgrimmar Quests", reqLevel = 60, questID = 7491, side = "Horde", choice = 7491 },
    [18406] = { name = "Onyxia Blood Talisman", source = "For All To See", slot = "Trinket", type = "Trinket", zone = "Orgrimmar Quests", reqLevel = 60, questID = 7491, side = "Horde", choice = 7491 },
    [19366] = { name = "Master Dragonslayer's Orb", source = "The Lord of Blackrock", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Orgrimmar Quests", reqLevel = 60, questID = 7784, side = "Horde", choice = 7784 },
    [19383] = { name = "Master Dragonslayer's Medallion", source = "The Lord of Blackrock", slot = "Neck", type = "Amulet", zone = "Orgrimmar Quests", reqLevel = 60, questID = 7784, side = "Horde", choice = 7784 },
    [19384] = { name = "Master Dragonslayer's Ring", source = "The Lord of Blackrock", slot = "Finger", type = "Ring", zone = "Orgrimmar Quests", reqLevel = 60, questID = 7784, side = "Horde", choice = 7784 },
}

SGJ.ZoneMeta["Paladin Quests"] = { name = "Paladin Quests", min = 7, world = true }
SGJ.DungeonDB["Paladin Quests"] = {
    [246164] = { name = "Skullthumper", source = "Murlocs at the Gates", slot = "Main Hand", type = "One-Handed Mace", zone = "Paladin Quests", reqLevel = 7, questID = 91285, side = "Horde", class = "PALADIN", choice = 91285 },
    [246165] = { name = "Driftwood Smasher", source = "Murlocs at the Gates", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Paladin Quests", reqLevel = 7, questID = 91285, side = "Horde", class = "PALADIN", choice = 91285 },
    [246265] = { name = "Salvaged Wooden Tower Shield", source = "Making Repairs", slot = "Shield", type = "Shield", zone = "Paladin Quests", reqLevel = 8, questID = 91316, side = "Horde", class = "PALADIN" },
    [268484] = { name = "Moonsilver Blade", source = "The Moonsilver Blade", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Paladin Quests", reqLevel = 20, questID = 95126, side = "Horde", class = "PALADIN" },
    [6953] = { name = "Verigan's Fist", source = "The Test of Righteousness", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Paladin Quests", reqLevel = 20, questID = 1806, side = "Alliance", class = "PALADIN" },
    [9607] = { name = "Bastion of Stormwind", source = "The Tome of Valor", slot = "Shield", type = "Shield", zone = "Paladin Quests", reqLevel = 20, questID = 1652, side = "Alliance", class = "PALADIN" },
    [20504] = { name = "Lightforged Blade", source = "Forging the Mightstone", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Paladin Quests", reqLevel = 50, questID = 8418, side = "Alliance", class = "PALADIN", choice = 8418 },
    [20505] = { name = "Chivalrous Signet", source = "Forging the Mightstone", slot = "Finger", type = "Ring", zone = "Paladin Quests", reqLevel = 50, questID = 8418, side = "Alliance", class = "PALADIN", choice = 8418 },
    [20512] = { name = "Sanctified Orb", source = "Forging the Mightstone", slot = "Trinket", type = "Trinket", zone = "Paladin Quests", reqLevel = 50, questID = 8418, side = "Alliance", class = "PALADIN", choice = 8418 },
}

SGJ.ZoneMeta["Priest Quests"] = { name = "Priest Quests", min = 5, world = true }
SGJ.DungeonDB["Priest Quests"] = {
    [16607] = { name = "Acolyte's Sacrificial Robes", source = "Garments of Darkness", slot = "Chest", type = "Cloth Armor", zone = "Priest Quests", reqLevel = 5, questID = 5650, side = "Horde", class = "PRIEST" },
    [16606] = { name = "Juju Hex Robes", source = "Garments of Spirituality", slot = "Chest", type = "Cloth Armor", zone = "Priest Quests", reqLevel = 5, questID = 5648, side = "Horde", class = "PRIEST" },
    [16605] = { name = "Friar's Robes of the Light", source = "Garments of the Light", slot = "Chest", type = "Cloth Armor", zone = "Priest Quests", reqLevel = 5, questID = 5624, side = "Alliance", class = "PRIEST" },
    [16604] = { name = "Moon Robes of Elune", source = "Garments of the Moon", slot = "Chest", type = "Cloth Armor", zone = "Priest Quests", reqLevel = 5, questID = 5621, side = "Alliance", class = "PRIEST" },
    [19990] = { name = "Blessed Prayer Beads", source = "Blood of Morphaz", slot = "Trinket", type = "Trinket", zone = "Priest Quests", reqLevel = 50, questID = 8257, class = "PRIEST", choice = 8257 },
    [20006] = { name = "Circle of Hope", source = "Blood of Morphaz", slot = "Finger", type = "Ring", zone = "Priest Quests", reqLevel = 50, questID = 8257, class = "PRIEST", choice = 8257 },
    [20082] = { name = "Woestave", source = "Blood of Morphaz", slot = "Ranged", type = "Wand", zone = "Priest Quests", reqLevel = 50, questID = 8257, class = "PRIEST", choice = 8257 },
}

SGJ.QuestDB["Ragefire Chasm"] = {
    [15452] = { name = "Featherbead Bracers", source = "Returning the Lost Satchel", slot = "Wrist", type = "Cloth Armor", zone = "Ragefire Chasm", reqLevel = 9, questID = 5724, side = "Horde", choice = 5724 },
    [15453] = { name = "Savannah Bracers", source = "Returning the Lost Satchel", slot = "Wrist", type = "Leather Armor", zone = "Ragefire Chasm", reqLevel = 9, questID = 5724, side = "Horde", choice = 5724 },
    [270003] = { name = "Garrison Cuffs", source = "Returning the Lost Satchel", slot = "Wrist", type = "Mail Armor", zone = "Ragefire Chasm", reqLevel = 9, questID = 5724, side = "Horde", choice = 5724 },
    [15449] = { name = "Ghastly Trousers", source = "The Power to Destroy...", slot = "Legs", type = "Cloth Armor", zone = "Ragefire Chasm", reqLevel = 9, questID = 5725, side = "Horde", choice = 5725 },
    [15450] = { name = "Dredgemire Leggings", source = "The Power to Destroy...", slot = "Legs", type = "Leather Armor", zone = "Ragefire Chasm", reqLevel = 9, questID = 5725, side = "Horde", choice = 5725 },
    [15451] = { name = "Gargoyle Leggings", source = "The Power to Destroy...", slot = "Legs", type = "Mail Armor", zone = "Ragefire Chasm", reqLevel = 9, questID = 5725, side = "Horde", choice = 5725 },
}

SGJ.QuestDB["Razorfen Downs"] = {
    [17039] = { name = "Skullbreaker", source = "An Unholy Alliance", slot = "Main Hand", type = "One-Handed Mace", zone = "Razorfen Downs", reqLevel = 28, questID = 6521, side = "Horde", choice = 6521 },
    [17042] = { name = "Nail Spitter", source = "An Unholy Alliance", slot = "Ranged", type = "Gun", zone = "Razorfen Downs", reqLevel = 28, questID = 6521, side = "Horde", choice = 6521 },
    [17043] = { name = "Zealot's Robe", source = "An Unholy Alliance", slot = "Chest", type = "Cloth Armor", zone = "Razorfen Downs", reqLevel = 28, questID = 6521, side = "Horde", choice = 6521 },
    [10710] = { name = "Dragonclaw Ring", source = "Extinguishing the Idol", slot = "Finger", type = "Ring", zone = "Razorfen Downs", reqLevel = 32, questID = 3525 },
    [10823] = { name = "Vanquisher's Sword", source = "Bring the End", slot = "One-Hand", type = "One-Handed Sword", zone = "Razorfen Downs", reqLevel = 37, questID = 3341 },
    [10824] = { name = "Amberglow Talisman", source = "Bring the End", slot = "Neck", type = "Amulet", zone = "Razorfen Downs", reqLevel = 37, questID = 3341 },
}

SGJ.QuestDB["Razorfen Kraul"] = {
    [6748] = { name = "Monkey Ring", source = "Willix the Importer", slot = "Finger", type = "Ring", zone = "Razorfen Kraul", reqLevel = 22, questID = 1144, choice = 1144 },
    [6749] = { name = "Tiger Band", source = "Willix the Importer", slot = "Finger", type = "Ring", zone = "Razorfen Kraul", reqLevel = 22, questID = 1144, choice = 1144 },
    [6750] = { name = "Snake Hoop", source = "Willix the Importer", slot = "Finger", type = "Ring", zone = "Razorfen Kraul", reqLevel = 22, questID = 1144, choice = 1144 },
    [274078] = { name = "Boar Signet", source = "Willix the Importer", slot = "Finger", type = "Ring", zone = "Razorfen Kraul", reqLevel = 22, questID = 1144, choice = 1144 },
    [6751] = { name = "Mourning Shawl", source = "Mortality Wanes", slot = "Back", type = "Cloak", zone = "Razorfen Kraul", reqLevel = 25, questID = 1142, side = "Alliance", choice = 1142 },
    [6752] = { name = "Lancer Boots", source = "Mortality Wanes", slot = "Feet", type = "Leather Armor", zone = "Razorfen Kraul", reqLevel = 25, questID = 1142, side = "Alliance", choice = 1142 },
    [4197] = { name = "Berylline Pads", source = "A Vengeful Fate", slot = "Shoulder", type = "Cloth Armor", zone = "Razorfen Kraul", reqLevel = 29, questID = 1102 },
    [6725] = { name = "Marbled Buckler", source = "A Vengeful Fate", slot = "Shield", type = "Shield", zone = "Razorfen Kraul", reqLevel = 29, questID = 1102 },
    [6742] = { name = "Stonefist Girdle", source = "A Vengeful Fate", slot = "Waist", type = "Mail Armor", zone = "Razorfen Kraul", reqLevel = 29, questID = 1102 },
    [274084] = { name = "Quilboar Blaster", source = "A Vengeful Fate", slot = "Ranged", type = "Gun", zone = "Razorfen Kraul", reqLevel = 29, questID = 1102, side = "Horde" },
    [3041] = { name = "\"Mage-Eye\" Blunderbuss", source = "The Crone of the Kraul", slot = "Ranged", type = "Gun", zone = "Razorfen Kraul", reqLevel = 29, questID = 1101, side = "Alliance" },
}

SGJ.ZoneMeta["Redridge Mountains Quests"] = { name = "Redridge Mountains Quests", min = 12, world = true }
SGJ.DungeonDB["Redridge Mountains Quests"] = {
    [1270] = { name = "Finely Woven Cloak", source = "Dry Times", slot = "Back", type = "Cloak", zone = "Redridge Mountains Quests", reqLevel = 12, questID = 116, side = "Alliance" },
    [1302] = { name = "Black Whelp Gloves", source = "Underbelly Scales", slot = "Hands", type = "Leather Armor", zone = "Redridge Mountains Quests", reqLevel = 14, questID = 122, side = "Alliance", choice = 122 },
    [6092] = { name = "Black Whelp Boots", source = "Underbelly Scales", slot = "Feet", type = "Leather Armor", zone = "Redridge Mountains Quests", reqLevel = 14, questID = 122, side = "Alliance", choice = 122 },
    [1319] = { name = "Ring of Iron Will", source = "Howling in the Hills", slot = "Finger", type = "Ring", zone = "Redridge Mountains Quests", reqLevel = 15, questID = 126, side = "Alliance", choice = 126 },
    [2910] = { name = "Gold Militia Boots", source = "Howling in the Hills", slot = "Feet", type = "Mail Armor", zone = "Redridge Mountains Quests", reqLevel = 15, questID = 126, side = "Alliance", choice = 126 },
    [1303] = { name = "Bridgeworker's Gloves", source = "The Everstill Bridge", slot = "Hands", type = "Mail Armor", zone = "Redridge Mountains Quests", reqLevel = 15, questID = 89, side = "Alliance", choice = 89 },
    [1304] = { name = "Riding Gloves", source = "The Everstill Bridge", slot = "Hands", type = "Cloth Armor", zone = "Redridge Mountains Quests", reqLevel = 15, questID = 89, side = "Alliance", choice = 89 },
    [1310] = { name = "Smith's Trousers", source = "The Everstill Bridge", slot = "Legs", type = "Leather Armor", zone = "Redridge Mountains Quests", reqLevel = 15, questID = 89, side = "Alliance", choice = 89 },
    [277218] = { name = "Incinerator's Boots", source = "WANTED: Incinerator Gar'im", slot = "Feet", type = "Cloth Armor", zone = "Redridge Mountains Quests", reqLevel = 16, questID = 95999, side = "Alliance", choice = 95999 },
    [277226] = { name = "Disjointed Shoes", source = "WANTED: Incinerator Gar'im", slot = "Feet", type = "Leather Armor", zone = "Redridge Mountains Quests", reqLevel = 16, questID = 95999, side = "Alliance", choice = 95999 },
    [277234] = { name = "Alacritous Treads", source = "WANTED: Incinerator Gar'im", slot = "Feet", type = "Mail Armor", zone = "Redridge Mountains Quests", reqLevel = 16, questID = 95999, side = "Alliance", choice = 95999 },
    [2562] = { name = "Bouquet of Scarlet Begonias", source = "An Unwelcome Guest", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Redridge Mountains Quests", reqLevel = 18, questID = 34, side = "Alliance" },
    [1276] = { name = "Fire Hardened Buckler", source = "Tharil'zun", slot = "Shield", type = "Shield", zone = "Redridge Mountains Quests", reqLevel = 18, questID = 19, side = "Alliance", choice = 19 },
    [6093] = { name = "Orc Crusher", source = "Tharil'zun", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Redridge Mountains Quests", reqLevel = 18, questID = 19, side = "Alliance", choice = 19 },
    [1275] = { name = "Deputy Chain Coat", source = "Missing In Action", slot = "Chest", type = "Mail Armor", zone = "Redridge Mountains Quests", reqLevel = 19, questID = 219, side = "Alliance", choice = 219 },
    [3431] = { name = "Bone-studded Leather", source = "Missing In Action", slot = "Chest", type = "Leather Armor", zone = "Redridge Mountains Quests", reqLevel = 19, questID = 219, side = "Alliance", choice = 219 },
    [3555] = { name = "Robe of Solomon", source = "Missing In Action", slot = "Chest", type = "Cloth Armor", zone = "Redridge Mountains Quests", reqLevel = 19, questID = 219, side = "Alliance", choice = 219 },
    [5274] = { name = "Rose Mantle", source = "Morganth", slot = "Shoulder", type = "Cloth Armor", zone = "Redridge Mountains Quests", reqLevel = 20, questID = 249, side = "Alliance", choice = 249 },
    [270033] = { name = "Demonhide Bracers", source = "Morganth", slot = "Wrist", type = "Leather Armor", zone = "Redridge Mountains Quests", reqLevel = 20, questID = 249, side = "Alliance", choice = 249 },
    [270034] = { name = "Shadow Gauntlets", source = "Morganth", slot = "Hands", type = "Mail Armor", zone = "Redridge Mountains Quests", reqLevel = 20, questID = 249, side = "Alliance", choice = 249 },
    [3567] = { name = "Dwarven Fishing Pole", source = "Murloc Poachers", slot = "Ranged", type = "Gun", zone = "Redridge Mountains Quests", reqLevel = 20, questID = 150, side = "Alliance" },
}

SGJ.ZoneMeta["Riverglades Quests"] = { name = "Riverglades Quests", min = 15, world = true }
SGJ.DungeonDB["Riverglades Quests"] = {
    [279870] = { name = "Tarnished Locket", source = "Remember That I Love You", slot = "Neck", type = "Amulet", zone = "Riverglades Quests", reqLevel = 15, questID = 95161, side = "Alliance" },
}

SGJ.ZoneMeta["Rogue Quests"] = { name = "Rogue Quests", min = 1, world = true }
SGJ.DungeonDB["Rogue Quests"] = {
    [277210] = { name = "Pyrewood Signet Ring", source = "The Horn of Xelthos", slot = "Finger", type = "Ring", zone = "Rogue Quests", reqLevel = 1, questID = 78307, class = "ROGUE" },
    [7298] = { name = "Blade of Cunning", source = "Destiny Calls", slot = "One-Hand", type = "Dagger", zone = "Rogue Quests", reqLevel = 10, questID = 2242, class = "ROGUE" },
    [20086] = { name = "Dusksteel Throwing Knife", source = "Junkboxes Needed", slot = "Thrown", type = "Thrown", zone = "Rogue Quests", reqLevel = 50, questID = 8249, class = "ROGUE" },
    [19982] = { name = "Duskbat Drape", source = "The Azure Key", slot = "Back", type = "Cloak", zone = "Rogue Quests", reqLevel = 50, questID = 8236, class = "ROGUE", choice = 8236 },
    [19984] = { name = "Ebon Mask", source = "The Azure Key", slot = "Head", type = "Leather Armor", zone = "Rogue Quests", reqLevel = 50, questID = 8236, class = "ROGUE", choice = 8236 },
    [20255] = { name = "Whisperwalk Boots", source = "The Azure Key", slot = "Feet", type = "Leather Armor", zone = "Rogue Quests", reqLevel = 50, questID = 8236, class = "ROGUE", choice = 8236 },
}

SGJ.QuestDB["Ruins of Ahn'Qiraj"] = {
    [21504] = { name = "Charm of the Shifting Sands", source = "The Fall of Ossirian", slot = "Neck", type = "Amulet", zone = "Ruins of Ahn'Qiraj", reqLevel = 60, questID = 8791, choice = 8791 },
    [21505] = { name = "Choker of the Shifting Sands", source = "The Fall of Ossirian", slot = "Neck", type = "Amulet", zone = "Ruins of Ahn'Qiraj", reqLevel = 60, questID = 8791, choice = 8791 },
    [21506] = { name = "Pendant of the Shifting Sands", source = "The Fall of Ossirian", slot = "Neck", type = "Amulet", zone = "Ruins of Ahn'Qiraj", reqLevel = 60, questID = 8791, choice = 8791 },
    [21507] = { name = "Amulet of the Shifting Sands", source = "The Fall of Ossirian", slot = "Neck", type = "Amulet", zone = "Ruins of Ahn'Qiraj", reqLevel = 60, questID = 8791, choice = 8791 },
}

SGJ.QuestDB["Ruins of Lordaeron"] = {
    [279874] = { name = "The Stitcher", source = "Light's Justice", slot = "Main Hand", type = "One-Handed Mace", zone = "Ruins of Lordaeron", reqLevel = 15, questID = 92421, side = "Horde", choice = 92421 },
    [279875] = { name = "Spare Part Bindings", source = "Light's Justice", slot = "Wrist", type = "Leather Armor", zone = "Ruins of Lordaeron", reqLevel = 15, questID = 92421, side = "Horde", choice = 92421 },
    [251533] = { name = "Forsaken Greataxe", source = "The Wrath of Rath'mael", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Ruins of Lordaeron", reqLevel = 15, questID = 92422, side = "Horde", choice = 92422 },
    [251534] = { name = "Gnarled Necromancer's Staff", source = "The Wrath of Rath'mael", slot = "Two-Hand", type = "Staff", zone = "Ruins of Lordaeron", reqLevel = 15, questID = 92422, side = "Horde", choice = 92422 },
    [279864] = { name = "Monstrous Cleaver", source = "Abominable Creatures", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Ruins of Lordaeron", reqLevel = 16, questID = 95250, side = "Alliance", choice = 95250 },
    [279865] = { name = "Grave Shroud", source = "Abominable Creatures", slot = "Back", type = "Cloak", zone = "Ruins of Lordaeron", reqLevel = 16, questID = 95250, side = "Alliance", choice = 95250 },
    [279867] = { name = "Slain Baron's Signet", source = "Abominable Creatures", slot = "Finger", type = "Ring", zone = "Ruins of Lordaeron", reqLevel = 16, questID = 95250, side = "Alliance", choice = 95250 },
    [279868] = { name = "Duty Bound Leggings", source = "Bloodied Insignia", slot = "Legs", type = "Leather Armor", zone = "Ruins of Lordaeron", reqLevel = 16, questID = 95195, side = "Alliance", choice = 95195 },
    [279869] = { name = "Remembrance Armor", source = "Bloodied Insignia", slot = "Chest", type = "Mail Armor", zone = "Ruins of Lordaeron", reqLevel = 16, questID = 95195, side = "Alliance", choice = 95195 },
    [279876] = { name = "Plaguefang", source = "The New Plague", slot = "One-Hand", type = "One-Handed Sword", zone = "Ruins of Lordaeron", reqLevel = 16, questID = 95216, side = "Horde", choice = 95216 },
    [279877] = { name = "Blight Gloves", source = "The New Plague", slot = "Hands", type = "Cloth Armor", zone = "Ruins of Lordaeron", reqLevel = 16, questID = 95216, side = "Horde", choice = 95216 },
}

SGJ.QuestDB["Scarlet Monastery"] = {
    [4643] = { name = "Grimsteel Cape", source = "Vorrel's Revenge", slot = "Back", type = "Cloak", zone = "Scarlet Monastery", reqLevel = 25, questID = 1051, side = "Horde", choice = 1051 },
    [7750] = { name = "Mantle of Woe", source = "Vorrel's Revenge", slot = "Shoulder", type = "Cloth Armor", zone = "Scarlet Monastery", reqLevel = 25, questID = 1051, side = "Horde", choice = 1051 },
    [7751] = { name = "Vorrel's Boots", source = "Vorrel's Revenge", slot = "Feet", type = "Leather Armor", zone = "Scarlet Monastery", reqLevel = 25, questID = 1051, side = "Horde" },
    [7747] = { name = "Vile Protector", source = "Compendium of the Fallen", slot = "Shield", type = "Shield", zone = "Scarlet Monastery", reqLevel = 28, questID = 1049, side = "Horde", choice = 1049 },
    [7749] = { name = "Omega Orb", source = "Compendium of the Fallen", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Scarlet Monastery", reqLevel = 28, questID = 1049, side = "Horde", choice = 1049 },
    [17508] = { name = "Forcestone Buckler", source = "Compendium of the Fallen", slot = "Shield", type = "Shield", zone = "Scarlet Monastery", reqLevel = 28, questID = 1049, side = "Horde", choice = 1049 },
    [7746] = { name = "Explorers' League Commendation", source = "Mythology of the Titans", slot = "Neck", type = "Amulet", zone = "Scarlet Monastery", reqLevel = 28, questID = 1050, side = "Alliance" },
    [6802] = { name = "Sword of Omen", source = "Into The Scarlet Monastery", slot = "One-Hand", type = "One-Handed Sword", zone = "Scarlet Monastery", reqLevel = 33, questID = 1048, side = "Horde", choice = 1048 },
    [6803] = { name = "Prophetic Cane", source = "Into The Scarlet Monastery", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Scarlet Monastery", reqLevel = 33, questID = 1048, side = "Horde", choice = 1048 },
    [10711] = { name = "Dragon's Blood Necklace", source = "Into The Scarlet Monastery", slot = "Neck", type = "Amulet", zone = "Scarlet Monastery", reqLevel = 33, questID = 1048, side = "Horde", choice = 1048 },
    [6829] = { name = "Sword of Serenity", source = "In the Name of the Light", slot = "One-Hand", type = "One-Handed Sword", zone = "Scarlet Monastery", reqLevel = 34, questID = 1053, side = "Alliance", choice = 1053 },
    [6830] = { name = "Bonebiter", source = "In the Name of the Light", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Scarlet Monastery", reqLevel = 34, questID = 1053, side = "Alliance", choice = 1053 },
    [6831] = { name = "Black Menace", source = "In the Name of the Light", slot = "One-Hand", type = "Dagger", zone = "Scarlet Monastery", reqLevel = 34, questID = 1053, side = "Alliance", choice = 1053 },
    [11262] = { name = "Orb of Lorica", source = "In the Name of the Light", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Scarlet Monastery", reqLevel = 34, questID = 1053, side = "Alliance", choice = 1053 },
}

SGJ.QuestDB["Scholomance"] = {
    [13544] = { name = "Spectral Essence", source = "Kirtonos the Herald", slot = "Trinket", type = "Trinket", zone = "Scholomance", reqLevel = 55, questID = 5384 },
    [15805] = { name = "Penelope's Rose", source = "Kirtonos the Herald", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Scholomance", reqLevel = 55, questID = 5384, choice = 5384 },
    [15806] = { name = "Mirah's Song", source = "Kirtonos the Herald", slot = "One-Hand", type = "One-Handed Sword", zone = "Scholomance", reqLevel = 55, questID = 5384, choice = 5384 },
    [15853] = { name = "Windreaper", source = "Dawn's Gambit", slot = "One-Hand", type = "One-Handed Axe", zone = "Scholomance", reqLevel = 57, questID = 4771, choice = 4771 },
    [15854] = { name = "Dancing Sliver", source = "Dawn's Gambit", slot = "Two-Hand", type = "Staff", zone = "Scholomance", reqLevel = 57, questID = 4771, choice = 4771 },
    [13982] = { name = "Warblade of Caer Darrow", source = "The Lich, Ras Frostwhisper", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Scholomance", reqLevel = 57, questID = 5466, choice = 5466 },
    [13984] = { name = "Darrowspike", source = "The Lich, Ras Frostwhisper", slot = "One-Hand", type = "Dagger", zone = "Scholomance", reqLevel = 57, questID = 5466, choice = 5466 },
    [13986] = { name = "Crown of Caer Darrow", source = "The Lich, Ras Frostwhisper", slot = "Head", type = "Cloth Armor", zone = "Scholomance", reqLevel = 57, questID = 5466, choice = 5466 },
    [14002] = { name = "Darrowshire Strongguard", source = "The Lich, Ras Frostwhisper", slot = "Shield", type = "Shield", zone = "Scholomance", reqLevel = 57, questID = 5466 },
}

SGJ.ZoneMeta["Searing Gorge Quests"] = { name = "Searing Gorge Quests", min = 40, world = true }
SGJ.DungeonDB["Searing Gorge Quests"] = {
    [10745] = { name = "Kaylari Shoulders", source = "Prayer to Elune", slot = "Shoulder", type = "Leather Armor", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3378, side = "Alliance", choice = 3378 },
    [10746] = { name = "Runesteel Vambraces", source = "Prayer to Elune", slot = "Wrist", type = "Plate Armor", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3378, side = "Alliance", choice = 3378 },
    [10739] = { name = "Ring of Fortitude", source = "Rise, Obsidion!", slot = "Finger", type = "Ring", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3566, side = "Alliance", choice = 3566 },
    [10740] = { name = "Centurion Legplates", source = "Rise, Obsidion!", slot = "Legs", type = "Plate Armor", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3566, side = "Alliance", choice = 3566 },
    [10741] = { name = "Lordrec Helmet", source = "Rise, Obsidion!", slot = "Head", type = "Leather Armor", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3566, side = "Alliance", choice = 3566 },
    [10742] = { name = "Dragonflight Leggings", source = "Set Them Ablaze!", slot = "Legs", type = "Cloth Armor", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3463, choice = 3463 },
    [10743] = { name = "Drakefire Headguard", source = "Set Them Ablaze!", slot = "Head", type = "Mail Armor", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3463, choice = 3463 },
    [10744] = { name = "Axe of the Ebon Drake", source = "Set Them Ablaze!", slot = "Main Hand", type = "One-Handed Axe", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3463, choice = 3463 },
    [10515] = { name = "Torch of Retribution", source = "The Torch of Retribution", slot = "Two-Hand", type = "Miscellaneous", zone = "Searing Gorge Quests", reqLevel = 40, questID = 3454 },
    [11860] = { name = "Charged Lightning Rod", source = "Ledger from Tanaris", slot = "Ranged", type = "Wand", zone = "Searing Gorge Quests", reqLevel = 43, questID = 4450, choice = 4450 },
    [11861] = { name = "Girdle of Reprisal", source = "Ledger from Tanaris", slot = "Waist", type = "Mail Armor", zone = "Searing Gorge Quests", reqLevel = 43, questID = 4450, choice = 4450 },
    [19126] = { name = "Slagplate Gauntlets", source = "Curse These Fat Fingers", slot = "Hands", type = "Plate Armor", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7723 },
    [19125] = { name = "Seared Mail Girdle", source = "Fiery Menace!", slot = "Waist", type = "Mail Armor", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7724 },
    [19141] = { name = "Luffa", source = "Incendosaurs? Whateverosaur is More Like It", slot = "Trinket", type = "Trinket", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7727 },
    [18951] = { name = "Evonice's Landin' Pilla", source = "Look at the Size of It!", slot = "Trinket", type = "Trinket", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7704 },
    [19123] = { name = "Everwarm Handwraps", source = "STOLEN: Smithing Tuyere and Lookout's Spyglass", slot = "Hands", type = "Cloth Armor", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7728, choice = 7728 },
    [19124] = { name = "Slagplate Leggings", source = "STOLEN: Smithing Tuyere and Lookout's Spyglass", slot = "Legs", type = "Plate Armor", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7728, choice = 7728 },
    [19127] = { name = "Charred Leather Tunic", source = "WANTED: Overseer Maltorius", slot = "Chest", type = "Leather Armor", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7701, choice = 7701 },
    [19128] = { name = "Seared Mail Vest", source = "WANTED: Overseer Maltorius", slot = "Chest", type = "Mail Armor", zone = "Searing Gorge Quests", reqLevel = 45, questID = 7701, choice = 7701 },
}

SGJ.QuestDB["Shadowfang Keep"] = {
    [4534] = { name = "Steel-clasped Bracers", source = "The Book of Ur", slot = "Wrist", type = "Mail Armor", zone = "Shadowfang Keep", reqLevel = 16, questID = 1013, side = "Horde", choice = 1013 },
    [6335] = { name = "Grizzled Boots", source = "The Book of Ur", slot = "Feet", type = "Leather Armor", zone = "Shadowfang Keep", reqLevel = 16, questID = 1013, side = "Horde", choice = 1013 },
    [270030] = { name = "Tattered Mittens", source = "The Book of Ur", slot = "Hands", type = "Cloth Armor", zone = "Shadowfang Keep", reqLevel = 16, questID = 1013, side = "Horde", choice = 1013 },
    [6414] = { name = "Seal of Sylvanas", source = "Arugal Must Die", slot = "Finger", type = "Ring", zone = "Shadowfang Keep", reqLevel = 18, questID = 1014, side = "Horde" },
    [3324] = { name = "Ghostly Mantle", source = "Deathstalkers in Shadowfang", slot = "Shoulder", type = "Cloth Armor", zone = "Shadowfang Keep", reqLevel = 18, questID = 1098, side = "Horde", choice = 1098 },
    [270023] = { name = "Tanned Shoulderpads", source = "Deathstalkers in Shadowfang", slot = "Shoulder", type = "Leather Armor", zone = "Shadowfang Keep", reqLevel = 18, questID = 1098, side = "Horde", choice = 1098 },
    [270024] = { name = "Bronzed Shoulderguards", source = "Deathstalkers in Shadowfang", slot = "Shoulder", type = "Mail Armor", zone = "Shadowfang Keep", reqLevel = 18, questID = 1098, side = "Horde", choice = 1098 },
}

SGJ.ZoneMeta["Shaman Quests"] = { name = "Shaman Quests", min = 10, world = true }
SGJ.DungeonDB["Shaman Quests"] = {
    [6654] = { name = "Torch of the Eternal Flame", source = "Call of Fire", slot = "Held In Off-hand", type = "Miscellaneous", zone = "Shaman Quests", reqLevel = 10, questID = 1526, class = "SHAMAN" },
    [20369] = { name = "Azurite Fists", source = "Da Voodoo", slot = "Hands", type = "Mail Armor", zone = "Shaman Quests", reqLevel = 50, questID = 8413, side = "Horde", class = "SHAMAN", choice = 8413 },
    [20503] = { name = "Enamored Water Spirit", source = "Da Voodoo", slot = "Trinket", type = "Trinket", zone = "Shaman Quests", reqLevel = 50, questID = 8413, side = "Horde", class = "SHAMAN", choice = 8413 },
    [20556] = { name = "Wildstaff", source = "Da Voodoo", slot = "Two-Hand", type = "Staff", zone = "Shaman Quests", reqLevel = 50, questID = 8413, side = "Horde", class = "SHAMAN", choice = 8413 },
    [20134] = { name = "Skyfury Helm", source = "A More Fitting Reward", slot = "Head", type = "Mail Armor", zone = "Shaman Quests", reqLevel = 58, questID = 8259, side = "Horde", class = "SHAMAN" },
    [18807] = { name = "Helm of Latent Power", source = "The Darkreaver Menace", slot = "Head", type = "Mail Armor", zone = "Shaman Quests", reqLevel = 58, questID = 7668, side = "Horde", class = "SHAMAN" },
}

SGJ.ZoneMeta["Silithus Quests"] = { name = "Silithus Quests", min = 54, world = true }
SGJ.DungeonDB["Silithus Quests"] = {
    [20646] = { name = "Sandstrider's Mark", source = "Wanted - Deathclasp, Terror of the Sands", slot = "Ranged", type = "Bow", zone = "Silithus Quests", reqLevel = 54, questID = 8283, choice = 8283 },
    [20647] = { name = "Black Crystal Dagger", source = "Wanted - Deathclasp, Terror of the Sands", slot = "Main Hand", type = "Dagger", zone = "Silithus Quests", reqLevel = 54, questID = 8283, choice = 8283 },
    [22725] = { name = "Band of Cenarius", source = "A Humble Offering", slot = "Finger", type = "Ring", zone = "Silithus Quests", reqLevel = 58, questID = 9248 },
    [20699] = { name = "Cenarion Reservist's Legplates", source = "Armaments of War", slot = "Legs", type = "Plate Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8316 },
    [20700] = { name = "Cenarion Reservist's Legplates", source = "Armaments of War", slot = "Legs", type = "Plate Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8376, side = "Alliance" },
    [20701] = { name = "Cenarion Reservist's Legguards", source = "Armaments of War", slot = "Legs", type = "Mail Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8380, side = "Horde" },
    [20702] = { name = "Cenarion Reservist's Legguards", source = "Armaments of War", slot = "Legs", type = "Mail Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8377 },
    [20703] = { name = "Cenarion Reservist's Leggings", source = "Armaments of War", slot = "Legs", type = "Leather Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8378 },
    [20704] = { name = "Cenarion Reservist's Leggings", source = "Armaments of War", slot = "Legs", type = "Leather Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8382 },
    [20705] = { name = "Cenarion Reservist's Pants", source = "Armaments of War", slot = "Legs", type = "Cloth Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8381 },
    [20707] = { name = "Cenarion Reservist's Pants", source = "Armaments of War", slot = "Legs", type = "Cloth Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8379 },
    [20710] = { name = "Crystal Encrusted Greaves", source = "Armaments of War", slot = "Feet", type = "Plate Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8316 },
    [20711] = { name = "Crystal Lined Greaves", source = "Armaments of War", slot = "Feet", type = "Plate Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8376, side = "Alliance" },
    [20712] = { name = "Wastewalker's Gauntlets", source = "Armaments of War", slot = "Hands", type = "Mail Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8380, side = "Horde" },
    [20713] = { name = "Desertstalkers's Gauntlets", source = "Armaments of War", slot = "Hands", type = "Mail Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8377 },
    [20714] = { name = "Sandstorm Boots", source = "Armaments of War", slot = "Feet", type = "Leather Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8382 },
    [20715] = { name = "Dunestalker's Boots", source = "Armaments of War", slot = "Feet", type = "Leather Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8378 },
    [20716] = { name = "Sandworm Skin Gloves", source = "Armaments of War", slot = "Hands", type = "Cloth Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8381 },
    [20717] = { name = "Desert Bloom Gloves", source = "Armaments of War", slot = "Hands", type = "Cloth Armor", zone = "Silithus Quests", reqLevel = 58, questID = 8379 },
    [20723] = { name = "Brann's Trusty Pick", source = "Brann Bronzebeard's Lost Letter", slot = "Main Hand", type = "One-Handed Axe", zone = "Silithus Quests", reqLevel = 58, questID = 8308 },
    [20724] = { name = "Corrupted Blackwood Staff", source = "Into The Maw of Madness", slot = "Two-Hand", type = "Staff", zone = "Silithus Quests", reqLevel = 58, questID = 8306 },
    [21180] = { name = "Earthstrike", source = "Champion's Battlegear", slot = "Trinket", type = "Trinket", zone = "Silithus Quests", reqLevel = 60, questID = 8573, choice = 8573 },
    [21188] = { name = "Fist of Cenarius", source = "Champion's Battlegear", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Silithus Quests", reqLevel = 60, questID = 8573, choice = 8573 },
    [21190] = { name = "Wrath of Cenarius", source = "Champion's Battlegear", slot = "Finger", type = "Ring", zone = "Silithus Quests", reqLevel = 60, questID = 8573, choice = 8573 },
    [20422] = { name = "Twilight Cultist Medallion of Station", source = "Dukes of the Council", slot = "Neck", type = "Miscellaneous", zone = "Silithus Quests", reqLevel = 60, questID = 8332 },
    [20451] = { name = "Twilight Cultist Ring of Lordship", source = "Lords of the Council", slot = "Finger", type = "Miscellaneous", zone = "Silithus Quests", reqLevel = 60, questID = 8341 },
    [21184] = { name = "Deeprock Bracers", source = "Stalwart's Battlegear", slot = "Wrist", type = "Plate Armor", zone = "Silithus Quests", reqLevel = 60, questID = 8574, choice = 8574 },
    [21185] = { name = "Earthcalm Orb", source = "Stalwart's Battlegear", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Silithus Quests", reqLevel = 60, questID = 8574, choice = 8574 },
    [21186] = { name = "Rockfury Bracers", source = "Stalwart's Battlegear", slot = "Wrist", type = "Cloth Armor", zone = "Silithus Quests", reqLevel = 60, questID = 8574, choice = 8574 },
    [21189] = { name = "Might of Cenarius", source = "Stalwart's Battlegear", slot = "Finger", type = "Ring", zone = "Silithus Quests", reqLevel = 60, questID = 8574, choice = 8574 },
    [22348] = { name = "Doomulus Prime", source = "The Perfect Poison", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Silithus Quests", reqLevel = 60, questID = 9023, choice = 9023 },
    [22377] = { name = "The Thunderwood Poker", source = "The Perfect Poison", slot = "One-Hand", type = "Dagger", zone = "Silithus Quests", reqLevel = 60, questID = 9023, choice = 9023 },
    [22378] = { name = "Ravenholdt Slicer", source = "The Perfect Poison", slot = "One-Hand", type = "One-Handed Sword", zone = "Silithus Quests", reqLevel = 60, questID = 9023, choice = 9023 },
    [22379] = { name = "Shivsprocket's Shiv", source = "The Perfect Poison", slot = "Main Hand", type = "Dagger", zone = "Silithus Quests", reqLevel = 60, questID = 9023, choice = 9023 },
    [21520] = { name = "Ravencrest's Legacy", source = "Treasure of the Timeless One", slot = "One-Hand", type = "One-Handed Sword", zone = "Silithus Quests", reqLevel = 60, questID = 8745, choice = 8745 },
    [21521] = { name = "Runesword of the Red", source = "Treasure of the Timeless One", slot = "Main Hand", type = "One-Handed Sword", zone = "Silithus Quests", reqLevel = 60, questID = 8745, choice = 8745 },
    [21522] = { name = "Shadowsong's Sorrow", source = "Treasure of the Timeless One", slot = "One-Hand", type = "Dagger", zone = "Silithus Quests", reqLevel = 60, questID = 8745, choice = 8745 },
    [21523] = { name = "Fang of Korialstrasz", source = "Treasure of the Timeless One", slot = "Main Hand", type = "Dagger", zone = "Silithus Quests", reqLevel = 60, questID = 8745, choice = 8745 },
    [21181] = { name = "Grace of Earth", source = "Veteran's Battlegear", slot = "Trinket", type = "Trinket", zone = "Silithus Quests", reqLevel = 60, questID = 8572, choice = 8572 },
    [21182] = { name = "Band of Earthen Might", source = "Veteran's Battlegear", slot = "Finger", type = "Ring", zone = "Silithus Quests", reqLevel = 60, questID = 8572, choice = 8572 },
    [21183] = { name = "Earthpower Vest", source = "Veteran's Battlegear", slot = "Chest", type = "Cloth Armor", zone = "Silithus Quests", reqLevel = 60, questID = 8572, choice = 8572 },
    [21178] = { name = "Gloves of Earthen Power", source = "Volunteer's Battlegear", slot = "Hands", type = "Leather Armor", zone = "Silithus Quests", reqLevel = 60, questID = 8548, choice = 8548 },
    [21179] = { name = "Band of Earthen Wrath", source = "Volunteer's Battlegear", slot = "Finger", type = "Ring", zone = "Silithus Quests", reqLevel = 60, questID = 8548, choice = 8548 },
    [21187] = { name = "Earthweave Cloak", source = "Volunteer's Battlegear", slot = "Back", type = "Cloak", zone = "Silithus Quests", reqLevel = 60, questID = 8548, choice = 8548 },
    [20649] = { name = "Sunprism Pendant", source = "Vyral the Vile", slot = "Neck", type = "Amulet", zone = "Silithus Quests", reqLevel = 60, questID = 8321, choice = 8321 },
    [20650] = { name = "Desert Wind Gauntlets", source = "Vyral the Vile", slot = "Hands", type = "Plate Armor", zone = "Silithus Quests", reqLevel = 60, questID = 8321, choice = 8321 },
}

SGJ.ZoneMeta["Silverpine Forest Quests"] = { name = "Silverpine Forest Quests", min = 9, world = true }
SGJ.DungeonDB["Silverpine Forest Quests"] = {
    [3451] = { name = "Nightglow Concoction", source = "A Recipe For Death", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Silverpine Forest Quests", reqLevel = 9, questID = 451, side = "Horde", choice = 451 },
    [3582] = { name = "Acidproof Cloak", source = "A Recipe For Death", slot = "Back", type = "Cloak", zone = "Silverpine Forest Quests", reqLevel = 9, questID = 451, side = "Horde", choice = 451 },
    [3570] = { name = "Bonegrinding Pestle", source = "Arugal's Folly", slot = "Main Hand", type = "One-Handed Mace", zone = "Silverpine Forest Quests", reqLevel = 9, questID = 99, side = "Horde", choice = 99 },
    [3586] = { name = "Logsplitter", source = "Arugal's Folly", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Silverpine Forest Quests", reqLevel = 9, questID = 99, side = "Horde", choice = 99 },
    [5242] = { name = "Cinder Wand", source = "Arugal's Folly", slot = "Ranged", type = "Wand", zone = "Silverpine Forest Quests", reqLevel = 9, questID = 99, side = "Horde", choice = 99 },
    [281315] = { name = "Foulfur Gloves", source = "Arugal's Folly", slot = "Hands", type = "Cloth Armor", zone = "Silverpine Forest Quests", reqLevel = 9, questID = 98298, side = "Horde" },
    [3235] = { name = "Ring of Scorn", source = "A Husband's Revenge", slot = "Finger", type = "Ring", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 530, side = "Horde" },
    [3461] = { name = "High Robe of the Adjudicator", source = "Assault on Fenris Isle", slot = "Chest", type = "Cloth Armor", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 442, side = "Horde", choice = 442 },
    [3462] = { name = "Talonstrike", source = "Assault on Fenris Isle", slot = "Main Hand", type = "One-Handed Sword", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 442, side = "Horde", choice = 442 },
    [270020] = { name = "Gnollhide Pants", source = "Assault on Fenris Isle", slot = "Legs", type = "Leather Armor", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 442, side = "Horde", choice = 442 },
    [276722] = { name = "Gnoll Shackles", source = "Assault on Fenris Isle", slot = "Wrist", type = "Mail Armor", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 442, side = "Horde", choice = 442 },
    [3455] = { name = "Deathstalker Shortsword", source = "Escorting Erland", slot = "One-Hand", type = "One-Handed Sword", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 435, side = "Horde" },
    [3453] = { name = "Quilted Bracers", source = "Ivar the Foul", slot = "Wrist", type = "Cloth Armor", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 425, side = "Horde", choice = 425 },
    [3583] = { name = "Weathered Belt", source = "Ivar the Foul", slot = "Waist", type = "Leather Armor", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 425, side = "Horde", choice = 425 },
    [3454] = { name = "Reconnaissance Boots", source = "The Dead Fields", slot = "Feet", type = "Cloth Armor", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 437, side = "Horde" },
    [3452] = { name = "Ceranium Rod", source = "The Weaver", slot = "Two-Hand", type = "Staff", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 480, side = "Horde", choice = 480 },
    [3585] = { name = "Camouflaged Tunic", source = "The Weaver", slot = "Chest", type = "Leather Armor", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 480, side = "Horde", choice = 480 },
    [281265] = { name = "Roadwatcher's Confidence", source = "Watching the Roads", slot = "Neck", type = "Amulet", zone = "Silverpine Forest Quests", reqLevel = 10, questID = 95981, side = "Horde" },
    [2818] = { name = "Stretched Leather Trousers", source = "Pyrewood Ambush", slot = "Legs", type = "Leather Armor", zone = "Silverpine Forest Quests", reqLevel = 12, questID = 452, side = "Horde", choice = 452 },
    [3449] = { name = "Mystic Shawl", source = "Pyrewood Ambush", slot = "Back", type = "Cloak", zone = "Silverpine Forest Quests", reqLevel = 12, questID = 452, side = "Horde", choice = 452 },
    [3450] = { name = "Faerleia's Shield", source = "Pyrewood Ambush", slot = "Shield", type = "Shield", zone = "Silverpine Forest Quests", reqLevel = 12, questID = 452, side = "Horde", choice = 452 },
    [3457] = { name = "Stamped Trousers", source = "Wand to Bethor", slot = "Legs", type = "Cloth Armor", zone = "Silverpine Forest Quests", reqLevel = 12, questID = 491, side = "Horde", choice = 491 },
    [3458] = { name = "Rugged Mail Gloves", source = "Wand to Bethor", slot = "Hands", type = "Mail Armor", zone = "Silverpine Forest Quests", reqLevel = 12, questID = 491, side = "Horde", choice = 491 },
    [3581] = { name = "Serrated Knife", source = "Wand to Bethor", slot = "One-Hand", type = "Dagger", zone = "Silverpine Forest Quests", reqLevel = 12, questID = 491, side = "Horde", choice = 491 },
    [5252] = { name = "Wand of Decay", source = "Beren's Peril", slot = "Ranged", type = "Wand", zone = "Silverpine Forest Quests", reqLevel = 16, questID = 516, side = "Horde" },
    [281673] = { name = "Loop of Sacrifice", source = "The Offering of Blood", slot = "Finger", type = "Ring", zone = "Silverpine Forest Quests", reqLevel = 20, questID = 95885, side = "Horde" },
}

SGJ.ZoneMeta["Stonetalon Mountains Quests"] = { name = "Stonetalon Mountains Quests", min = 14, world = true }
SGJ.DungeonDB["Stonetalon Mountains Quests"] = {
    [1306] = { name = "Wolfmane Wristguards", source = "Earthen Arise", slot = "Wrist", type = "Leather Armor", zone = "Stonetalon Mountains Quests", reqLevel = 14, questID = 6481, side = "Horde", choice = 6481 },
    [16981] = { name = "Owlbeard Bracers", source = "Earthen Arise", slot = "Wrist", type = "Cloth Armor", zone = "Stonetalon Mountains Quests", reqLevel = 14, questID = 6481, side = "Horde", choice = 6481 },
    [270010] = { name = "Raptorcrest Bracers", source = "Earthen Arise", slot = "Wrist", type = "Mail Armor", zone = "Stonetalon Mountains Quests", reqLevel = 14, questID = 6481, side = "Horde", choice = 6481 },
    [3463] = { name = "Silver Star", source = "Scramble", slot = "Thrown", type = "Thrown", zone = "Stonetalon Mountains Quests", reqLevel = 14, questID = 79980, choice = 79980 },
    [16891] = { name = "Claystone Shortsword", source = "Arachnophobia", slot = "One-Hand", type = "One-Handed Sword", zone = "Stonetalon Mountains Quests", reqLevel = 15, questID = 6284, side = "Horde", choice = 6284 },
    [16894] = { name = "Clear Crystal Rod", source = "Arachnophobia", slot = "Two-Hand", type = "Staff", zone = "Stonetalon Mountains Quests", reqLevel = 15, questID = 6284, side = "Horde", choice = 6284 },
    [6667] = { name = "Engineer's Cloak", source = "Gerenzo Wrenchwhistle", slot = "Back", type = "Cloak", zone = "Stonetalon Mountains Quests", reqLevel = 16, questID = 1096, choice = 1096 },
    [6668] = { name = "Draftsman Boots", source = "Gerenzo Wrenchwhistle", slot = "Feet", type = "Leather Armor", zone = "Stonetalon Mountains Quests", reqLevel = 16, questID = 1096, choice = 1096 },
    [6666] = { name = "Dredge Boots", source = "Gerenzo's Orders", slot = "Feet", type = "Mail Armor", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 1092 },
    [16985] = { name = "Windseeker Boots", source = "New Life", slot = "Feet", type = "Cloth Armor", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 6381, side = "Horde", choice = 6381 },
    [16986] = { name = "Sandspire Gloves", source = "New Life", slot = "Hands", type = "Mail Armor", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 6381, side = "Horde", choice = 6381 },
    [6678] = { name = "Band of Elven Grace", source = "Reception from Tyrande", slot = "Finger", type = "Ring", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 1081, side = "Alliance" },
    [7334] = { name = "Efflorescent Robe", source = "Reception from Tyrande", slot = "Chest", type = "Cloth Armor", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 1081, side = "Alliance", choice = 1081 },
    [7335] = { name = "Grizzly Tunic", source = "Reception from Tyrande", slot = "Chest", type = "Leather Armor", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 1081, side = "Alliance", choice = 1081 },
    [7336] = { name = "Wildwood Chain", source = "Reception from Tyrande", slot = "Chest", type = "Mail Armor", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 1081, side = "Alliance", choice = 1081 },
    [6677] = { name = "Spellcrafter Wand", source = "Retrieval for Mauren", slot = "Ranged", type = "Wand", zone = "Stonetalon Mountains Quests", reqLevel = 17, questID = 1078, side = "Alliance" },
    [16987] = { name = "Screecher Belt", source = "Bloodfury Bloodline", slot = "Waist", type = "Leather Armor", zone = "Stonetalon Mountains Quests", reqLevel = 18, questID = 6283, side = "Horde", choice = 6283 },
    [16990] = { name = "Spritekin Cloak", source = "Bloodfury Bloodline", slot = "Back", type = "Cloak", zone = "Stonetalon Mountains Quests", reqLevel = 18, questID = 6283, side = "Horde", choice = 6283 },
    [270028] = { name = "Harpy Bangles", source = "Bloodfury Bloodline", slot = "Wrist", type = "Cloth Armor", zone = "Stonetalon Mountains Quests", reqLevel = 18, questID = 6283, side = "Horde", choice = 6283 },
    [281252] = { name = "Harpy Claw Ring", source = "Bloodfury Trinkets", slot = "Finger", type = "Ring", zone = "Stonetalon Mountains Quests", reqLevel = 18, questID = 86576, side = "Horde" },
    [6664] = { name = "Voodoo Mantle", source = "Jin'Zil's Forest Magic", slot = "Shoulder", type = "Cloth Armor", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1058, side = "Horde", choice = 1058 },
    [6665] = { name = "Hexed Bracers", source = "Jin'Zil's Forest Magic", slot = "Wrist", type = "Mail Armor", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1058, side = "Horde", choice = 1058 },
    [6675] = { name = "Tempered Bracers", source = "Reclaiming the Charred Vale", slot = "Wrist", type = "Mail Armor", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1059, side = "Alliance", choice = 1059 },
    [6676] = { name = "Constable Buckler", source = "Reclaiming the Charred Vale", slot = "Shield", type = "Shield", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1059, side = "Alliance", choice = 1059 },
    [270035] = { name = "Reclaimer's Robes", source = "Reclaiming the Charred Vale", slot = "Chest", type = "Cloth Armor", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1059, side = "Alliance", choice = 1059 },
    [281251] = { name = "Courier's Wristguards", source = "Stonetalon Supply Run", slot = "Wrist", type = "Leather Armor", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 86574, side = "Alliance" },
    [6669] = { name = "Sacred Band", source = "The Den", slot = "Finger", type = "Ring", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1089, side = "Horde" },
    [6670] = { name = "Panther Armor", source = "The Den", slot = "Chest", type = "Leather Armor", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1089, side = "Horde" },
    [6671] = { name = "Juggernaut Leggings", source = "The Den", slot = "Legs", type = "Mail Armor", zone = "Stonetalon Mountains Quests", reqLevel = 20, questID = 1089, side = "Horde" },
}

SGJ.ZoneMeta["Stormwind City Quests"] = { name = "Stormwind City Quests", min = 7, world = true }
SGJ.DungeonDB["Stormwind City Quests"] = {
    [286427] = { name = "Cloak of the Honored Guest", source = "Exploring the Alliance", slot = "Back", type = "Cloak", zone = "Stormwind City Quests", reqLevel = 7, questID = 93963, side = "Alliance", race = "Skyborne" },
    [2933] = { name = "Seal of Wrynn", source = "An Audience with the King", slot = "Finger", type = "Ring", zone = "Stormwind City Quests", reqLevel = 16, questID = 396, side = "Alliance" },
    [281296] = { name = "Knight's Lance", source = "A Friend of the Family", slot = "Two-Hand", type = "Polearm", zone = "Stormwind City Quests", reqLevel = 20, questID = 98191, side = "Alliance", choice = 98191 },
    [281297] = { name = "Royal Dagger", source = "A Friend of the Family", slot = "Main Hand", type = "Dagger", zone = "Stormwind City Quests", reqLevel = 20, questID = 98191, side = "Alliance", choice = 98191 },
    [6095] = { name = "Wandering Boots", source = "Return to Kristoff", slot = "Feet", type = "Cloth Armor", zone = "Stormwind City Quests", reqLevel = 20, questID = 346, side = "Alliance" },
    [3556] = { name = "Dread Mage Hat", source = "You Have Served Us Well", slot = "Head", type = "Cloth Armor", zone = "Stormwind City Quests", reqLevel = 25, questID = 397, side = "Alliance" },
    [6757] = { name = "Jaina's Signet Ring", source = "The Missing Diplomat", slot = "Finger", type = "Ring", zone = "Stormwind City Quests", reqLevel = 28, questID = 1267, side = "Alliance" },
    [10747] = { name = "Teacher's Sash", source = "Mazen's Behest", slot = "Waist", type = "Cloth Armor", zone = "Stormwind City Quests", reqLevel = 37, questID = 1364, side = "Alliance", choice = 1364 },
    [10748] = { name = "Wanderlust Boots", source = "Mazen's Behest", slot = "Feet", type = "Leather Armor", zone = "Stormwind City Quests", reqLevel = 37, questID = 1364, side = "Alliance", choice = 1364 },
    [18403] = { name = "Dragonslayer's Signet", source = "Celebrating Good Times", slot = "Finger", type = "Ring", zone = "Stormwind City Quests", reqLevel = 60, questID = 7496, side = "Alliance", choice = 7496 },
    [18404] = { name = "Onyxia Tooth Pendant", source = "Celebrating Good Times", slot = "Neck", type = "Amulet", zone = "Stormwind City Quests", reqLevel = 60, questID = 7496, side = "Alliance", choice = 7496 },
    [18406] = { name = "Onyxia Blood Talisman", source = "Celebrating Good Times", slot = "Trinket", type = "Trinket", zone = "Stormwind City Quests", reqLevel = 60, questID = 7496, side = "Alliance", choice = 7496 },
    [19366] = { name = "Master Dragonslayer's Orb", source = "The Lord of Blackrock", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Stormwind City Quests", reqLevel = 60, questID = 7782, side = "Alliance", choice = 7782 },
    [19383] = { name = "Master Dragonslayer's Medallion", source = "The Lord of Blackrock", slot = "Neck", type = "Amulet", zone = "Stormwind City Quests", reqLevel = 60, questID = 7782, side = "Alliance", choice = 7782 },
    [19384] = { name = "Master Dragonslayer's Ring", source = "The Lord of Blackrock", slot = "Finger", type = "Ring", zone = "Stormwind City Quests", reqLevel = 60, questID = 7782, side = "Alliance", choice = 7782 },
}

SGJ.ZoneMeta["Stranglethorn Vale Quests"] = { name = "Stranglethorn Vale Quests", min = 28, world = true }
SGJ.DungeonDB["Stranglethorn Vale Quests"] = {
    [17686] = { name = "Master Hunter's Bow", source = "Big Game Hunter", slot = "Ranged", type = "Bow", zone = "Stranglethorn Vale Quests", reqLevel = 28, questID = 208, choice = 208 },
    [17687] = { name = "Master Hunter's Rifle", source = "Big Game Hunter", slot = "Ranged", type = "Gun", zone = "Stranglethorn Vale Quests", reqLevel = 28, questID = 208, choice = 208 },
    [4108] = { name = "Panther Hunter Leggings", source = "Panther Mastery", slot = "Legs", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 28, questID = 193 },
    [4119] = { name = "Raptor Hunter Tunic", source = "Raptor Mastery", slot = "Chest", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 28, questID = 197 },
    [4107] = { name = "Tiger Hunter Gloves", source = "Tiger Mastery", slot = "Hands", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 28, questID = 188 },
    [4126] = { name = "Guerrilla Cleaver", source = "Bad Medicine", slot = "Main Hand", type = "One-Handed Axe", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 204, side = "Alliance", choice = 204 },
    [4140] = { name = "Palm Frond Mantle", source = "Bad Medicine", slot = "Shoulder", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 204, side = "Alliance", choice = 204 },
    [4135] = { name = "Bloodbone Band", source = "Bloody Bone Necklaces", slot = "Finger", type = "Ring", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 596, side = "Horde" },
    [4127] = { name = "Shrapnel Blaster", source = "Colonel Kurzen", slot = "Ranged", type = "Gun", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 202, side = "Alliance" },
    [4129] = { name = "Collection Plate", source = "Cracking Maury's Foot", slot = "Shield", type = "Shield", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 613 },
    [4132] = { name = "Darkspear Armsplints", source = "Headhunting", slot = "Wrist", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 582, side = "Horde", choice = 582 },
    [4133] = { name = "Darkspear Cuffs", source = "Headhunting", slot = "Wrist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 582, side = "Horde", choice = 582 },
    [4125] = { name = "Tranquil Orb", source = "Mai'Zoth", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 206, side = "Alliance" },
    [4123] = { name = "Frost Metal Pauldrons", source = "Report to Doren", slot = "Shoulder", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 331, side = "Alliance", choice = 331 },
    [4139] = { name = "Junglewalker Sandals", source = "Report to Doren", slot = "Feet", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 331, side = "Alliance", choice = 331 },
    [4134] = { name = "Nimboya's Mystical Staff", source = "Saving Yenniku", slot = "Two-Hand", type = "Staff", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 592, side = "Horde", choice = 592 },
    [6723] = { name = "Medal of Courage", source = "Saving Yenniku", slot = "Neck", type = "Amulet", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 592, side = "Horde", choice = 592 },
    [4136] = { name = "Darkspear Boots", source = "Split Bone Necklace", slot = "Feet", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 598, side = "Horde", choice = 598 },
    [4137] = { name = "Darkspear Shoes", source = "Split Bone Necklace", slot = "Feet", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 598, side = "Horde", choice = 598 },
    [17688] = { name = "Jungle Boots", source = "The Green Hills of Stranglethorn", slot = "Feet", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 338 },
    [4122] = { name = "Bookmaker's Scepter", source = "The Hidden Key", slot = "Main Hand", type = "One-Handed Mace", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 328, side = "Alliance" },
    [4128] = { name = "Silver Spade", source = "Venture Company Mining", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 600, choice = 600 },
    [5253] = { name = "Goblin Igniter", source = "Venture Company Mining", slot = "Ranged", type = "Wand", zone = "Stranglethorn Vale Quests", reqLevel = 30, questID = 600, choice = 600 },
    [4109] = { name = "Excelsior Boots", source = "Excelsior", slot = "Feet", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 31, questID = 628 },
    [4121] = { name = "Gemmed Gloves", source = "Hostile Takeover", slot = "Hands", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 31, questID = 213 },
    [4124] = { name = "Cap of Harmony", source = "Return to Corporal Kaleb", slot = "Head", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 32, questID = 622, side = "Alliance" },
    [4120] = { name = "Robe of Crystal Waters", source = "The Curse of the Tides", slot = "Chest", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 32, questID = 611, side = "Alliance" },
    [4112] = { name = "Choker of the High Shaman", source = "Mok'thardin's Enchantment", slot = "Neck", type = "Amulet", zone = "Stranglethorn Vale Quests", reqLevel = 33, questID = 573, side = "Horde" },
    [4115] = { name = "Grom'gol Buckler", source = "The Defense of Grom'gol", slot = "Shield", type = "Shield", zone = "Stranglethorn Vale Quests", reqLevel = 33, questID = 569, side = "Horde" },
    [4130] = { name = "Smotts' Compass", source = "Facing Negolash", slot = "Trinket", type = "Trinket", zone = "Stranglethorn Vale Quests", reqLevel = 35, questID = 618 },
    [11469] = { name = "Bloodband Bracers", source = "The Captain's Chest", slot = "Wrist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 35, questID = 614 },
    [4131] = { name = "Belt of Corruption", source = "Zanzil's Secret", slot = "Waist", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 35, questID = 621 },
    [4114] = { name = "Darktide Cape", source = "Keep An Eye Out", slot = "Back", type = "Cloak", zone = "Stranglethorn Vale Quests", reqLevel = 37, questID = 576 },
    [4138] = { name = "Blackwater Tunic", source = "The Bloodsail Buccaneers", slot = "Chest", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 37, questID = 608 },
    [4117] = { name = "Scorching Sash", source = "Akiris by the Bundle", slot = "Waist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 38, questID = 617 },
    [20218] = { name = "Faded Hakkari Cloak", source = "Confront Yeh'kinya", slot = "Back", type = "Cloak", zone = "Stranglethorn Vale Quests", reqLevel = 40, questID = 8181, choice = 8181 },
    [20219] = { name = "Tattered Hakkari Cape", source = "Confront Yeh'kinya", slot = "Back", type = "Cloak", zone = "Stranglethorn Vale Quests", reqLevel = 40, questID = 8181, choice = 8181 },
    [4113] = { name = "Medicine Blanket", source = "Stranglethorn Fever", slot = "Back", type = "Cloak", zone = "Stranglethorn Vale Quests", reqLevel = 40, questID = 348 },
    [10696] = { name = "Enchanted Azsharite Felbane Sword", source = "Enchanted Azsharite Fel Weaponry", slot = "Main Hand", type = "One-Handed Sword", zone = "Stranglethorn Vale Quests", reqLevel = 45, questID = 3625, choice = 3625 },
    [10697] = { name = "Enchanted Azsharite Felbane Dagger", source = "Enchanted Azsharite Fel Weaponry", slot = "One-Hand", type = "Dagger", zone = "Stranglethorn Vale Quests", reqLevel = 45, questID = 3625, choice = 3625 },
    [10698] = { name = "Enchanted Azsharite Felbane Staff", source = "Enchanted Azsharite Fel Weaponry", slot = "Two-Hand", type = "Staff", zone = "Stranglethorn Vale Quests", reqLevel = 45, questID = 3625, choice = 3625 },
    [4118] = { name = "Poobah's Nose Ring", source = "Message in a Bottle", slot = "Wrist", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 45, questID = 630 },
    [19024] = { name = "Arena Grand Master", source = "Arena Grandmaster", slot = "Trinket", type = "Trinket", zone = "Stranglethorn Vale Quests", reqLevel = 50, questID = 7838 },
    [12185] = { name = "Bloodsail Admiral's Hat", source = "Avast Ye, Admiral!", slot = "Head", type = "Armor", zone = "Stranglethorn Vale Quests", reqLevel = 55, questID = 4621 },
    [20213] = { name = "Belt of Shrunken Heads", source = "A Collection of Heads", slot = "Waist", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8201, choice = 8201 },
    [20215] = { name = "Belt of Shriveled Heads", source = "A Collection of Heads", slot = "Waist", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8201, choice = 8201 },
    [20216] = { name = "Belt of Preserved Heads", source = "A Collection of Heads", slot = "Waist", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8201, choice = 8201 },
    [20217] = { name = "Belt of Tiny Heads", source = "A Collection of Heads", slot = "Waist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8201, choice = 8201 },
    [19829] = { name = "Zandalar Augur's Belt", source = "Paragons of Power: The Augur's Belt", slot = "Waist", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8074 },
    [19830] = { name = "Zandalar Augur's Bracers", source = "Paragons of Power: The Augur's Bracers", slot = "Wrist", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8056 },
    [19828] = { name = "Zandalar Augur's Hauberk", source = "Paragons of Power: The Augur's Hauberk", slot = "Chest", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8075 },
    [19842] = { name = "Zandalar Confessor's Bindings", source = "Paragons of Power: The Confessor's Bindings", slot = "Waist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8070 },
    [19841] = { name = "Zandalar Confessor's Mantle", source = "Paragons of Power: The Confessor's Mantle", slot = "Shoulder", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8071 },
    [19843] = { name = "Zandalar Confessor's Wraps", source = "Paragons of Power: The Confessor's Wraps", slot = "Wrist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8061 },
    [19849] = { name = "Zandalar Demoniac's Mantle", source = "Paragons of Power: The Demoniac's Mantle", slot = "Shoulder", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8076 },
    [20033] = { name = "Zandalar Demoniac's Robe", source = "Paragons of Power: The Demoniac's Robes", slot = "Chest", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8077 },
    [19848] = { name = "Zandalar Demoniac's Wraps", source = "Paragons of Power: The Demoniac's Wraps", slot = "Wrist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8059 },
    [19827] = { name = "Zandalar Freethinker's Armguards", source = "Paragons of Power: The Freethinker's Armguards", slot = "Wrist", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8053 },
    [19826] = { name = "Zandalar Freethinker's Belt", source = "Paragons of Power: The Freethinker's Belt", slot = "Waist", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8054 },
    [19825] = { name = "Zandalar Freethinker's Breastplate", source = "Paragons of Power: The Freethinker's Breastplate", slot = "Chest", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8055 },
    [19839] = { name = "Zandalar Haruspex's Belt", source = "Paragons of Power: The Haruspex's Belt", slot = "Waist", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8064 },
    [19840] = { name = "Zandalar Haruspex's Bracers", source = "Paragons of Power: The Haruspex's Bracers", slot = "Wrist", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8057 },
    [19838] = { name = "Zandalar Haruspex's Tunic", source = "Paragons of Power: The Haruspex's Tunic", slot = "Chest", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8065 },
    [19845] = { name = "Zandalar Illusionist's Mantle", source = "Paragons of Power: The Illusionist's Mantle", slot = "Shoulder", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8068 },
    [20034] = { name = "Zandalar Illusionist's Robe", source = "Paragons of Power: The Illusionist's Robes", slot = "Chest", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8069 },
    [19846] = { name = "Zandalar Illusionist's Wraps", source = "Paragons of Power: The Illusionist's Wraps", slot = "Wrist", type = "Cloth Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8060 },
    [19836] = { name = "Zandalar Madcap's Bracers", source = "Paragons of Power: The Madcap's Bracers", slot = "Wrist", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8063 },
    [19835] = { name = "Zandalar Madcap's Mantle", source = "Paragons of Power: The Madcap's Mantle", slot = "Shoulder", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8072 },
    [19834] = { name = "Zandalar Madcap's Tunic", source = "Paragons of Power: The Madcap's Tunic", slot = "Chest", type = "Leather Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8073 },
    [19832] = { name = "Zandalar Predator's Belt", source = "Paragons of Power: The Predator's Belt", slot = "Waist", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8066 },
    [19833] = { name = "Zandalar Predator's Bracers", source = "Paragons of Power: The Predator's Bracers", slot = "Wrist", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8062 },
    [19831] = { name = "Zandalar Predator's Mantle", source = "Paragons of Power: The Predator's Mantle", slot = "Shoulder", type = "Mail Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8067 },
    [19824] = { name = "Zandalar Vindicator's Armguards", source = "Paragons of Power: The Vindicator's Armguards", slot = "Wrist", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8058 },
    [19823] = { name = "Zandalar Vindicator's Belt", source = "Paragons of Power: The Vindicator's Belt", slot = "Waist", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8078 },
    [19822] = { name = "Zandalar Vindicator's Breastplate", source = "Paragons of Power: The Vindicator's Breastplate", slot = "Chest", type = "Plate Armor", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8079 },
    [19948] = { name = "Zandalarian Hero Badge", source = "The Heart of Hakkar", slot = "Trinket", type = "Trinket", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8183, choice = 8183 },
    [19949] = { name = "Zandalarian Hero Medallion", source = "The Heart of Hakkar", slot = "Trinket", type = "Trinket", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8183, choice = 8183 },
    [19950] = { name = "Zandalarian Hero Charm", source = "The Heart of Hakkar", slot = "Trinket", type = "Trinket", zone = "Stranglethorn Vale Quests", reqLevel = 58, questID = 8183, choice = 8183 },
}

SGJ.QuestDB["Stratholme"] = {
    [17044] = { name = "Will of the Martyr", source = "Aurius' Reckoning", slot = "Neck", type = "Amulet", zone = "Stratholme", reqLevel = 55, questID = 5125, choice = 5125 },
    [17045] = { name = "Blood of the Martyr", source = "Aurius' Reckoning", slot = "Finger", type = "Ring", zone = "Stratholme", reqLevel = 55, questID = 5125, choice = 5125 },
    [13216] = { name = "Crown of the Penitent", source = "Houses of the Holy", slot = "Head", type = "Cloth Armor", zone = "Stratholme", reqLevel = 55, questID = 5243, choice = 5243 },
    [13217] = { name = "Band of the Penitent", source = "Houses of the Holy", slot = "Finger", type = "Ring", zone = "Stratholme", reqLevel = 55, questID = 5243, choice = 5243 },
    [13209] = { name = "Seal of the Dawn", source = "The Active Agent", slot = "Trinket", type = "Trinket", zone = "Stratholme", reqLevel = 55, questID = 5213, choice = 5213 },
    [19812] = { name = "Rune of the Dawn", source = "The Active Agent", slot = "Trinket", type = "Trinket", zone = "Stratholme", reqLevel = 55, questID = 5213, choice = 5213 },
    [13171] = { name = "Smokey's Lighter", source = "The Great Fras Siabi", slot = "Trinket", type = "Trinket", zone = "Stratholme", reqLevel = 55, questID = 5214 },
    [13315] = { name = "Testament of Hope", source = "The Restless Souls", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Stratholme", reqLevel = 55, questID = 5282 },
    [17001] = { name = "Elemental Circle", source = "Ramstein", slot = "Finger", type = "Ring", zone = "Stratholme", reqLevel = 56, questID = 6163, side = "Horde", choice = 6163 },
    [18022] = { name = "Royal Seal of Alexis", source = "Ramstein", slot = "Finger", type = "Ring", zone = "Stratholme", reqLevel = 56, questID = 6163, side = "Horde", choice = 6163 },
}

SGJ.ZoneMeta["Swamp of Sorrows Quests"] = { name = "Swamp of Sorrows Quests", min = 30, world = true }
SGJ.DungeonDB["Swamp of Sorrows Quests"] = {
    [6828] = { name = "Visionary Buckler", source = "Galen's Escape", slot = "Shield", type = "Shield", zone = "Swamp of Sorrows Quests", reqLevel = 30, questID = 1393 },
    [9682] = { name = "Leather Chef's Belt", source = "Fresh Meat", slot = "Waist", type = "Leather Armor", zone = "Swamp of Sorrows Quests", reqLevel = 35, questID = 1430, side = "Horde" },
    [9678] = { name = "Tok'kar's Murloc Basher", source = "Threat From the Sea", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Swamp of Sorrows Quests", reqLevel = 35, questID = 1427, side = "Horde", choice = 1427 },
    [9679] = { name = "Tok'kar's Murloc Chopper", source = "Threat From the Sea", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Swamp of Sorrows Quests", reqLevel = 35, questID = 1427, side = "Horde", choice = 1427 },
    [9680] = { name = "Tok'kar's Murloc Shanker", source = "Threat From the Sea", slot = "One-Hand", type = "Dagger", zone = "Swamp of Sorrows Quests", reqLevel = 35, questID = 1427, side = "Horde", choice = 1427 },
}

SGJ.ZoneMeta["Tailoring Quests"] = { name = "Tailoring Quests", min = 40, world = true }
SGJ.DungeonDB["Tailoring Quests"] = {
    [10461] = { name = "Shadowy Bracers", source = "Shadoweaver", slot = "Wrist", type = "Cloth Armor", zone = "Tailoring Quests", reqLevel = 40, questID = 3379 },
    [10462] = { name = "Shadowy Belt", source = "The Undermarket", slot = "Waist", type = "Cloth Armor", zone = "Tailoring Quests", reqLevel = 40, questID = 3385 },
}

SGJ.ZoneMeta["Tanaris Quests"] = { name = "Tanaris Quests", min = 40, world = true }
SGJ.DungeonDB["Tanaris Quests"] = {
    [9636] = { name = "Swashbuckler Sash", source = "Deliver to MacKinley", slot = "Waist", type = "Cloth Armor", zone = "Tanaris Quests", reqLevel = 40, questID = 2874, choice = 2874 },
    [9637] = { name = "Shinkicker Boots", source = "Deliver to MacKinley", slot = "Feet", type = "Plate Armor", zone = "Tanaris Quests", reqLevel = 40, questID = 2874, choice = 2874 },
    [20640] = { name = "Southsea Head Bucket", source = "Southsea Shakedown", slot = "Head", type = "Plate Armor", zone = "Tanaris Quests", reqLevel = 40, questID = 8366, choice = 8366 },
    [20641] = { name = "Southsea Mojo Boots", source = "Southsea Shakedown", slot = "Feet", type = "Cloth Armor", zone = "Tanaris Quests", reqLevel = 40, questID = 8366, choice = 8366 },
    [9638] = { name = "Chelonian Cuffs", source = "Tooga's Quest", slot = "Wrist", type = "Mail Armor", zone = "Tanaris Quests", reqLevel = 40, questID = 1560, choice = 1560 },
    [9642] = { name = "Band of the Great Tortoise", source = "Tooga's Quest", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 40, questID = 1560, choice = 1560 },
    [10826] = { name = "Staff of Lore", source = "Gahz'ridian", slot = "Two-Hand", type = "Staff", zone = "Tanaris Quests", reqLevel = 43, questID = 3161, choice = 3161 },
    [10827] = { name = "Surveyor's Tunic", source = "Gahz'ridian", slot = "Chest", type = "Leather Armor", zone = "Tanaris Quests", reqLevel = 43, questID = 3161, choice = 3161 },
    [9643] = { name = "Optomatic Deflector", source = "Rescue OOX-17/TN!", slot = "Shield", type = "Shield", zone = "Tanaris Quests", reqLevel = 43, questID = 648, choice = 648 },
    [9644] = { name = "Thermotastic Egg Timer", source = "Rescue OOX-17/TN!", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Tanaris Quests", reqLevel = 43, questID = 648, choice = 648 },
    [16738] = { name = "Witherseed Gloves", source = "The Dunemaul Compound", slot = "Hands", type = "Cloth Armor", zone = "Tanaris Quests", reqLevel = 44, questID = 5863, choice = 5863 },
    [16739] = { name = "Rugwood Mantle", source = "The Dunemaul Compound", slot = "Shoulder", type = "Leather Armor", zone = "Tanaris Quests", reqLevel = 44, questID = 5863, choice = 5863 },
    [21200] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Changing of Paths - Conqueror No More", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8766 },
    [21210] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Changing of Paths - Conqueror No More", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8766 },
    [21205] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Changing of Paths - Invoker No More", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8765 },
    [21517] = { name = "Gnomish Turban of Psychic Might", source = "The Only Prescription", slot = "Head", type = "Cloth Armor", zone = "Tanaris Quests", reqLevel = 60, questID = 8620 },
    [21201] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Conqueror", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8752 },
    [21202] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Conqueror", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8753 },
    [21203] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Conqueror", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8754 },
    [21204] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Conqueror", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8755 },
    [21206] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Invoker", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8757 },
    [21207] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Invoker", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8758 },
    [21208] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Invoker", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8759 },
    [21209] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Invoker", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8760 },
    [21196] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Protector", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8747 },
    [21197] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Protector", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8748 },
    [21198] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Protector", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8749 },
    [21199] = { name = "Signet Ring of the Bronze Dragonflight", source = "The Path of the Protector", slot = "Finger", type = "Ring", zone = "Tanaris Quests", reqLevel = 60, questID = 8750 },
}

SGJ.ZoneMeta["Teldrassil Quests"] = { name = "Teldrassil Quests", min = 1, world = true }
SGJ.DungeonDB["Teldrassil Quests"] = {
    [5595] = { name = "Thicket Hammer", source = "Crown of the Earth", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Teldrassil Quests", reqLevel = 1, questID = 935, side = "Alliance", choice = 935 },
    [5596] = { name = "Ashwood Bow", source = "Crown of the Earth", slot = "Ranged", type = "Bow", zone = "Teldrassil Quests", reqLevel = 1, questID = 935, side = "Alliance", choice = 935 },
    [5394] = { name = "Archery Training Gloves", source = "The Balance of Nature", slot = "Hands", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 456, side = "Alliance", choice = 456 },
    [5405] = { name = "Draped Cloak", source = "The Balance of Nature", slot = "Back", type = "Cloak", zone = "Teldrassil Quests", reqLevel = 1, questID = 457, side = "Alliance", choice = 457 },
    [6058] = { name = "Blackened Leather Belt", source = "The Balance of Nature", slot = "Waist", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 457, side = "Alliance", choice = 457 },
    [11187] = { name = "Stemleaf Bracers", source = "The Balance of Nature", slot = "Wrist", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 456, side = "Alliance", choice = 456 },
    [5398] = { name = "Canopy Leggings", source = "The Woodland Protector", slot = "Legs", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 459, side = "Alliance", choice = 459 },
    [5399] = { name = "Tracking Boots", source = "The Woodland Protector", slot = "Feet", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 459, side = "Alliance", choice = 459 },
    [11190] = { name = "Viny Gloves", source = "The Woodland Protector", slot = "Hands", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 459, side = "Alliance", choice = 459 },
    [4907] = { name = "Woodland Tunic", source = "Webwood Egg", slot = "Chest", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 917, side = "Alliance", choice = 917 },
    [5395] = { name = "Woodland Shield", source = "Webwood Egg", slot = "Shield", type = "Shield", zone = "Teldrassil Quests", reqLevel = 1, questID = 917, side = "Alliance", choice = 917 },
    [11189] = { name = "Woodland Robes", source = "Webwood Egg", slot = "Chest", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 917, side = "Alliance", choice = 917 },
    [10655] = { name = "Sedgeweed Britches", source = "Iverron's Antidote", slot = "Legs", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 2, questID = 3522, side = "Alliance", choice = 3522 },
    [10656] = { name = "Barkmail Vest", source = "Iverron's Antidote", slot = "Chest", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 2, questID = 3522, side = "Alliance", choice = 3522 },
    [9598] = { name = "Sleeping Robes", source = "Druid of the Claw", slot = "Chest", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 3, questID = 2561, side = "Alliance", choice = 2561 },
    [18957] = { name = "Brushwood Blade", source = "Druid of the Claw", slot = "One-Hand", type = "One-Handed Sword", zone = "Teldrassil Quests", reqLevel = 3, questID = 2561, side = "Alliance", choice = 2561 },
    [5392] = { name = "Thistlewood Dagger", source = "Webwood Venom", slot = "One-Hand", type = "Dagger", zone = "Teldrassil Quests", reqLevel = 3, questID = 916, side = "Alliance", choice = 916 },
    [5393] = { name = "Thistlewood Staff", source = "Webwood Venom", slot = "Two-Hand", type = "Staff", zone = "Teldrassil Quests", reqLevel = 3, questID = 916, side = "Alliance", choice = 916 },
    [5586] = { name = "Thistlewood Blade", source = "Webwood Venom", slot = "Main Hand", type = "One-Handed Sword", zone = "Teldrassil Quests", reqLevel = 3, questID = 916, side = "Alliance", choice = 916 },
    [10544] = { name = "Thistlewood Maul", source = "Webwood Venom", slot = "Main Hand", type = "One-Handed Mace", zone = "Teldrassil Quests", reqLevel = 3, questID = 916, side = "Alliance", choice = 916 },
    [5458] = { name = "Dirtwood Belt", source = "Oakenscowl", slot = "Waist", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 2499, side = "Alliance", choice = 2499 },
    [5589] = { name = "Moss-covered Gauntlets", source = "Oakenscowl", slot = "Hands", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 2499, side = "Alliance", choice = 2499 },
    [9599] = { name = "Barkmail Leggings", source = "The Relics of Wakening", slot = "Legs", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 483, side = "Alliance", choice = 483 },
    [9603] = { name = "Gritroot Staff", source = "The Relics of Wakening", slot = "Two-Hand", type = "Staff", zone = "Teldrassil Quests", reqLevel = 4, questID = 483, side = "Alliance", choice = 483 },
    [5606] = { name = "Gardening Gloves", source = "Timberling Sprouts", slot = "Hands", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 919, side = "Alliance", choice = 919 },
    [6061] = { name = "Graystone Bracers", source = "Timberling Sprouts", slot = "Wrist", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 919, side = "Alliance", choice = 919 },
    [5605] = { name = "Pruning Knife", source = "Tumors", slot = "One-Hand", type = "Dagger", zone = "Teldrassil Quests", reqLevel = 4, questID = 923, side = "Alliance" },
    [2571] = { name = "Viny Wrappings", source = "Twisted Hatred", slot = "Feet", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 932, side = "Alliance", choice = 932 },
    [5419] = { name = "Feral Bracers", source = "Twisted Hatred", slot = "Wrist", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 932, side = "Alliance", choice = 932 },
    [282284] = { name = "Webwood Slicer", source = "Twisted Hatred", slot = "One-Hand", type = "Dagger", zone = "Teldrassil Quests", reqLevel = 4, questID = 98403, side = "Alliance" },
    [5459] = { name = "Defender Axe", source = "Ursal the Mauler", slot = "Main Hand", type = "One-Handed Axe", zone = "Teldrassil Quests", reqLevel = 4, questID = 486, side = "Alliance", choice = 486 },
    [5587] = { name = "Thornroot Club", source = "Ursal the Mauler", slot = "Main Hand", type = "One-Handed Mace", zone = "Teldrassil Quests", reqLevel = 4, questID = 486, side = "Alliance", choice = 486 },
    [281250] = { name = "Forest Oracle's Cloak", source = "Teldrassil", slot = "Back", type = "Cloak", zone = "Teldrassil Quests", reqLevel = 6, questID = 940, side = "Alliance" },
    [5591] = { name = "Rain-spotted Cape", source = "The Enchanted Glade", slot = "Back", type = "Cloak", zone = "Teldrassil Quests", reqLevel = 6, questID = 937, side = "Alliance", choice = 937 },
    [5592] = { name = "Shackled Girdle", source = "The Enchanted Glade", slot = "Waist", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 6, questID = 937, side = "Alliance", choice = 937 },
    [5590] = { name = "Cord Bracers", source = "Mist", slot = "Wrist", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 7, questID = 938, side = "Alliance", choice = 938 },
    [5593] = { name = "Crag Buckler", source = "Mist", slot = "Shield", type = "Shield", zone = "Teldrassil Quests", reqLevel = 7, questID = 938, side = "Alliance", choice = 938 },
    [5618] = { name = "Scout's Cloak", source = "Mist", slot = "Back", type = "Cloak", zone = "Teldrassil Quests", reqLevel = 7, questID = 938, side = "Alliance", choice = 938 },
}

SGJ.ZoneMeta["The Barrens Quests"] = { name = "The Barrens Quests", min = 9, world = true }
SGJ.DungeonDB["The Barrens Quests"] = {
    [5344] = { name = "Pointed Axe", source = "Centaur Bracers", slot = "Main Hand", type = "One-Handed Axe", zone = "The Barrens Quests", reqLevel = 9, questID = 855, side = "Horde", choice = 855 },
    [5345] = { name = "Stonewood Hammer", source = "Centaur Bracers", slot = "Two-Hand", type = "Two-Handed Mace", zone = "The Barrens Quests", reqLevel = 9, questID = 855, side = "Horde", choice = 855 },
    [5346] = { name = "Orcish Battle Bow", source = "Centaur Bracers", slot = "Ranged", type = "Bow", zone = "The Barrens Quests", reqLevel = 9, questID = 855, side = "Horde", choice = 855 },
    [5320] = { name = "Padded Lamellar Boots", source = "Stolen Booty", slot = "Feet", type = "Mail Armor", zone = "The Barrens Quests", reqLevel = 9, questID = 888, choice = 888 },
    [5337] = { name = "Wayfaring Gloves", source = "Stolen Booty", slot = "Hands", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 9, questID = 888, choice = 888 },
    [2694] = { name = "Settler's Leggings", source = "Stolen Silver", slot = "Legs", type = "Mail Armor", zone = "The Barrens Quests", reqLevel = 9, questID = 3281, side = "Horde", choice = 3281 },
    [11853] = { name = "Rambling Boots", source = "Stolen Silver", slot = "Feet", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 9, questID = 3281, side = "Horde", choice = 3281 },
    [5275] = { name = "Binding Girdle", source = "The Disruption Ends", slot = "Waist", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 9, questID = 872, side = "Horde", choice = 872 },
    [5328] = { name = "Cinched Belt", source = "The Disruption Ends", slot = "Waist", type = "Mail Armor", zone = "The Barrens Quests", reqLevel = 9, questID = 872, side = "Horde", choice = 872 },
    [5340] = { name = "Cauldron Stirrer", source = "Apothecary Zamah", slot = "Two-Hand", type = "Staff", zone = "The Barrens Quests", reqLevel = 10, questID = 853, side = "Horde" },
    [5299] = { name = "Gloves of the Moon", source = "Cry of the Thunderhawk", slot = "Hands", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 10, questID = 913, side = "Horde" },
    [5302] = { name = "Cobalt Buckler", source = "Cry of the Thunderhawk", slot = "Shield", type = "Shield", zone = "The Barrens Quests", reqLevel = 10, questID = 913, side = "Horde", choice = 913 },
    [5306] = { name = "Wind Rider Staff", source = "Cry of the Thunderhawk", slot = "Two-Hand", type = "Staff", zone = "The Barrens Quests", reqLevel = 10, questID = 913, side = "Horde", choice = 913 },
    [10657] = { name = "Talbar Mantle", source = "In Nightmares", slot = "Shoulder", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 10, questID = 3369 },
    [10658] = { name = "Quagmire Galoshes", source = "In Nightmares", slot = "Feet", type = "Mail Armor", zone = "The Barrens Quests", reqLevel = 10, questID = 3369 },
    [5355] = { name = "Beastmaster's Girdle", source = "Isha Awak", slot = "Waist", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 10, questID = 873, side = "Horde" },
    [5356] = { name = "Branding Rod", source = "Isha Awak", slot = "Ranged", type = "Wand", zone = "The Barrens Quests", reqLevel = 10, questID = 873, side = "Horde", choice = 873 },
    [5357] = { name = "Ward of the Vale", source = "Isha Awak", slot = "Shield", type = "Shield", zone = "The Barrens Quests", reqLevel = 10, questID = 873, side = "Horde", choice = 873 },
    [10820] = { name = "Jackseed Belt", source = "Mura Runetotem", slot = "Waist", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 10, questID = 3301, side = "Horde", choice = 3301 },
    [10821] = { name = "Sower's Cloak", source = "Mura Runetotem", slot = "Back", type = "Cloak", zone = "The Barrens Quests", reqLevel = 10, questID = 3301, side = "Horde", choice = 3301 },
    [5324] = { name = "Engineer's Hammer", source = "Samophlange", slot = "Main Hand", type = "One-Handed Mace", zone = "The Barrens Quests", reqLevel = 10, questID = 902, choice = 902 },
    [5325] = { name = "Welding Shield", source = "Samophlange", slot = "Shield", type = "Shield", zone = "The Barrens Quests", reqLevel = 10, questID = 902, choice = 902 },
    [11854] = { name = "Samophlange Screwdriver", source = "Samophlange Manual", slot = "Two-Hand", type = "Two-Handed Sword", zone = "The Barrens Quests", reqLevel = 10, questID = 3924, side = "Horde", choice = 3924 },
    [11855] = { name = "Tork Wrench", source = "Samophlange Manual", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "The Barrens Quests", reqLevel = 10, questID = 3924, side = "Horde", choice = 3924 },
    [5351] = { name = "Bounty Hunter's Ring", source = "Hezrul Bloodmark", slot = "Finger", type = "Ring", zone = "The Barrens Quests", reqLevel = 11, questID = 852, side = "Horde" },
    [5279] = { name = "Harpy Skinner", source = "Serena Bloodfeather", slot = "One-Hand", type = "Dagger", zone = "The Barrens Quests", reqLevel = 12, questID = 876, side = "Horde", choice = 876 },
    [5318] = { name = "Zhovur Axe", source = "Serena Bloodfeather", slot = "Two-Hand", type = "Two-Handed Axe", zone = "The Barrens Quests", reqLevel = 12, questID = 876, side = "Horde", choice = 876 },
    [5321] = { name = "Elegant Shortsword", source = "Serena Bloodfeather", slot = "One-Hand", type = "One-Handed Sword", zone = "The Barrens Quests", reqLevel = 12, questID = 876, side = "Horde", choice = 876 },
    [5311] = { name = "Buckled Boots", source = "Free From the Hold", slot = "Feet", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 13, questID = 898, side = "Horde", choice = 898 },
    [5312] = { name = "Riveted Gauntlets", source = "Free From the Hold", slot = "Hands", type = "Mail Armor", zone = "The Barrens Quests", reqLevel = 13, questID = 898, side = "Horde", choice = 898 },
    [270011] = { name = "Embroidered Leggings", source = "Free From the Hold", slot = "Legs", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 13, questID = 898, side = "Horde", choice = 898 },
    [5343] = { name = "Barkeeper's Cloak", source = "Raptor Horns", slot = "Back", type = "Cloak", zone = "The Barrens Quests", reqLevel = 13, questID = 865 },
    [5326] = { name = "Flaring Baton", source = "The Escape", slot = "Ranged", type = "Wand", zone = "The Barrens Quests", reqLevel = 13, questID = 863, choice = 863 },
    [5327] = { name = "Greasy Tinker's Pants", source = "The Escape", slot = "Legs", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 13, questID = 863, choice = 863 },
    [5309] = { name = "Privateer Musket", source = "The Guns of Northwatch", slot = "Ranged", type = "Gun", zone = "The Barrens Quests", reqLevel = 13, questID = 891, side = "Horde", choice = 891 },
    [5310] = { name = "Sea Dog Britches", source = "The Guns of Northwatch", slot = "Legs", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 13, questID = 891, side = "Horde", choice = 891 },
    [5314] = { name = "Boar Hunter's Cape", source = "Consumed by Hatred", slot = "Back", type = "Cloak", zone = "The Barrens Quests", reqLevel = 14, questID = 899, side = "Horde", choice = 899 },
    [6477] = { name = "Grassland Sash", source = "Consumed by Hatred", slot = "Waist", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 14, questID = 899, side = "Horde", choice = 899 },
    [269716] = { name = "Keen Skinning Knife", source = "Unwelcome Guests", slot = "Main Hand", type = "Dagger", zone = "The Barrens Quests", reqLevel = 14, questID = 95508, side = "Horde", choice = 95508 },
    [269717] = { name = "Wildgore Greatsword", source = "Unwelcome Guests", slot = "Two-Hand", type = "Two-Handed Sword", zone = "The Barrens Quests", reqLevel = 14, questID = 95508, side = "Horde", choice = 95508 },
    [269742] = { name = "Walton's Second-Favorite Gun", source = "Unwelcome Guests", slot = "Ranged", type = "Gun", zone = "The Barrens Quests", reqLevel = 14, questID = 95508, side = "Horde", choice = 95508 },
    [276886] = { name = "Chol'aruk's Trophy Sword", source = "Chol'aruk the Ravener", slot = "Main Hand", type = "One-Handed Sword", zone = "The Barrens Quests", reqLevel = 15, questID = 97003 },
    [276887] = { name = "Big Bad Basher", source = "Chol'aruk the Ravener", slot = "Two-Hand", type = "Two-Handed Mace", zone = "The Barrens Quests", reqLevel = 15, questID = 97003 },
    [276888] = { name = "Quilboar Toothpick", source = "Chol'aruk the Ravener", slot = "Main Hand", type = "Dagger", zone = "The Barrens Quests", reqLevel = 15, questID = 97003 },
    [276889] = { name = "Thornwoven Shield", source = "Chol'aruk the Ravener", slot = "Shield", type = "Shield", zone = "The Barrens Quests", reqLevel = 15, questID = 97003 },
    [10653] = { name = "Trailblazer Boots", source = "Horde Presence", slot = "Feet", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 15, questID = 3514, side = "Horde", choice = 3514 },
    [10654] = { name = "Jutebraid Gloves", source = "Horde Presence", slot = "Hands", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 15, questID = 3514, side = "Horde", choice = 3514 },
    [270038] = { name = "Runed Gauntlets", source = "Horde Presence", slot = "Hands", type = "Mail Armor", zone = "The Barrens Quests", reqLevel = 15, questID = 3514, side = "Horde", choice = 3514 },
    [5316] = { name = "Barkshell Tunic", source = "Betrayal from Within", slot = "Chest", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 17, questID = 906, side = "Horde", choice = 906 },
    [5317] = { name = "Dry Moss Tunic", source = "Betrayal from Within", slot = "Chest", type = "Leather Armor", zone = "The Barrens Quests", reqLevel = 17, questID = 906, side = "Horde", choice = 906 },
    [6502] = { name = "Violet Scale Armor", source = "Egg Hunt", slot = "Chest", type = "Mail Armor", zone = "The Barrens Quests", reqLevel = 17, questID = 868, side = "Horde", choice = 868 },
    [6503] = { name = "Harlequin Robes", source = "Egg Hunt", slot = "Chest", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 17, questID = 868, side = "Horde", choice = 868 },
    [5313] = { name = "Totemic Clan Ring", source = "Revenge of Gann", slot = "Finger", type = "Ring", zone = "The Barrens Quests", reqLevel = 17, questID = 849, side = "Horde" },
    [5322] = { name = "Demolition Hammer", source = "Weapons of Choice", slot = "Two-Hand", type = "Two-Handed Mace", zone = "The Barrens Quests", reqLevel = 17, questID = 893, side = "Horde", choice = 893 },
    [5323] = { name = "Everglow Lantern", source = "Weapons of Choice", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "The Barrens Quests", reqLevel = 17, questID = 893, side = "Horde", choice = 893 },
    [279391] = { name = "Taurajo Headband", source = "Field to Clear", slot = "Head", type = "Cloth Armor", zone = "The Barrens Quests", reqLevel = 18, questID = 98093, side = "Horde" },
    [277286] = { name = "Encroacher's Claim", source = "Wrongly Blamed, Justly Corrected", slot = "Two-Hand", type = "Two-Handed Axe", zone = "The Barrens Quests", reqLevel = 18, questID = 97250, side = "Horde", choice = 97250 },
    [277288] = { name = "Pathfinder's Clearway", source = "Wrongly Blamed, Justly Corrected", slot = "Main Hand", type = "One-Handed Axe", zone = "The Barrens Quests", reqLevel = 18, questID = 97250, side = "Horde", choice = 97250 },
    [277289] = { name = "Traveler's Shawl", source = "Wrongly Blamed, Justly Corrected", slot = "Back", type = "Cloak", zone = "The Barrens Quests", reqLevel = 18, questID = 97250, side = "Horde", choice = 97250 },
    [281293] = { name = "Weathered Deathstalker's Blade", source = "Valuable Vantages", slot = "One-Hand", type = "One-Handed Sword", zone = "The Barrens Quests", reqLevel = 19, questID = 98095, side = "Horde", choice = 98095 },
    [281294] = { name = "Expended Apothecary Vial", source = "Valuable Vantages", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "The Barrens Quests", reqLevel = 19, questID = 98095, side = "Horde", choice = 98095 },
    [6741] = { name = "Orcish War Sword", source = "A New Ore Sample", slot = "Two-Hand", type = "Two-Handed Sword", zone = "The Barrens Quests", reqLevel = 25, questID = 1153, side = "Horde" },
}

SGJ.ZoneMeta["The Hinterlands Quests"] = { name = "The Hinterlands Quests", min = 40, world = true }
SGJ.DungeonDB["The Hinterlands Quests"] = {
    [9651] = { name = "Gryphon Rider's Stormhammer", source = "Saving Sharpbeak", slot = "Main Hand", type = "One-Handed Mace", zone = "The Hinterlands Quests", reqLevel = 40, questID = 2994, side = "Alliance", choice = 2994 },
    [9652] = { name = "Gryphon Rider's Leggings", source = "Saving Sharpbeak", slot = "Legs", type = "Leather Armor", zone = "The Hinterlands Quests", reqLevel = 40, questID = 2994, side = "Alliance", choice = 2994 },
    [9649] = { name = "Royal Highmark Vestments", source = "Venom to the Undercity", slot = "Chest", type = "Cloth Armor", zone = "The Hinterlands Quests", reqLevel = 40, questID = 2938, side = "Horde", choice = 2938 },
    [9650] = { name = "Honorguard Chestpiece", source = "Venom to the Undercity", slot = "Chest", type = "Mail Armor", zone = "The Hinterlands Quests", reqLevel = 40, questID = 2938, side = "Horde", choice = 2938 },
    [10686] = { name = "Aegis of Battle", source = "Venom to the Undercity", slot = "Shield", type = "Shield", zone = "The Hinterlands Quests", reqLevel = 40, questID = 2938, side = "Horde", choice = 2938 },
    [20642] = { name = "Antiquated Nobleman's Tunic", source = "Oran's Gratitude", slot = "Chest", type = "Cloth Armor", zone = "The Hinterlands Quests", reqLevel = 42, questID = 8273, side = "Horde", choice = 8273 },
    [20643] = { name = "Undercity Reservist's Cap", source = "Oran's Gratitude", slot = "Head", type = "Leather Armor", zone = "The Hinterlands Quests", reqLevel = 42, questID = 8273, side = "Horde", choice = 8273 },
    [9645] = { name = "Gnomish Inventor Boots", source = "Rescue OOX-09/HL!", slot = "Feet", type = "Cloth Armor", zone = "The Hinterlands Quests", reqLevel = 43, questID = 836, choice = 836 },
    [9646] = { name = "Gnomish Water Sinking Device", source = "Rescue OOX-09/HL!", slot = "Feet", type = "Plate Armor", zone = "The Hinterlands Quests", reqLevel = 43, questID = 836, choice = 836 },
    [19022] = { name = "Nat Pagle's Extreme Angler FC-5000", source = "Snapjaws, Mon!", slot = "Two-Hand", type = "Fishing Pole", zone = "The Hinterlands Quests", reqLevel = 44, questID = 7815, side = "Horde" },
    [19119] = { name = "Owlbeast Hide Gloves", source = "The Final Message to the Wildhammer", slot = "Hands", type = "Leather Armor", zone = "The Hinterlands Quests", reqLevel = 44, questID = 7843, side = "Horde" },
    [19118] = { name = "Nature's Breath", source = "Dark Vessels", slot = "Ranged", type = "Wand", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7850, side = "Horde" },
    [19120] = { name = "Rune of the Guard Captain", source = "Job Opening: Guard Captain of Revantusk Village", slot = "Trinket", type = "Trinket", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7862, side = "Horde" },
    [19114] = { name = "Highland Bow", source = "Return to Primal Torntusk", slot = "Ranged", type = "Bow", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7847, side = "Horde", choice = 7847 },
    [19115] = { name = "Flask of Forest Mojo", source = "Return to Primal Torntusk", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7847, side = "Horde", choice = 7847 },
    [19116] = { name = "Greenleaf Handwraps", source = "Separation Anxiety", slot = "Hands", type = "Cloth Armor", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7849, side = "Horde", choice = 7849 },
    [19117] = { name = "Laquered Wooden Plate Legplates", source = "Separation Anxiety", slot = "Legs", type = "Plate Armor", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7849, side = "Horde", choice = 7849 },
    [19121] = { name = "Deep Woodlands Cloak", source = "Wanted: Vile Priestess Hexx and Her Minions", slot = "Back", type = "Cloak", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7861, side = "Horde", choice = 7861 },
    [19159] = { name = "Woven Ivy Necklace", source = "Wanted: Vile Priestess Hexx and Her Minions", slot = "Neck", type = "Amulet", zone = "The Hinterlands Quests", reqLevel = 46, questID = 7861, side = "Horde", choice = 7861 },
}

SGJ.QuestDB["The Stockade"] = {
    [2033] = { name = "Ambassador's Boots", source = "Crime and Punishment", slot = "Feet", type = "Leather Armor", zone = "The Stockade", reqLevel = 22, questID = 377, side = "Alliance", choice = 377 },
    [2906] = { name = "Darkshire Mail Leggings", source = "Crime and Punishment", slot = "Legs", type = "Mail Armor", zone = "The Stockade", reqLevel = 22, questID = 377, side = "Alliance", choice = 377 },
    [270029] = { name = "Town Clerk's Mittens", source = "Crime and Punishment", slot = "Hands", type = "Cloth Armor", zone = "The Stockade", reqLevel = 22, questID = 377, side = "Alliance", choice = 377 },
    [1264] = { name = "Headbasher", source = "The Fury Runs Deep", slot = "Two-Hand", type = "Two-Handed Mace", zone = "The Stockade", reqLevel = 22, questID = 378, side = "Alliance", choice = 378 },
    [3562] = { name = "Belt of Vindication", source = "The Fury Runs Deep", slot = "Waist", type = "Leather Armor", zone = "The Stockade", reqLevel = 22, questID = 378, side = "Alliance", choice = 378 },
    [1317] = { name = "Hardened Root Staff", source = "What Comes Around...", slot = "Two-Hand", type = "Staff", zone = "The Stockade", reqLevel = 22, questID = 386, side = "Alliance", choice = 386 },
    [3400] = { name = "Lucine Longsword", source = "What Comes Around...", slot = "Main Hand", type = "One-Handed Sword", zone = "The Stockade", reqLevel = 22, questID = 386, side = "Alliance", choice = 386 },
    [270027] = { name = "Ursine Hammer", source = "What Comes Around...", slot = "Two-Hand", type = "Two-Handed Mace", zone = "The Stockade", reqLevel = 22, questID = 386, side = "Alliance", choice = 386 },
}

SGJ.QuestDB["The Temple of Atal'Hakkar"] = {
    [1490] = { name = "Guardian Talisman", source = "Into The Temple of Atal'Hakkar", slot = "Trinket", type = "Trinket", zone = "The Temple of Atal'Hakkar", reqLevel = 38, questID = 1475 },
    [11123] = { name = "Rainstrider Leggings", source = "Jammal'an the Prophet", slot = "Legs", type = "Cloth Armor", zone = "The Temple of Atal'Hakkar", reqLevel = 38, questID = 1446, choice = 1446 },
    [11124] = { name = "Helm of Exile", source = "Jammal'an the Prophet", slot = "Head", type = "Mail Armor", zone = "The Temple of Atal'Hakkar", reqLevel = 38, questID = 1446, choice = 1446 },
    [10749] = { name = "Avenguard Helm", source = "The God Hakkar", slot = "Head", type = "Plate Armor", zone = "The Temple of Atal'Hakkar", reqLevel = 40, questID = 3528, choice = 3528 },
    [10750] = { name = "Lifeforce Dirk", source = "The God Hakkar", slot = "One-Hand", type = "Dagger", zone = "The Temple of Atal'Hakkar", reqLevel = 40, questID = 3528, choice = 3528 },
    [10751] = { name = "Gemburst Circlet", source = "The God Hakkar", slot = "Head", type = "Cloth Armor", zone = "The Temple of Atal'Hakkar", reqLevel = 40, questID = 3528, choice = 3528 },
    [10455] = { name = "Chained Essence of Eranikus", source = "The Essence of Eranikus", slot = "Trinket", type = "Trinket", zone = "The Temple of Atal'Hakkar", reqLevel = 48, questID = 3373 },
}

SGJ.ZoneMeta["Thousand Needles Quests"] = { name = "Thousand Needles Quests", min = 23, world = true }
SGJ.DungeonDB["Thousand Needles Quests"] = {
    [15461] = { name = "Lightheel Boots", source = "Protect Kanati Greycloud", slot = "Feet", type = "Cloth Armor", zone = "Thousand Needles Quests", reqLevel = 23, questID = 4966, side = "Horde", choice = 4966 },
    [15462] = { name = "Loamflake Bracers", source = "Protect Kanati Greycloud", slot = "Wrist", type = "Leather Armor", zone = "Thousand Needles Quests", reqLevel = 23, questID = 4966, side = "Horde", choice = 4966 },
    [15463] = { name = "Palestrider Gloves", source = "Protect Kanati Greycloud", slot = "Hands", type = "Mail Armor", zone = "Thousand Needles Quests", reqLevel = 23, questID = 4966, side = "Horde", choice = 4966 },
    [15464] = { name = "Brute Hammer", source = "Arikara", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Thousand Needles Quests", reqLevel = 24, questID = 5088, side = "Horde", choice = 5088 },
    [15465] = { name = "Stingshot Wand", source = "Arikara", slot = "Ranged", type = "Wand", zone = "Thousand Needles Quests", reqLevel = 24, questID = 5088, side = "Horde", choice = 5088 },
    [15466] = { name = "Clink Shield", source = "Arikara", slot = "Shield", type = "Shield", zone = "Thousand Needles Quests", reqLevel = 24, questID = 5088, side = "Horde", choice = 5088 },
    [15457] = { name = "Desert Shoulders", source = "Grimtotem Spying", slot = "Shoulder", type = "Cloth Armor", zone = "Thousand Needles Quests", reqLevel = 24, questID = 5064, side = "Horde", choice = 5064 },
    [15458] = { name = "Tundra Boots", source = "Grimtotem Spying", slot = "Feet", type = "Leather Armor", zone = "Thousand Needles Quests", reqLevel = 24, questID = 5064, side = "Horde", choice = 5064 },
    [15459] = { name = "Grimtoll Wristguards", source = "Grimtotem Spying", slot = "Wrist", type = "Mail Armor", zone = "Thousand Needles Quests", reqLevel = 24, questID = 5064, side = "Horde", choice = 5064 },
    [15467] = { name = "Inventor's League Ring", source = "Hypercapacitor Gizmo", slot = "Finger", type = "Ring", zone = "Thousand Needles Quests", reqLevel = 24, questID = 5151, side = "Horde" },
    [6804] = { name = "Windstorm Hammer", source = "Final Passage", slot = "Main Hand", type = "One-Handed Mace", zone = "Thousand Needles Quests", reqLevel = 25, questID = 1394, side = "Horde", choice = 1394 },
    [6806] = { name = "Dancing Flame", source = "Final Passage", slot = "Ranged", type = "Wand", zone = "Thousand Needles Quests", reqLevel = 25, questID = 1394, side = "Horde", choice = 1394 },
    [15468] = { name = "Windsong Drape", source = "Free at Last", slot = "Back", type = "Cloak", zone = "Thousand Needles Quests", reqLevel = 25, questID = 4904, side = "Horde", choice = 4904 },
    [15469] = { name = "Windsong Cinch", source = "Free at Last", slot = "Waist", type = "Leather Armor", zone = "Thousand Needles Quests", reqLevel = 25, questID = 4904, side = "Horde", choice = 4904 },
    [15470] = { name = "Plainsguard Leggings", source = "Wanted - Arnak Grimtotem", slot = "Legs", type = "Mail Armor", zone = "Thousand Needles Quests", reqLevel = 25, questID = 5147, side = "Horde", choice = 5147 },
    [15471] = { name = "Brawnhide Armor", source = "Wanted - Arnak Grimtotem", slot = "Chest", type = "Leather Armor", zone = "Thousand Needles Quests", reqLevel = 25, questID = 5147, side = "Horde", choice = 5147 },
    [6729] = { name = "Fizzle's Zippy Lighter", source = "News for Fizzle", slot = "Ranged", type = "Wand", zone = "Thousand Needles Quests", reqLevel = 28, questID = 1137, choice = 1137 },
    [6732] = { name = "Gnomish Mechanic's Gloves", source = "News for Fizzle", slot = "Hands", type = "Leather Armor", zone = "Thousand Needles Quests", reqLevel = 28, questID = 1137, choice = 1137 },
    [6737] = { name = "Dryleaf Pants", source = "Parts of the Swarm", slot = "Legs", type = "Cloth Armor", zone = "Thousand Needles Quests", reqLevel = 28, questID = 1184, side = "Horde", choice = 1184 },
    [6738] = { name = "Bleeding Crescent", source = "Parts of the Swarm", slot = "Main Hand", type = "One-Handed Axe", zone = "Thousand Needles Quests", reqLevel = 28, questID = 1184, side = "Horde", choice = 1184 },
    [6726] = { name = "Razzeric's Customized Seatbelt", source = "Safety First", slot = "Waist", type = "Cloth Armor", zone = "Thousand Needles Quests", reqLevel = 29, questID = 1189, choice = 1189 },
    [6727] = { name = "Razzeric's Racing Grips", source = "Safety First", slot = "Hands", type = "Leather Armor", zone = "Thousand Needles Quests", reqLevel = 29, questID = 1189, choice = 1189 },
}

SGJ.ZoneMeta["Thunder Bluff Quests"] = { name = "Thunder Bluff Quests", min = 4, world = true }
SGJ.DungeonDB["Thunder Bluff Quests"] = {
    [4962] = { name = "Double-layered Gloves", source = "Gathering Leather", slot = "Hands", type = "Leather Armor", zone = "Thunder Bluff Quests", reqLevel = 4, questID = 768, side = "Horde", choice = 768 },
    [5936] = { name = "Animal Skin Belt", source = "Gathering Leather", slot = "Waist", type = "Leather Armor", zone = "Thunder Bluff Quests", reqLevel = 4, questID = 768, side = "Horde", choice = 768 },
    [4967] = { name = "Tribal Warrior's Shield", source = "Preparation for Ceremony", slot = "Shield", type = "Shield", zone = "Thunder Bluff Quests", reqLevel = 7, questID = 744, side = "Horde", choice = 744 },
    [4968] = { name = "Bound Harness", source = "Preparation for Ceremony", slot = "Chest", type = "Leather Armor", zone = "Thunder Bluff Quests", reqLevel = 7, questID = 744, side = "Horde", choice = 744 },
    [6739] = { name = "Cliffrunner's Aim", source = "The Sacred Flame", slot = "Ranged", type = "Bow", zone = "Thunder Bluff Quests", reqLevel = 20, questID = 1197, side = "Horde", choice = 1197 },
    [6740] = { name = "Azure Sash", source = "The Sacred Flame", slot = "Waist", type = "Leather Armor", zone = "Thunder Bluff Quests", reqLevel = 20, questID = 1197, side = "Horde", choice = 1197 },
    [6720] = { name = "Spirit Hunter Headdress", source = "Frostmaw", slot = "Head", type = "Leather Armor", zone = "Thunder Bluff Quests", reqLevel = 26, questID = 1136, side = "Horde" },
}

SGJ.ZoneMeta["Tirisfal Glades Quests"] = { name = "Tirisfal Glades Quests", min = 1, world = true }
SGJ.DungeonDB["Tirisfal Glades Quests"] = {
    [3274] = { name = "Flax Boots", source = "Rattling the Rattlecages", slot = "Feet", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 1, questID = 3901, side = "Horde", choice = 3901 },
    [11851] = { name = "Scavenger Tunic", source = "Rattling the Rattlecages", slot = "Chest", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 1, questID = 3901, side = "Horde", choice = 3901 },
    [11852] = { name = "Roamer's Leggings", source = "Rattling the Rattlecages", slot = "Legs", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 1, questID = 3901, side = "Horde", choice = 3901 },
    [3275] = { name = "Flax Gloves", source = "The Mindless Ones", slot = "Hands", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 1, questID = 364, side = "Horde", choice = 364 },
    [11847] = { name = "Battered Cloak", source = "The Mindless Ones", slot = "Back", type = "Cloak", zone = "Tirisfal Glades Quests", reqLevel = 1, questID = 364, side = "Horde", choice = 364 },
    [3270] = { name = "Flax Vest", source = "Night Web's Hollow", slot = "Chest", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 380, side = "Horde", choice = 380 },
    [3272] = { name = "Zombie Skin Leggings", source = "Night Web's Hollow", slot = "Legs", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 380, side = "Horde", choice = 380 },
    [3273] = { name = "Rugged Mail Vest", source = "Night Web's Hollow", slot = "Chest", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 380, side = "Horde", choice = 380 },
    [11848] = { name = "Flax Belt", source = "Scavenging Deathknell", slot = "Waist", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 3902, side = "Horde", choice = 3902 },
    [11849] = { name = "Rustmetal Bracers", source = "Scavenging Deathknell", slot = "Wrist", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 3902, side = "Horde", choice = 3902 },
    [11850] = { name = "Short Duskbat Cape", source = "Scavenging Deathknell", slot = "Back", type = "Cloak", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 3902, side = "Horde", choice = 3902 },
    [2173] = { name = "Old Leather Belt", source = "The Damned", slot = "Waist", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 376, side = "Horde", choice = 376 },
    [6060] = { name = "Flax Bracers", source = "The Damned", slot = "Wrist", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 376, side = "Horde", choice = 376 },
    [3276] = { name = "Deathguard Buckler", source = "The Red Messenger", slot = "Shield", type = "Shield", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 382, side = "Horde", choice = 382 },
    [3277] = { name = "Executor Staff", source = "The Red Messenger", slot = "Two-Hand", type = "Staff", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 382, side = "Horde", choice = 382 },
    [3267] = { name = "Forsaken Shortsword", source = "The Scarlet Crusade", slot = "Main Hand", type = "One-Handed Sword", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 381, side = "Horde", choice = 381 },
    [3268] = { name = "Forsaken Dagger", source = "The Scarlet Crusade", slot = "One-Hand", type = "Dagger", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 381, side = "Horde", choice = 381 },
    [3269] = { name = "Forsaken Maul", source = "The Scarlet Crusade", slot = "Main Hand", type = "One-Handed Mace", zone = "Tirisfal Glades Quests", reqLevel = 2, questID = 381, side = "Horde", choice = 381 },
    [3439] = { name = "Zombie Skin Boots", source = "Graverobbers", slot = "Feet", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 4, questID = 358, side = "Horde", choice = 358 },
    [6063] = { name = "Cold Steel Gauntlets", source = "Graverobbers", slot = "Hands", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 4, questID = 358, side = "Horde", choice = 358 },
    [3071] = { name = "Striking Hatchet", source = "At War With The Scarlet Crusade", slot = "Main Hand", type = "One-Handed Axe", zone = "Tirisfal Glades Quests", reqLevel = 5, questID = 372, side = "Horde", choice = 372 },
    [3445] = { name = "Ceremonial Knife", source = "At War With The Scarlet Crusade", slot = "One-Hand", type = "Dagger", zone = "Tirisfal Glades Quests", reqLevel = 5, questID = 372, side = "Horde", choice = 372 },
    [3435] = { name = "Zombie Skin Bracers", source = "Proof of Demise", slot = "Wrist", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 5, questID = 374, side = "Horde", choice = 374 },
    [3437] = { name = "Clasped Belt", source = "Proof of Demise", slot = "Waist", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 5, questID = 374, side = "Horde", choice = 374 },
    [12299] = { name = "Netted Gloves", source = "Proof of Demise", slot = "Hands", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 5, questID = 374, side = "Horde", choice = 374 },
    [5940] = { name = "Bone Buckler", source = "The Prodigal Lich Returns", slot = "Shield", type = "Shield", zone = "Tirisfal Glades Quests", reqLevel = 5, questID = 411, side = "Horde" },
    [3442] = { name = "Apprentice Sash", source = "A New Plague", slot = "Waist", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 369, side = "Horde" },
    [281283] = { name = "Patchwing Pants", source = "Hides for the Forsaken", slot = "Legs", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 97558, side = "Horde", choice = 97558 },
    [281284] = { name = "Howlhide Vest", source = "Hides for the Forsaken", slot = "Chest", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 97558, side = "Horde", choice = 97558 },
    [281285] = { name = "Finscale Soles", source = "Hides for the Forsaken", slot = "Feet", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 97558, side = "Horde", choice = 97558 },
    [3447] = { name = "Cryptwalker Boots", source = "The Mills Overrun", slot = "Feet", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 426, side = "Horde", choice = 426 },
    [3834] = { name = "Sturdy Cloth Trousers", source = "The Mills Overrun", slot = "Legs", type = "Cloth Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 426, side = "Horde", choice = 426 },
    [3444] = { name = "Tiller's Vest", source = "WANTED: Maggot Eye", slot = "Chest", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 398, side = "Horde", choice = 398 },
    [5941] = { name = "Brass Scale Pants", source = "WANTED: Maggot Eye", slot = "Legs", type = "Mail Armor", zone = "Tirisfal Glades Quests", reqLevel = 6, questID = 398, side = "Horde", choice = 398 },
    [3833] = { name = "Adept's Cloak", source = "The Chill of Death", slot = "Back", type = "Cloak", zone = "Tirisfal Glades Quests", reqLevel = 7, questID = 375, side = "Horde", choice = 375 },
    [5939] = { name = "Sewing Gloves", source = "The Chill of Death", slot = "Hands", type = "Leather Armor", zone = "Tirisfal Glades Quests", reqLevel = 7, questID = 375, side = "Horde", choice = 375 },
    [3440] = { name = "Bonecracker", source = "The Family Crypt", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Tirisfal Glades Quests", reqLevel = 7, questID = 408, side = "Horde", choice = 408 },
    [3446] = { name = "Darkwood Staff", source = "The Family Crypt", slot = "Two-Hand", type = "Staff", zone = "Tirisfal Glades Quests", reqLevel = 7, questID = 408, side = "Horde", choice = 408 },
    [277247] = { name = "Mug of Muddled Memories", source = "Leonid's Letter", slot = "Main Hand", type = "One-Handed Mace", zone = "Tirisfal Glades Quests", reqLevel = 10, questID = 98545, side = "Horde", choice = 98545 },
    [277255] = { name = "Misplaced Shooter", source = "Leonid's Letter", slot = "Ranged", type = "Gun", zone = "Tirisfal Glades Quests", reqLevel = 10, questID = 98545, side = "Horde", choice = 98545 },
    [282064] = { name = "Tim's Lost Rib", source = "Leonid's Letter", slot = "Main Hand", type = "Dagger", zone = "Tirisfal Glades Quests", reqLevel = 10, questID = 98545, side = "Horde", choice = 98545 },
}

SGJ.QuestDB["Uldaman"] = {
    [4980] = { name = "Prospector Gloves", source = "Agmond's Fate", slot = "Hands", type = "Leather Armor", zone = "Uldaman", reqLevel = 30, questID = 704, side = "Alliance" },
    [9522] = { name = "Energized Stone Circle", source = "Power Stones", slot = "Shield", type = "Shield", zone = "Uldaman", reqLevel = 30, questID = 2418, choice = 2418 },
    [10358] = { name = "Duracin Bracers", source = "Power Stones", slot = "Wrist", type = "Mail Armor", zone = "Uldaman", reqLevel = 30, questID = 2418, choice = 2418 },
    [10359] = { name = "Everlast Boots", source = "Power Stones", slot = "Feet", type = "Cloth Armor", zone = "Uldaman", reqLevel = 30, questID = 2418, choice = 2418 },
    [4746] = { name = "Doomsayer's Robe", source = "Solution to Doom", slot = "Chest", type = "Cloth Armor", zone = "Uldaman", reqLevel = 30, questID = 709 },
    [9626] = { name = "Dwarven Charge", source = "The Hidden Chamber", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Uldaman", reqLevel = 35, questID = 2240, side = "Alliance", choice = 2240 },
    [9627] = { name = "Explorer's League Lodestar", source = "The Hidden Chamber", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Uldaman", reqLevel = 35, questID = 2240, side = "Alliance", choice = 2240 },
    [6723] = { name = "Medal of Courage", source = "The Lost Tablets of Will", slot = "Neck", type = "Amulet", zone = "Uldaman", reqLevel = 35, questID = 1139, side = "Alliance" },
    [7888] = { name = "Jarkal's Enhancing Necklace", source = "Necklace Recovery, Take 3", slot = "Neck", type = "Amulet", zone = "Uldaman", reqLevel = 37, questID = 2341, side = "Horde" },
    [7673] = { name = "Talvash's Enhancing Necklace", source = "Restoring the Necklace", slot = "Neck", type = "Amulet", zone = "Uldaman", reqLevel = 37, questID = 2361, side = "Alliance" },
}

SGJ.ZoneMeta["Un'Goro Crater Quests"] = { name = "Un'Goro Crater Quests", min = 47, world = true }
SGJ.DungeonDB["Un'Goro Crater Quests"] = {
    [11902] = { name = "Linken's Sword of Mastery", source = "It's Dangerous to Go Alone", slot = "Main Hand", type = "One-Handed Sword", zone = "Un'Goro Crater Quests", reqLevel = 47, questID = 3962, choice = 3962 },
    [11904] = { name = "Spirit of Aquementas", source = "It's Dangerous to Go Alone", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Un'Goro Crater Quests", reqLevel = 47, questID = 3962, choice = 3962 },
    [11905] = { name = "Linken's Boomerang", source = "It's Dangerous to Go Alone", slot = "Trinket", type = "Trinket", zone = "Un'Goro Crater Quests", reqLevel = 47, questID = 3962 },
    [11876] = { name = "Plainstalker Tunic", source = "The Bait for Lar'korwi", slot = "Chest", type = "Leather Armor", zone = "Un'Goro Crater Quests", reqLevel = 48, questID = 4292, choice = 4292 },
    [11882] = { name = "Outrider Leggings", source = "The Bait for Lar'korwi", slot = "Legs", type = "Mail Armor", zone = "Un'Goro Crater Quests", reqLevel = 48, questID = 4292, choice = 4292 },
    [11918] = { name = "Grotslab Gloves", source = "Beware of Pterrordax", slot = "Hands", type = "Mail Armor", zone = "Un'Goro Crater Quests", reqLevel = 49, questID = 4501, choice = 4501 },
    [11919] = { name = "Cragplate Greaves", source = "Beware of Pterrordax", slot = "Feet", type = "Plate Armor", zone = "Un'Goro Crater Quests", reqLevel = 49, questID = 4501, choice = 4501 },
    [11908] = { name = "Archaeologist's Quarry Boots", source = "Roll the Bones", slot = "Feet", type = "Cloth Armor", zone = "Un'Goro Crater Quests", reqLevel = 49, questID = 3882, choice = 3882 },
    [11909] = { name = "Excavator's Utility Belt", source = "Roll the Bones", slot = "Waist", type = "Leather Armor", zone = "Un'Goro Crater Quests", reqLevel = 49, questID = 3882, choice = 3882 },
    [11915] = { name = "Shizzle's Drizzle Blocker", source = "Shizzle's Flyer", slot = "Shield", type = "Shield", zone = "Un'Goro Crater Quests", reqLevel = 49, questID = 4503, choice = 4503 },
    [11916] = { name = "Shizzle's Muzzle", source = "Shizzle's Flyer", slot = "Shoulder", type = "Leather Armor", zone = "Un'Goro Crater Quests", reqLevel = 49, questID = 4503, choice = 4503 },
    [11917] = { name = "Shizzle's Nozzle Wiper", source = "Shizzle's Flyer", slot = "Wrist", type = "Cloth Armor", zone = "Un'Goro Crater Quests", reqLevel = 49, questID = 4503, choice = 4503 },
    [11910] = { name = "Bejeweled Legguards", source = "A Little Help From My Friends", slot = "Legs", type = "Plate Armor", zone = "Un'Goro Crater Quests", reqLevel = 50, questID = 4491, choice = 4491 },
    [11911] = { name = "Treetop Leggings", source = "A Little Help From My Friends", slot = "Legs", type = "Cloth Armor", zone = "Un'Goro Crater Quests", reqLevel = 50, questID = 4491, choice = 4491 },
    [11913] = { name = "Clayridge Helm", source = "A Little Help From My Friends", slot = "Head", type = "Mail Armor", zone = "Un'Goro Crater Quests", reqLevel = 50, questID = 4491, choice = 4491 },
    [11906] = { name = "Beastsmasher", source = "The Mighty U'cha", slot = "Main Hand", type = "One-Handed Mace", zone = "Un'Goro Crater Quests", reqLevel = 50, questID = 4301, choice = 4301 },
    [11907] = { name = "Beastslayer", source = "The Mighty U'cha", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Un'Goro Crater Quests", reqLevel = 50, questID = 4301, choice = 4301 },
}

SGJ.ZoneMeta["Undercity Quests"] = { name = "Undercity Quests", min = 10, world = true }
SGJ.DungeonDB["Undercity Quests"] = {
    [10637] = { name = "Brewer's Gloves", source = "Sample for Helbrim", slot = "Hands", type = "Cloth Armor", zone = "Undercity Quests", reqLevel = 10, questID = 1358, side = "Horde", choice = 1358 },
    [10638] = { name = "Long Draping Cape", source = "Sample for Helbrim", slot = "Back", type = "Cloak", zone = "Undercity Quests", reqLevel = 10, questID = 1358, side = "Horde", choice = 1358 },
    [251485] = { name = "Edward's Knife", source = "A Frightened Request", slot = "One-Hand", type = "Dagger", zone = "Undercity Quests", reqLevel = 15, questID = 92401, side = "Horde", choice = 92401 },
    [251486] = { name = "Tabitha's Cuffs", source = "A Frightened Request", slot = "Wrist", type = "Cloth Armor", zone = "Undercity Quests", reqLevel = 15, questID = 92401, side = "Horde", choice = 92401 },
    [279864] = { name = "Monstrous Cleaver", source = "Unending Torment", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Undercity Quests", reqLevel = 16, questID = 97290, side = "Horde", choice = 97290 },
    [279865] = { name = "Grave Shroud", source = "Unending Torment", slot = "Back", type = "Cloak", zone = "Undercity Quests", reqLevel = 16, questID = 97290, side = "Horde", choice = 97290 },
    [279867] = { name = "Slain Baron's Signet", source = "Unending Torment", slot = "Finger", type = "Ring", zone = "Undercity Quests", reqLevel = 16, questID = 97290, side = "Horde", choice = 97290 },
    [2032] = { name = "Gallan Cuffs", source = "To Steal From Thieves", slot = "Wrist", type = "Cloth Armor", zone = "Undercity Quests", reqLevel = 27, questID = 1164, side = "Horde", choice = 1164 },
    [4443] = { name = "Grim Pauldrons", source = "To Steal From Thieves", slot = "Shoulder", type = "Mail Armor", zone = "Undercity Quests", reqLevel = 27, questID = 1164, side = "Horde", choice = 1164 },
    [9634] = { name = "Skilled Handling Gloves", source = "Return to Apothecary Zinge", slot = "Hands", type = "Cloth Armor", zone = "Undercity Quests", reqLevel = 38, questID = 864, side = "Horde", choice = 864 },
    [9635] = { name = "Master Apothecary Cape", source = "Return to Apothecary Zinge", slot = "Back", type = "Cloak", zone = "Undercity Quests", reqLevel = 38, questID = 864, side = "Horde", choice = 864 },
    [11502] = { name = "Loreskin Shoulders", source = "Return to Apothecary Zinge", slot = "Shoulder", type = "Leather Armor", zone = "Undercity Quests", reqLevel = 38, questID = 864, side = "Horde", choice = 864 },
    [15702] = { name = "Chemist's Ring", source = "Melding of Influences", slot = "Finger", type = "Ring", zone = "Undercity Quests", reqLevel = 48, questID = 4642, side = "Horde", choice = 4642 },
    [15703] = { name = "Chemist's Smock", source = "Melding of Influences", slot = "Back", type = "Cloak", zone = "Undercity Quests", reqLevel = 48, questID = 4642, side = "Horde", choice = 4642 },
}

SGJ.QuestDB["Wailing Caverns"] = {
    [6504] = { name = "Wingblade", source = "Leaders of the Fang", slot = "Main Hand", type = "One-Handed Sword", zone = "Wailing Caverns", reqLevel = 10, questID = 914, side = "Horde", choice = 914 },
    [6505] = { name = "Crescent Staff", source = "Leaders of the Fang", slot = "Two-Hand", type = "Staff", zone = "Wailing Caverns", reqLevel = 10, questID = 914, side = "Horde", choice = 914 },
    [270018] = { name = "Hammerbone", source = "Leaders of the Fang", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Wailing Caverns", reqLevel = 10, questID = 914, side = "Horde", choice = 914 },
    [6480] = { name = "Slick Deviate Leggings", source = "Deviate Hides", slot = "Legs", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 13, questID = 1486 },
    [10919] = { name = "Apothecary Gloves", source = "Serpentbloom", slot = "Hands", type = "Cloth Armor", zone = "Wailing Caverns", reqLevel = 14, questID = 962, side = "Horde", choice = 962 },
    [270008] = { name = "Heat Resistant Mitts", source = "Serpentbloom", slot = "Hands", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 14, questID = 962, side = "Horde", choice = 962 },
    [270009] = { name = "Safety Boots", source = "Serpentbloom", slot = "Feet", type = "Mail Armor", zone = "Wailing Caverns", reqLevel = 14, questID = 962, side = "Horde", choice = 962 },
    [6481] = { name = "Dagmire Gauntlets", source = "Deviate Eradication", slot = "Hands", type = "Mail Armor", zone = "Wailing Caverns", reqLevel = 15, questID = 1487, choice = 1487 },
    [8071] = { name = "Sizzle Stick", source = "Deviate Eradication", slot = "Ranged", type = "Wand", zone = "Wailing Caverns", reqLevel = 15, questID = 1487, choice = 1487 },
}

SGJ.ZoneMeta["Warlock Quests"] = { name = "Warlock Quests", min = 1, world = true }
SGJ.DungeonDB["Warlock Quests"] = {
    [4925] = { name = "Primitive Hand Blade", source = "Vile Familiars", slot = "One-Hand", type = "Dagger", zone = "Warlock Quests", reqLevel = 1, questID = 1499, side = "Horde", class = "WARLOCK", choice = 1499 },
    [5778] = { name = "Primitive Walking Stick", source = "Vile Familiars", slot = "Two-Hand", type = "Staff", zone = "Warlock Quests", reqLevel = 1, questID = 1499, side = "Horde", class = "WARLOCK", choice = 1499 },
    [6898] = { name = "Orb of Soran'ruk", source = "The Orb of Soran'ruk", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Warlock Quests", reqLevel = 20, questID = 1740, class = "WARLOCK", choice = 1740 },
    [15109] = { name = "Staff of Soran'ruk", source = "The Orb of Soran'ruk", slot = "Two-Hand", type = "Staff", zone = "Warlock Quests", reqLevel = 20, questID = 1740, class = "WARLOCK", choice = 1740 },
    [6900] = { name = "Enchanted Gold Bloodrobe", source = "The Completed Robe", slot = "Chest", type = "Cloth Armor", zone = "Warlock Quests", reqLevel = 31, questID = 4786, class = "WARLOCK" },
    [15106] = { name = "Staff of Dar'Orahil", source = "The Completed Orb of Dar'Orahil", slot = "Two-Hand", type = "Staff", zone = "Warlock Quests", reqLevel = 35, questID = 4964, class = "WARLOCK", choice = 4964 },
    [15108] = { name = "Orb of Dar'Orahil", source = "The Completed Orb of Dar'Orahil", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Warlock Quests", reqLevel = 35, questID = 4964, class = "WARLOCK", choice = 4964 },
    [15105] = { name = "Staff of Noh'Orahil", source = "The Completed Orb of Noh'Orahil", slot = "Two-Hand", type = "Staff", zone = "Warlock Quests", reqLevel = 35, questID = 4975, class = "WARLOCK", choice = 4975 },
    [15107] = { name = "Orb of Noh'Orahil", source = "The Completed Orb of Noh'Orahil", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Warlock Quests", reqLevel = 35, questID = 4975, class = "WARLOCK", choice = 4975 },
    [18762] = { name = "Shard of the Green Flame", source = "Kroshius' Infernal Core", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Warlock Quests", reqLevel = 50, questID = 7603, class = "WARLOCK" },
    [20530] = { name = "Robes of Servitude", source = "Trolls of a Feather", slot = "Chest", type = "Cloth Armor", zone = "Warlock Quests", reqLevel = 50, questID = 8422, class = "WARLOCK", choice = 8422 },
    [20534] = { name = "Abyss Shard", source = "Trolls of a Feather", slot = "Trinket", type = "Trinket", zone = "Warlock Quests", reqLevel = 50, questID = 8422, class = "WARLOCK", choice = 8422 },
    [20536] = { name = "Soul Harvester", source = "Trolls of a Feather", slot = "Two-Hand", type = "Staff", zone = "Warlock Quests", reqLevel = 50, questID = 8422, class = "WARLOCK", choice = 8422 },
    [18602] = { name = "Tome of Sacrifice", source = "Suppression", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Warlock Quests", reqLevel = 60, questID = 7583, class = "WARLOCK" },
}

SGJ.ZoneMeta["Warrior Quests"] = { name = "Warrior Quests", min = 10, world = true }
SGJ.DungeonDB["Warrior Quests"] = {
    [6979] = { name = "Haggard's Axe", source = "Dead-tooth Jack", slot = "Main Hand", type = "One-Handed Axe", zone = "Warrior Quests", reqLevel = 10, questID = 1667, side = "Alliance", class = "WARRIOR", choice = 1667 },
    [6980] = { name = "Haggard's Dagger", source = "Dead-tooth Jack", slot = "One-Hand", type = "Dagger", zone = "Warrior Quests", reqLevel = 10, questID = 1667, side = "Alliance", class = "WARRIOR", choice = 1667 },
    [6983] = { name = "Haggard's Hammer", source = "Dead-tooth Jack", slot = "Main Hand", type = "One-Handed Mace", zone = "Warrior Quests", reqLevel = 10, questID = 1667, side = "Alliance", class = "WARRIOR", choice = 1667 },
    [6985] = { name = "Haggard's Sword", source = "Dead-tooth Jack", slot = "Main Hand", type = "One-Handed Sword", zone = "Warrior Quests", reqLevel = 10, questID = 1667, side = "Alliance", class = "WARRIOR", choice = 1667 },
    [7326] = { name = "Thun'grim's Axe", source = "Forged Steel", slot = "Main Hand", type = "One-Handed Axe", zone = "Warrior Quests", reqLevel = 10, questID = 1503, side = "Horde", class = "WARRIOR", choice = 1503 },
    [7327] = { name = "Thun'grim's Dagger", source = "Forged Steel", slot = "One-Hand", type = "Dagger", zone = "Warrior Quests", reqLevel = 10, questID = 1503, side = "Horde", class = "WARRIOR", choice = 1503 },
    [7328] = { name = "Thun'grim's Mace", source = "Forged Steel", slot = "Main Hand", type = "One-Handed Mace", zone = "Warrior Quests", reqLevel = 10, questID = 1503, side = "Horde", class = "WARRIOR", choice = 1503 },
    [7329] = { name = "Thun'grim's Sword", source = "Forged Steel", slot = "Main Hand", type = "One-Handed Sword", zone = "Warrior Quests", reqLevel = 10, questID = 1503, side = "Horde", class = "WARRIOR", choice = 1503 },
    [6978] = { name = "Umbral Axe", source = "Grey Iron Weapons", slot = "Main Hand", type = "One-Handed Axe", zone = "Warrior Quests", reqLevel = 10, questID = 1682, side = "Alliance", class = "WARRIOR", choice = 1682 },
    [6981] = { name = "Umbral Dagger", source = "Grey Iron Weapons", slot = "One-Hand", type = "Dagger", zone = "Warrior Quests", reqLevel = 10, questID = 1682, side = "Alliance", class = "WARRIOR", choice = 1682 },
    [6982] = { name = "Umbral Mace", source = "Grey Iron Weapons", slot = "Main Hand", type = "One-Handed Mace", zone = "Warrior Quests", reqLevel = 10, questID = 1682, side = "Alliance", class = "WARRIOR", choice = 1682 },
    [6984] = { name = "Umbral Sword", source = "Grey Iron Weapons", slot = "Main Hand", type = "One-Handed Sword", zone = "Warrior Quests", reqLevel = 10, questID = 1682, side = "Alliance", class = "WARRIOR", choice = 1682 },
    [7115] = { name = "Heirloom Axe", source = "Heirloom Weapon", slot = "Main Hand", type = "One-Handed Axe", zone = "Warrior Quests", reqLevel = 10, questID = 1822, side = "Horde", class = "WARRIOR", choice = 1822 },
    [7116] = { name = "Heirloom Dagger", source = "Heirloom Weapon", slot = "One-Hand", type = "Dagger", zone = "Warrior Quests", reqLevel = 10, questID = 1822, side = "Horde", class = "WARRIOR", choice = 1822 },
    [7117] = { name = "Heirloom Hammer", source = "Heirloom Weapon", slot = "Main Hand", type = "One-Handed Mace", zone = "Warrior Quests", reqLevel = 10, questID = 1822, side = "Horde", class = "WARRIOR", choice = 1822 },
    [7118] = { name = "Heirloom Sword", source = "Heirloom Weapon", slot = "Main Hand", type = "One-Handed Sword", zone = "Warrior Quests", reqLevel = 10, questID = 1822, side = "Horde", class = "WARRIOR", choice = 1822 },
    [275290] = { name = "Stormforged Protector", source = "The Skybreaker Bulwark", slot = "Shield", type = "Shield", zone = "Warrior Quests", reqLevel = 10, questID = 94003, class = "WARRIOR" },
    [6966] = { name = "Elunite Axe", source = "Weapons of Elunite", slot = "Main Hand", type = "One-Handed Axe", zone = "Warrior Quests", reqLevel = 10, questID = 1693, side = "Alliance", class = "WARRIOR", choice = 1693 },
    [6967] = { name = "Elunite Sword", source = "Weapons of Elunite", slot = "Main Hand", type = "One-Handed Sword", zone = "Warrior Quests", reqLevel = 10, questID = 1693, side = "Alliance", class = "WARRIOR", choice = 1693 },
    [6968] = { name = "Elunite Hammer", source = "Weapons of Elunite", slot = "Main Hand", type = "One-Handed Mace", zone = "Warrior Quests", reqLevel = 10, questID = 1693, side = "Alliance", class = "WARRIOR", choice = 1693 },
    [6969] = { name = "Elunite Dagger", source = "Weapons of Elunite", slot = "One-Hand", type = "Dagger", zone = "Warrior Quests", reqLevel = 10, questID = 1693, side = "Alliance", class = "WARRIOR", choice = 1693 },
    [7129] = { name = "Brutal Gauntlets", source = "Brutal Gauntlets", slot = "Hands", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1843, side = "Horde", class = "WARRIOR" },
    [7133] = { name = "Brutal Hauberk", source = "Brutal Hauberk", slot = "Chest", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1848, side = "Horde", class = "WARRIOR" },
    [7130] = { name = "Brutal Helm", source = "Brutal Helm", slot = "Head", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1845, side = "Horde", class = "WARRIOR" },
    [7132] = { name = "Brutal Legguards", source = "Brutal Legguards", slot = "Legs", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1847, side = "Horde", class = "WARRIOR" },
    [6972] = { name = "Fire Hardened Hauberk", source = "Furen's Armor", slot = "Chest", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1782, side = "Alliance", class = "WARRIOR" },
    [6971] = { name = "Fire Hardened Coif", source = "Grimand's Armor", slot = "Head", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1706, side = "Alliance", class = "WARRIOR" },
    [6974] = { name = "Fire Hardened Gauntlets", source = "Klockmort's Creation", slot = "Hands", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1709, side = "Alliance", class = "WARRIOR" },
    [6973] = { name = "Fire Hardened Leggings", source = "Mathiel's Armor", slot = "Legs", type = "Mail Armor", zone = "Warrior Quests", reqLevel = 20, questID = 1711, side = "Alliance", class = "WARRIOR" },
    [6970] = { name = "Furen's Favor", source = "The Shieldsmith", slot = "Shield", type = "Shield", zone = "Warrior Quests", reqLevel = 20, questID = 1702, side = "Alliance", class = "WARRIOR" },
    [7120] = { name = "Ruga's Bulwark", source = "Trial at the Field of Giants", slot = "Shield", type = "Shield", zone = "Warrior Quests", reqLevel = 20, questID = 1824, side = "Horde", class = "WARRIOR" },
    [6975] = { name = "Whirlwind Axe", source = "Whirlwind Weapon", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Warrior Quests", reqLevel = 30, questID = 1792, class = "WARRIOR", choice = 1792 },
    [6976] = { name = "Whirlwind Warhammer", source = "Whirlwind Weapon", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Warrior Quests", reqLevel = 30, questID = 1792, class = "WARRIOR", choice = 1792 },
    [6977] = { name = "Whirlwind Sword", source = "Whirlwind Weapon", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Warrior Quests", reqLevel = 30, questID = 1792, class = "WARRIOR", choice = 1792 },
    [20130] = { name = "Diamond Flask", source = "Voodoo Feathers", slot = "Trinket", type = "Trinket", zone = "Warrior Quests", reqLevel = 50, questID = 8425, class = "WARRIOR", choice = 8425 },
    [20517] = { name = "Razorsteel Shoulders", source = "Voodoo Feathers", slot = "Shoulder", type = "Plate Armor", zone = "Warrior Quests", reqLevel = 50, questID = 8425, class = "WARRIOR", choice = 8425 },
    [20521] = { name = "Fury Visor", source = "Voodoo Feathers", slot = "Head", type = "Plate Armor", zone = "Warrior Quests", reqLevel = 50, questID = 8425, class = "WARRIOR", choice = 8425 },
}

SGJ.ZoneMeta["Western Plaguelands Quests"] = { name = "Western Plaguelands Quests", min = 50, world = true }
SGJ.DungeonDB["Western Plaguelands Quests"] = {
    [17759] = { name = "Mark of Resolution", source = "Alas, Andorhal", slot = "Trinket", type = "Trinket", zone = "Western Plaguelands Quests", reqLevel = 50, questID = 105 },
    [12846] = { name = "Argent Dawn Commission", source = "Argent Dawn Commission", slot = "Trinket", type = "Trinket", zone = "Western Plaguelands Quests", reqLevel = 50, questID = 5401 },
    [15799] = { name = "Heroic Commendation Medal", source = "Mission Accomplished!", slot = "Neck", type = "Amulet", zone = "Western Plaguelands Quests", reqLevel = 50, questID = 5237 },
    [15800] = { name = "Intrepid Shortsword", source = "Mission Accomplished!", slot = "One-Hand", type = "One-Handed Sword", zone = "Western Plaguelands Quests", reqLevel = 50, questID = 5237 },
    [15801] = { name = "Valiant Shortsword", source = "Mission Accomplished!", slot = "Main Hand", type = "One-Handed Sword", zone = "Western Plaguelands Quests", reqLevel = 50, questID = 5237 },
    [13473] = { name = "Felstone Good Luck Charm", source = "Two Halves Become One", slot = "Neck", type = "Amulet", zone = "Western Plaguelands Quests", reqLevel = 50, questID = 5051 },
    [15804] = { name = "Cerise Drape", source = "Glyphed Oaken Branch", slot = "Back", type = "Cloak", zone = "Western Plaguelands Quests", reqLevel = 51, questID = 4986 },
    [15411] = { name = "Mark of Fordring", source = "In Dreams", slot = "Neck", type = "Amulet", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5944, choice = 5944 },
    [15413] = { name = "Ornate Adamantium Breastplate", source = "In Dreams", slot = "Chest", type = "Plate Armor", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5944, choice = 5944 },
    [15418] = { name = "Shimmering Platinum Warhammer", source = "In Dreams", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5944, choice = 5944 },
    [15421] = { name = "Shroud of the Exile", source = "In Dreams", slot = "Back", type = "Cloak", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5944, choice = 5944 },
    [13474] = { name = "Farmer Dalson's Shotgun", source = "Locked Away", slot = "Ranged", type = "Gun", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5060 },
    [13475] = { name = "Dalson Family Wedding Ring", source = "Locked Away", slot = "Finger", type = "Ring", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5060 },
    [14022] = { name = "Barov Peasant Caller", source = "The Last Barov", slot = "Trinket", type = "Trinket", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5342, side = "Horde" },
    [14023] = { name = "Barov Peasant Caller", source = "The Last Barov", slot = "Trinket", type = "Trinket", zone = "Western Plaguelands Quests", reqLevel = 52, questID = 5344, side = "Alliance" },
    [15812] = { name = "Orchid Amice", source = "A Matter of Time", slot = "Shoulder", type = "Cloth Armor", zone = "Western Plaguelands Quests", reqLevel = 53, questID = 4971, choice = 4971 },
    [15813] = { name = "Gold Link Belt", source = "A Matter of Time", slot = "Waist", type = "Mail Armor", zone = "Western Plaguelands Quests", reqLevel = 53, questID = 4971, choice = 4971 },
    [12895] = { name = "Breastplate of the Chromatic Flight", source = "Breastplate of the Chromatic Flight", slot = "Chest", type = "Plate Armor", zone = "Western Plaguelands Quests", reqLevel = 57, questID = 5166 },
    [12903] = { name = "Legguards of the Chromatic Defier", source = "Legplates of the Chromatic Defier", slot = "Legs", type = "Mail Armor", zone = "Western Plaguelands Quests", reqLevel = 57, questID = 5167, choice = 5167 },
    [12945] = { name = "Legplates of the Chromatic Defier", source = "Legplates of the Chromatic Defier", slot = "Legs", type = "Mail Armor", zone = "Western Plaguelands Quests", reqLevel = 57, questID = 5167, choice = 5167 },
}

SGJ.ZoneMeta["Westfall Quests"] = { name = "Westfall Quests", min = 8, world = true }
SGJ.DungeonDB["Westfall Quests"] = {
    [710] = { name = "Bracers of the People's Militia", source = "Patrolling Westfall", slot = "Wrist", type = "Cloth Armor", zone = "Westfall Quests", reqLevel = 8, questID = 102, side = "Alliance", choice = 102 },
    [1154] = { name = "Belt of the People's Militia", source = "Patrolling Westfall", slot = "Waist", type = "Mail Armor", zone = "Westfall Quests", reqLevel = 8, questID = 102, side = "Alliance", choice = 102 },
    [1561] = { name = "Harvester's Robe", source = "The Killing Fields", slot = "Chest", type = "Cloth Armor", zone = "Westfall Quests", reqLevel = 8, questID = 9, side = "Alliance", choice = 9 },
    [3578] = { name = "Harvester's Pants", source = "The Killing Fields", slot = "Legs", type = "Leather Armor", zone = "Westfall Quests", reqLevel = 8, questID = 9, side = "Alliance", choice = 9 },
    [276695] = { name = "Harvester's Pestslayer", source = "The Killing Fields", slot = "Ranged", type = "Bow", zone = "Westfall Quests", reqLevel = 8, questID = 9, side = "Alliance", choice = 9 },
    [2165] = { name = "Old Blanchy's Blanket", source = "Poor Old Blanchy", slot = "Back", type = "Cloak", zone = "Westfall Quests", reqLevel = 9, questID = 151, side = "Alliance" },
    [1480] = { name = "Fist of the People's Militia", source = "The People's Militia", slot = "Main Hand", type = "One-Handed Mace", zone = "Westfall Quests", reqLevel = 9, questID = 14, side = "Alliance", choice = 14 },
    [1566] = { name = "Edge of the People's Militia", source = "The People's Militia", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Westfall Quests", reqLevel = 9, questID = 14, side = "Alliance", choice = 14 },
    [12296] = { name = "Spark of the People's Militia", source = "The People's Militia", slot = "Ranged", type = "Wand", zone = "Westfall Quests", reqLevel = 9, questID = 14, side = "Alliance", choice = 14 },
    [270006] = { name = "Boots of the People's Militia", source = "The People's Militia", slot = "Feet", type = "Leather Armor", zone = "Westfall Quests", reqLevel = 9, questID = 14, side = "Alliance", choice = 14 },
    [1479] = { name = "Salma's Oven Mitts", source = "Westfall Stew", slot = "Hands", type = "Cloth Armor", zone = "Westfall Quests", reqLevel = 9, questID = 38, side = "Alliance" },
    [2225] = { name = "Sharp Kitchen Knife", source = "Westfall Stew", slot = "One-Hand", type = "Dagger", zone = "Westfall Quests", reqLevel = 9, questID = 38, side = "Alliance" },
    [3344] = { name = "Captain Sander's Sash", source = "Captain Sander's Hidden Treasure", slot = "Waist", type = "Cloth Armor", zone = "Westfall Quests", reqLevel = 10, questID = 140 },
    [3511] = { name = "Cloak of the People's Militia", source = "Red Leather Bandanas", slot = "Back", type = "Cloak", zone = "Westfall Quests", reqLevel = 10, questID = 153, side = "Alliance", choice = 153 },
    [5944] = { name = "Greaves of the People's Militia", source = "Red Leather Bandanas", slot = "Feet", type = "Mail Armor", zone = "Westfall Quests", reqLevel = 10, questID = 153, side = "Alliance", choice = 153 },
    [12295] = { name = "Leggings of the People's Militia", source = "Red Leather Bandanas", slot = "Legs", type = "Cloth Armor", zone = "Westfall Quests", reqLevel = 10, questID = 153, side = "Alliance", choice = 153 },
    [1172] = { name = "Grayson's Torch", source = "The Coastal Menace", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Westfall Quests", reqLevel = 15, questID = 104, choice = 104 },
    [1557] = { name = "Buckler of the Seas", source = "The Coastal Menace", slot = "Shield", type = "Shield", zone = "Westfall Quests", reqLevel = 15, questID = 104, choice = 104 },
    [5240] = { name = "Torchlight Wand", source = "The Coastal Menace", slot = "Ranged", type = "Wand", zone = "Westfall Quests", reqLevel = 15, questID = 104, choice = 104 },
    [744] = { name = "Thunderbrew's Boot Flask", source = "Sweet Amber", slot = "Trinket", type = "Trinket", zone = "Westfall Quests", reqLevel = 40, questID = 53, side = "Alliance" },
}

SGJ.ZoneMeta["Wetlands Quests"] = { name = "Wetlands Quests", min = 18, world = true }
SGJ.DungeonDB["Wetlands Quests"] = {
    [2545] = { name = "Malleable Chain Leggings", source = "Apprentice's Duties", slot = "Legs", type = "Mail Armor", zone = "Wetlands Quests", reqLevel = 18, questID = 471, side = "Alliance", choice = 471 },
    [3561] = { name = "Resilient Poncho", source = "Apprentice's Duties", slot = "Back", type = "Cloak", zone = "Wetlands Quests", reqLevel = 18, questID = 471, side = "Alliance", choice = 471 },
    [1273] = { name = "Forest Chain", source = "Blisters on the Land", slot = "Chest", type = "Mail Armor", zone = "Wetlands Quests", reqLevel = 20, questID = 275, side = "Alliance", choice = 275 },
    [2263] = { name = "Phytoblade", source = "Blisters on the Land", slot = "Main Hand", type = "One-Handed Sword", zone = "Wetlands Quests", reqLevel = 20, questID = 275, side = "Alliance", choice = 275 },
    [3558] = { name = "Fen Keeper Robe", source = "Blisters on the Land", slot = "Chest", type = "Cloth Armor", zone = "Wetlands Quests", reqLevel = 20, questID = 275, side = "Alliance", choice = 275 },
    [2949] = { name = "Mariner Boots", source = "Return the Statuette", slot = "Feet", type = "Leather Armor", zone = "Wetlands Quests", reqLevel = 20, questID = 286, side = "Alliance", choice = 286 },
    [2950] = { name = "Icicle Rod", source = "Return the Statuette", slot = "Two-Hand", type = "Staff", zone = "Wetlands Quests", reqLevel = 20, questID = 286, side = "Alliance", choice = 286 },
    [281318] = { name = "Bouquet of Auberdine Flowers", source = "Bloom of the Heavens", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Wetlands Quests", reqLevel = 22, questID = 98208 },
    [2943] = { name = "Eye of Paleth", source = "Cleansing the Eye", slot = "Held In Off-hand", type = "Held In Off-hand", zone = "Wetlands Quests", reqLevel = 22, questID = 293, side = "Alliance" },
    [3493] = { name = "Raptor's End", source = "Ormer's Revenge", slot = "Ranged", type = "Bow", zone = "Wetlands Quests", reqLevel = 22, questID = 296, side = "Alliance", choice = 296 },
    [3566] = { name = "Raptorbane Armor", source = "Ormer's Revenge", slot = "Chest", type = "Leather Armor", zone = "Wetlands Quests", reqLevel = 22, questID = 296, side = "Alliance", choice = 296 },
    [5246] = { name = "Excavation Rod", source = "Ormer's Revenge", slot = "Ranged", type = "Wand", zone = "Wetlands Quests", reqLevel = 22, questID = 296, side = "Alliance", choice = 296 },
    [2913] = { name = "Silk Mantle of Gamn", source = "Uncovering the Past", slot = "Shoulder", type = "Cloth Armor", zone = "Wetlands Quests", reqLevel = 22, questID = 299, side = "Alliance" },
    [3209] = { name = "Ancient War Sword", source = "Defeat Nek'rosh", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Wetlands Quests", reqLevel = 23, questID = 474, side = "Alliance", choice = 474 },
    [6194] = { name = "Barreling Reaper", source = "Defeat Nek'rosh", slot = "Main Hand", type = "One-Handed Axe", zone = "Wetlands Quests", reqLevel = 23, questID = 474, side = "Alliance", choice = 474 },
    [2916] = { name = "Gold Lion Shield", source = "A Grim Task", slot = "Shield", type = "Shield", zone = "Wetlands Quests", reqLevel = 26, questID = 304, side = "Alliance", choice = 304 },
    [2917] = { name = "Tranquil Ring", source = "A Grim Task", slot = "Finger", type = "Ring", zone = "Wetlands Quests", reqLevel = 26, questID = 304, side = "Alliance", choice = 304 },
    [4504] = { name = "Dwarven Guard Cloak", source = "The Thandol Span", slot = "Back", type = "Cloak", zone = "Wetlands Quests", reqLevel = 28, questID = 633, side = "Alliance", choice = 633 },
    [4505] = { name = "Swampland Trousers", source = "The Thandol Span", slot = "Legs", type = "Cloth Armor", zone = "Wetlands Quests", reqLevel = 28, questID = 633, side = "Alliance", choice = 633 },
}

SGJ.ZoneMeta["Winterspring Quests"] = { name = "Winterspring Quests", min = 50, world = true }
SGJ.DungeonDB["Winterspring Quests"] = {
    [15862] = { name = "Blitzcleaver", source = "Return to Tinkee", slot = "One-Hand", type = "One-Handed Axe", zone = "Winterspring Quests", reqLevel = 50, questID = 4810, choice = 4810 },
    [15863] = { name = "Grave Scepter", source = "Return to Tinkee", slot = "Main Hand", type = "One-Handed Mace", zone = "Winterspring Quests", reqLevel = 50, questID = 4810, choice = 4810 },
    [15789] = { name = "Deep River Cloak", source = "Strange Sources", slot = "Back", type = "Cloak", zone = "Winterspring Quests", reqLevel = 51, questID = 4842 },
    [15796] = { name = "Seaspray Bracers", source = "Guarding Secrets", slot = "Wrist", type = "Mail Armor", zone = "Winterspring Quests", reqLevel = 52, questID = 4883, side = "Horde", choice = 4883 },
    [15797] = { name = "Shining Armplates", source = "Guarding Secrets", slot = "Wrist", type = "Plate Armor", zone = "Winterspring Quests", reqLevel = 52, questID = 4883, side = "Horde", choice = 4883 },
    [15784] = { name = "Crystal Breeze Mantle", source = "High Chief Winterfall", slot = "Shoulder", type = "Cloth Armor", zone = "Winterspring Quests", reqLevel = 52, questID = 5121, choice = 5121 },
    [15786] = { name = "Fernpulse Jerkin", source = "High Chief Winterfall", slot = "Chest", type = "Leather Armor", zone = "Winterspring Quests", reqLevel = 52, questID = 5121, choice = 5121 },
    [15787] = { name = "Willow Band Hauberk", source = "High Chief Winterfall", slot = "Chest", type = "Mail Armor", zone = "Winterspring Quests", reqLevel = 52, questID = 5121, choice = 5121 },
    [16622] = { name = "Thornflinger", source = "Wildkin of Elune", slot = "Ranged", type = "Bow", zone = "Winterspring Quests", reqLevel = 52, questID = 4902, side = "Alliance", choice = 4902 },
    [16623] = { name = "Opaline Medallion", source = "Wildkin of Elune", slot = "Neck", type = "Amulet", zone = "Winterspring Quests", reqLevel = 52, questID = 4902, side = "Alliance", choice = 4902 },
    [15704] = { name = "Hunter's Insignia Medal", source = "Past Endeavors", slot = "Neck", type = "Amulet", zone = "Winterspring Quests", reqLevel = 53, questID = 5057 },
    [15782] = { name = "Beaststalker Blade", source = "Shy-Rotam", slot = "One-Hand", type = "One-Handed Sword", zone = "Winterspring Quests", reqLevel = 53, questID = 5056, side = "Horde", choice = 5056 },
    [15783] = { name = "Beasthunter Dagger", source = "Shy-Rotam", slot = "One-Hand", type = "Dagger", zone = "Winterspring Quests", reqLevel = 53, questID = 5056, side = "Horde", choice = 5056 },
    [15791] = { name = "Turquoise Sash", source = "The Crystal of Zin-Malor", slot = "Waist", type = "Cloth Armor", zone = "Winterspring Quests", reqLevel = 53, questID = 5253, side = "Alliance", choice = 5253 },
    [15792] = { name = "Plow Wood Spaulders", source = "The Crystal of Zin-Malor", slot = "Shoulder", type = "Leather Armor", zone = "Winterspring Quests", reqLevel = 53, questID = 5253, side = "Alliance", choice = 5253 },
    [15795] = { name = "Emerald Mist Gauntlets", source = "The Crystal of Zin-Malor", slot = "Hands", type = "Plate Armor", zone = "Winterspring Quests", reqLevel = 53, questID = 5253, side = "Alliance", choice = 5253 },
    [12631] = { name = "Fiery Plate Gauntlets", source = "Fiery Plate Gauntlets", slot = "Hands", type = "Plate Armor", zone = "Winterspring Quests", reqLevel = 55, questID = 5124 },
    [12757] = { name = "Breastplate of Bloodthirst", source = "Breastplate of Bloodthirst", slot = "Chest", type = "Leather Armor", zone = "Winterspring Quests", reqLevel = 57, questID = 5068 },
    [12752] = { name = "Cap of the Scarlet Savant", source = "Cap of the Scarlet Savant", slot = "Head", type = "Cloth Armor", zone = "Winterspring Quests", reqLevel = 57, questID = 5063 },
    [12756] = { name = "Leggings of Arcana", source = "Leggings of Arcana", slot = "Legs", type = "Leather Armor", zone = "Winterspring Quests", reqLevel = 57, questID = 5067 },
}

SGJ.ZoneMeta["Zephras Isle Quests"] = { name = "Zephras Isle Quests", min = 1, world = true, race = "Skyborne" }
SGJ.DungeonDB["Zephras Isle Quests"] = {
    [264908] = { name = "Ancient Heirloom", source = "Coming of Age", slot = "Finger", type = "Ring", zone = "Zephras Isle Quests", reqLevel = 1, questID = 92460 },
    [257280] = { name = "Vuldren Hide Bracers", source = "Harmony in Balance", slot = "Wrist", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 1, questID = 92461, choice = 92461 },
    [257281] = { name = "Fur-Lined Shoes", source = "Harmony in Balance", slot = "Feet", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 1, questID = 92461, choice = 92461 },
    [257276] = { name = "Peacekeeper's Pickhammer", source = "Foul Matriarch", slot = "Main Hand", type = "One-Handed Mace", zone = "Zephras Isle Quests", reqLevel = 2, questID = 92470, choice = 92470 },
    [257282] = { name = "Novice's Quarterstaff", source = "Foul Matriarch", slot = "Two-Hand", type = "Staff", zone = "Zephras Isle Quests", reqLevel = 2, questID = 92470, choice = 92470 },
    [257283] = { name = "Scout Ranger's Dagger", source = "Foul Matriarch", slot = "One-Hand", type = "Dagger", zone = "Zephras Isle Quests", reqLevel = 2, questID = 92470, choice = 92470 },
    [258882] = { name = "Worn Greatsword", source = "Foul Matriarch", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Zephras Isle Quests", reqLevel = 2, questID = 92470, choice = 92470 },
    [263408] = { name = "Exterminator's Vest", source = "The Cirrusfly Queen", slot = "Chest", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 2, questID = 92463, choice = 92463 },
    [263409] = { name = "Gardening Pants", source = "The Cirrusfly Queen", slot = "Legs", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 2, questID = 92463, choice = 92463 },
    [263410] = { name = "Watcher's Mail Chest", source = "The Cirrusfly Queen", slot = "Chest", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 2, questID = 92463, choice = 92463 },
    [257257] = { name = "Thendal Ranger's Shoes", source = "Aggressive Encroachment", slot = "Feet", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 3, questID = 92473, choice = 92473 },
    [257263] = { name = "Thendal Ranger's Belt", source = "Aggressive Encroachment", slot = "Waist", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 3, questID = 92473, choice = 92473 },
    [257264] = { name = "Thendal Ranger's Gloves", source = "Aggressive Encroachment", slot = "Hands", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 3, questID = 92473, choice = 92473 },
    [257272] = { name = "Skychain Belt", source = "Return to Rorian", slot = "Waist", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 3, questID = 92469, choice = 92469 },
    [257277] = { name = "Windblown Short Cloak", source = "Return to Rorian", slot = "Back", type = "Cloak", zone = "Zephras Isle Quests", reqLevel = 3, questID = 92469, choice = 92469 },
    [263305] = { name = "Windshaped Shield", source = "A Firm Response", slot = "Shield", type = "Shield", zone = "Zephras Isle Quests", reqLevel = 4, questID = 93746, side = "Horde" },
    [263428] = { name = "Dowsing Rod", source = "A Magical Affront", slot = "Ranged", type = "Wand", zone = "Zephras Isle Quests", reqLevel = 4, questID = 94413, side = "Alliance" },
    [263411] = { name = "Idol of Shifting Tides", source = "Meddlesome Mages", slot = "Relic", type = "Idol", zone = "Zephras Isle Quests", reqLevel = 4, questID = 94411, side = "Horde", choice = 94411 },
    [263412] = { name = "Totem of Charged Flames", source = "Meddlesome Mages", slot = "Relic", type = "Totem", zone = "Zephras Isle Quests", reqLevel = 4, questID = 94411, side = "Horde", choice = 94411 },
    [263421] = { name = "Bandit's Jerkin", source = "The Criminal Element", slot = "Chest", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 4, questID = 92517, choice = 92517 },
    [263422] = { name = "Patchwork Leggings", source = "The Criminal Element", slot = "Legs", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 4, questID = 92517, choice = 92517 },
    [263423] = { name = "Highlands Mail Legguards", source = "The Criminal Element", slot = "Legs", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 4, questID = 92517, choice = 92517 },
    [257255] = { name = "Highlands Defender's Shield", source = "WANTED: Vulgara the Insatiable", slot = "Shield", type = "Shield", zone = "Zephras Isle Quests", reqLevel = 4, questID = 93318, choice = 93318 },
    [257943] = { name = "Hunter's Simple Cloak", source = "WANTED: Vulgara the Insatiable", slot = "Back", type = "Cloak", zone = "Zephras Isle Quests", reqLevel = 4, questID = 93318, choice = 93318 },
    [257332] = { name = "Stained Ritual Dagger", source = "Among the Faithful", slot = "One-Hand", type = "Dagger", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92528, choice = 92528 },
    [257333] = { name = "Curved Scimitar", source = "Among the Faithful", slot = "Main Hand", type = "One-Handed Sword", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92528, choice = 92528 },
    [273877] = { name = "Windswept Shortbow", source = "Among the Faithful", slot = "Ranged", type = "Bow", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92528, choice = 92528 },
    [263404] = { name = "Bow of Hours", source = "Catching Wind", slot = "Ranged", type = "Bow", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92840, side = "Alliance" },
    [263312] = { name = "Planting Shovel", source = "Deliver the News", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92703, choice = 92703 },
    [263313] = { name = "Trusty Wrench", source = "Deliver the News", slot = "One-Hand", type = "One-Handed Mace", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92703, choice = 92703 },
    [263314] = { name = "Roofing Hammer", source = "Deliver the News", slot = "One-Hand", type = "One-Handed Mace", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92703, choice = 92703 },
    [263329] = { name = "Flutterfly Swatter", source = "Flutterfly Dust", slot = "One-Hand", type = "One-Handed Mace", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92683 },
    [263424] = { name = "Wolfhide Belt", source = "Havoc in the Highlands", slot = "Waist", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92550, choice = 92550 },
    [263425] = { name = "Elegant Cuffs", source = "Havoc in the Highlands", slot = "Wrist", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92550, choice = 92550 },
    [263426] = { name = "Ex-Commander's Gauntlets", source = "Havoc in the Highlands", slot = "Hands", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92550, choice = 92550 },
    [257331] = { name = "Brass-Banded Bracers", source = "Ornery Ornery Galestriders", slot = "Wrist", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92684, choice = 92684 },
    [257334] = { name = "Well-Worn Pants", source = "Ornery Ornery Galestriders", slot = "Legs", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92684, choice = 92684 },
    [257340] = { name = "Farmer's Field Boots", source = "Ornery Ornery Galestriders", slot = "Feet", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 5, questID = 92684, choice = 92684 },
    [263401] = { name = "Martyr's Armor", source = "Avenged Tenfold", slot = "Chest", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92834, side = "Alliance", choice = 92834 },
    [263402] = { name = "Sash of Sorrow", source = "Avenged Tenfold", slot = "Waist", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92834, side = "Alliance", choice = 92834 },
    [263403] = { name = "Cilice of Regret", source = "Avenged Tenfold", slot = "Waist", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92834, side = "Alliance", choice = 92834 },
    [263335] = { name = "Hunter's Cord", source = "Breaking the Breaker", slot = "Waist", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92645, choice = 92645 },
    [263336] = { name = "Windsong Bangles", source = "Breaking the Breaker", slot = "Wrist", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92645, choice = 92645 },
    [263337] = { name = "Breaker's Gauntlets", source = "Breaking the Breaker", slot = "Hands", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92645, choice = 92645 },
    [257342] = { name = "Elite Peacekeeper's Leggings", source = "Desperate Times", slot = "Legs", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92640, choice = 92640 },
    [257344] = { name = "Skywatcher's Vestments", source = "Desperate Times", slot = "Chest", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92640, choice = 92640 },
    [273876] = { name = "Broken Cultist Gloves", source = "Desperate Times", slot = "Hands", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92640, choice = 92640 },
    [257343] = { name = "Balanced Quarterstaff", source = "Return to Valanaar", slot = "Two-Hand", type = "Staff", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92880, choice = 92880 },
    [257345] = { name = "Honed Greathammer", source = "Return to Valanaar", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92880, choice = 92880 },
    [257346] = { name = "Quickblade's Dagger", source = "Return to Valanaar", slot = "One-Hand", type = "Dagger", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92880, choice = 92880 },
    [263414] = { name = "Traveler's Wraps", source = "To Valanaar", slot = "Hands", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92579, side = "Horde", choice = 92579 },
    [263417] = { name = "Adventurer's Cloak", source = "To Valanaar", slot = "Back", type = "Cloak", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92579, side = "Horde", choice = 92579 },
    [263420] = { name = "Hiking Boots", source = "To Valanaar", slot = "Feet", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92579, side = "Horde", choice = 92579 },
    [263338] = { name = "Defender's Bracers", source = "Tower Defense", slot = "Wrist", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 93320, choice = 93320 },
    [263339] = { name = "Windswept Slippers", source = "Tower Defense", slot = "Feet", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 93320, choice = 93320 },
    [263340] = { name = "Peacekeeper's Legguards", source = "Tower Defense", slot = "Legs", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 93320, choice = 93320 },
    [263330] = { name = "Tracker's Pants", source = "Unfortunate News", slot = "Legs", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92644, choice = 92644 },
    [263332] = { name = "Elder's Tunic", source = "Unfortunate News", slot = "Chest", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92644, choice = 92644 },
    [263333] = { name = "Peacekeeper's Mail", source = "Unfortunate News", slot = "Chest", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 6, questID = 92644, choice = 92644 },
    [263405] = { name = "Belt of Blades", source = "Confront Lorthuna", slot = "Waist", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 7, questID = 92646 },
    [263406] = { name = "Empyrean Shoes", source = "Confront Lorthuna", slot = "Feet", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 7, questID = 92646 },
    [263407] = { name = "Empyrean Greatsword", source = "Confront Lorthuna", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Zephras Isle Quests", reqLevel = 7, questID = 92646 },
    [273875] = { name = "Empyrean Treads", source = "Confront Lorthuna", slot = "Feet", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 7, questID = 92646 },
    [263309] = { name = "Freedom Walkers", source = "Free the Hollows", slot = "Feet", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 8, questID = 93172, choice = 93172 },
    [263310] = { name = "Sorrowsong Gloves", source = "Free the Hollows", slot = "Hands", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 8, questID = 93172, choice = 93172 },
    [263311] = { name = "Scuffed Cuffs", source = "Free the Hollows", slot = "Wrist", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 8, questID = 93172, choice = 93172 },
    [263306] = { name = "Nightclaw Gloves", source = "Mercy Falls on Deaf Ears", slot = "Hands", type = "Leather Armor", zone = "Zephras Isle Quests", reqLevel = 8, questID = 93165, choice = 93165 },
    [263307] = { name = "Shadowgale Pants", source = "Mercy Falls on Deaf Ears", slot = "Legs", type = "Cloth Armor", zone = "Zephras Isle Quests", reqLevel = 8, questID = 93165, choice = 93165 },
    [263308] = { name = "Cult Hunter's Boots", source = "Mercy Falls on Deaf Ears", slot = "Feet", type = "Mail Armor", zone = "Zephras Isle Quests", reqLevel = 8, questID = 93165, choice = 93165 },
}

SGJ.QuestDB["Zul'Farrak"] = {
    [9533] = { name = "Masons Fraternity Ring", source = "Divino-matic Rod", slot = "Finger", type = "Ring", zone = "Zul'Farrak", reqLevel = 40, questID = 2768, choice = 2768 },
    [9534] = { name = "Engineer's Guild Headpiece", source = "Divino-matic Rod", slot = "Head", type = "Leather Armor", zone = "Zul'Farrak", reqLevel = 40, questID = 2768, choice = 2768 },
    [11122] = { name = "Carrot on a Stick", source = "Gahz'rilla", slot = "Trinket", type = "Trinket", zone = "Zul'Farrak", reqLevel = 40, questID = 2770 },
    [9527] = { name = "Spellshifter Rod", source = "Tiara of the Deep", slot = "Two-Hand", type = "Staff", zone = "Zul'Farrak", reqLevel = 40, questID = 2846 },
    [9531] = { name = "Gemshale Pauldrons", source = "Tiara of the Deep", slot = "Shoulder", type = "Plate Armor", zone = "Zul'Farrak", reqLevel = 40, questID = 2846 },
}

SGJ.QuestDB["Zul'Gurub"] = {
    [19610] = { name = "Enchanted South Seas Kelp", source = "Enchanted South Seas Kelp", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8110 },
    [19611] = { name = "Enchanted South Seas Kelp", source = "Enchanted South Seas Kelp", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8111 },
    [19612] = { name = "Enchanted South Seas Kelp", source = "Enchanted South Seas Kelp", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8112 },
    [19602] = { name = "Kezan's Taint", source = "Kezan's Taint", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8106 },
    [19603] = { name = "Kezan's Taint", source = "Kezan's Taint", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8107 },
    [19604] = { name = "Kezan's Taint", source = "Kezan's Taint", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8108 },
    [19605] = { name = "Kezan's Unstoppable Taint", source = "Kezan's Unstoppable Taint", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8109 },
    [19621] = { name = "Maelstrom's Wrath", source = "Maelstrom's Wrath", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8148 },
    [19613] = { name = "Pristine Enchanted South Seas Kelp", source = "Pristine Enchanted South Seas Kelp", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8113 },
    [19574] = { name = "Strength of Mugamba", source = "Strength of Mount Mugamba", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8041 },
    [19575] = { name = "Strength of Mugamba", source = "Strength of Mount Mugamba", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8042 },
    [19576] = { name = "Strength of Mugamba", source = "Strength of Mount Mugamba", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8043 },
    [19594] = { name = "The All-Seeing Eye of Zuldazar", source = "The All-Seeing Eye of Zuldazar", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8052 },
    [19591] = { name = "The Eye of Zuldazar", source = "The Eye of Zuldazar", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8049 },
    [19592] = { name = "The Eye of Zuldazar", source = "The Eye of Zuldazar", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8050 },
    [19593] = { name = "The Eye of Zuldazar", source = "The Eye of Zuldazar", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8051 },
    [19579] = { name = "Heathen's Brand", source = "The Heathen's Brand", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8045, side = "Alliance" },
    [19585] = { name = "Heathen's Brand", source = "The Heathen's Brand", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8046, side = "Alliance" },
    [19586] = { name = "Heathen's Brand", source = "The Heathen's Brand", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8047, side = "Alliance" },
    [19588] = { name = "Hero's Brand", source = "The Hero's Brand", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8048, side = "Alliance" },
    [19601] = { name = "Jewel of Kajaro", source = "The Jewel of Kajaro", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8104 },
    [19618] = { name = "Maelstrom's Tendril", source = "The Maelstrom's Tendril", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8145 },
    [19619] = { name = "Maelstrom's Tendril", source = "The Maelstrom's Tendril", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8146 },
    [19620] = { name = "Maelstrom's Tendril", source = "The Maelstrom's Tendril", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8147 },
    [19598] = { name = "Pebble of Kajaro", source = "The Pebble of Kajaro", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8101 },
    [19599] = { name = "Pebble of Kajaro", source = "The Pebble of Kajaro", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8102 },
    [19600] = { name = "Pebble of Kajaro", source = "The Pebble of Kajaro", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8103 },
    [19577] = { name = "Rage of Mugamba", source = "The Rage of Mugamba", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8044 },
    [19609] = { name = "Unmarred Vision of Voodress", source = "The Unmarred Vision of Voodress", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8119, side = "Horde" },
    [19606] = { name = "Vision of Voodress", source = "Vision of Voodress", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8116, side = "Horde" },
    [19607] = { name = "Vision of Voodress", source = "Vision of Voodress", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8117, side = "Horde" },
    [19608] = { name = "Vision of Voodress", source = "Vision of Voodress", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8118, side = "Horde" },
    [19617] = { name = "Zandalarian Shadow Mastery Talisman", source = "Zandalarian Shadow Mastery Talisman", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8144 },
    [19614] = { name = "Zandalarian Shadow Talisman", source = "Zandalarian Shadow Talisman", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8141 },
    [19615] = { name = "Zandalarian Shadow Talisman", source = "Zandalarian Shadow Talisman", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8142 },
    [19616] = { name = "Zandalarian Shadow Talisman", source = "Zandalarian Shadow Talisman", slot = "Neck", type = "Amulet", zone = "Zul'Gurub", reqLevel = 58, questID = 8143 },
}

-- Quest details: start = quest giver, zone/x/y = where, level / req = quest level and
-- required level, step / steps = its place in a quest chain (none = not a chain).
SGJ.QuestInfo = SGJ.QuestInfo or {}
SGJ.QuestInfo[6] = { start = "Deputy Willem", zone = "Elwynn Forest", x = 48.2, y = 42.9, level = 5, req = 2, step = 3, steps = 3 }
SGJ.QuestInfo[9] = { start = "Farmer Saldean", zone = "Westfall", x = 56.0, y = 31.2, level = 15, req = 8 }
SGJ.QuestInfo[11] = { start = "Deputy Rainer", zone = "Elwynn Forest", x = 24.2, y = 74.4, level = 10, req = 6, step = 4, steps = 4 }
SGJ.QuestInfo[14] = { start = "Gryan Stoutmantle", zone = "Westfall", x = 56.3, y = 47.5, level = 17, req = 9, step = 3, steps = 3 }
SGJ.QuestInfo[18] = { start = "Deputy Willem", zone = "Elwynn Forest", x = 48.2, y = 42.9, level = 4, req = 2, step = 2, steps = 3 }
SGJ.QuestInfo[19] = { start = "Marshal Marris", zone = "Redridge Mountains", x = 28.4, y = 49.0, level = 25, req = 18, step = 2, steps = 2 }
SGJ.QuestInfo[21] = { start = "Marshal McBride", zone = "Elwynn Forest", x = 48.9, y = 41.6, level = 5, req = 1, step = 4, steps = 5 }
SGJ.QuestInfo[31] = { start = "Dendrite Starblaze", zone = "Moonglade", x = 56.2, y = 30.6, level = 16, req = 16, step = 4, steps = 4 }
SGJ.QuestInfo[33] = { start = "Eagan Peltskinner", zone = "Elwynn Forest", x = 48.9, y = 40.2, level = 2, req = 1, step = 3, steps = 6 }
SGJ.QuestInfo[34] = { start = "Martie Jainrose", zone = "Redridge Mountains", x = 16.8, y = 46.3, level = 24, req = 18 }
SGJ.QuestInfo[38] = { start = "Salma Saldean", zone = "Westfall", x = 56.4, y = 30.5, level = 13, req = 9, step = 2, steps = 2 }
SGJ.QuestInfo[46] = { start = "Guard Thomas", zone = "Elwynn Forest", x = 74.0, y = 72.2, level = 10, req = 7 }
SGJ.QuestInfo[53] = { start = "Grimbooze Thunderbrew", zone = "Westfall", x = 44.6, y = 80.3, level = 44, req = 40, step = 5, steps = 5 }
SGJ.QuestInfo[54] = { start = "Marshal McBride", zone = "Elwynn Forest", x = 48.9, y = 41.6, level = 5, req = 1, step = 5, steps = 5 }
SGJ.QuestInfo[55] = { start = "Sven Yorgen", zone = "Duskwood", x = 7.8, y = 34.1, level = 32, req = 20, step = 17, steps = 17 }
SGJ.QuestInfo[59] = { start = "Marshal Dughan", zone = "Elwynn Forest", x = 42.1, y = 65.9, level = 10, req = 7, step = 7, steps = 7 }
SGJ.QuestInfo[83] = { start = "Sara Timberlain", zone = "Elwynn Forest", x = 79.5, y = 68.8, level = 9, req = 4 }
SGJ.QuestInfo[87] = { start = "Billy Maclure", zone = "Elwynn Forest", x = 43.1, y = 85.7, level = 8, req = 5, step = 4, steps = 4 }
SGJ.QuestInfo[88] = { start = "Ma Stonefield", zone = "Elwynn Forest", x = 34.7, y = 84.5, level = 9, req = 6 }
SGJ.QuestInfo[89] = { start = "Foreman Oslow", zone = "Redridge Mountains", x = 27.1, y = 48.6, level = 20, req = 15, step = 2, steps = 2 }
SGJ.QuestInfo[98] = { start = "Commander Althea Ebonlocke", zone = "Duskwood", x = 73.5, y = 46.8, level = 35, req = 22, step = 13, steps = 13 }
SGJ.QuestInfo[99] = { start = "Dalar Dawnweaver", zone = "Silverpine Forest", x = 44.2, y = 39.8, level = 15, req = 9, step = 5, steps = 6 }
SGJ.QuestInfo[101] = { start = "Madame Eva", zone = "Duskwood", x = 75.8, y = 45.3, level = 25, req = 18 }
SGJ.QuestInfo[102] = { start = "Captain Danuvin", zone = "Westfall", x = 56.4, y = 47.6, level = 14, req = 8 }
SGJ.QuestInfo[104] = { start = "Captain Grayson", zone = "Westfall", x = 30.0, y = 86.0, level = 20, req = 15 }
SGJ.QuestInfo[105] = { start = "High Executor Derrington", zone = "Tirisfal Glades", x = 83.1, y = 68.9, level = 60, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[116] = { start = "Barkeep Daniels", zone = "Redridge Mountains", x = 21.4, y = 44.0, level = 15, req = 12 }
SGJ.QuestInfo[122] = { start = "Verner Osgood", zone = "Redridge Mountains", x = 25.9, y = 47.3, level = 18, req = 14, step = 3, steps = 3 }
SGJ.QuestInfo[126] = { start = "Verner Osgood", zone = "Redridge Mountains", x = 25.9, y = 47.3, level = 25, req = 15, step = 4, steps = 4 }
SGJ.QuestInfo[140] = { start = "Old Jug", zone = "Westfall", x = 40.6, y = 17.0, level = 16, req = 10, step = 4, steps = 4 }
SGJ.QuestInfo[147] = { start = "Marshal Dughan", zone = "Elwynn Forest", x = 42.1, y = 65.9, level = 10, req = 7, step = 2, steps = 2 }
SGJ.QuestInfo[150] = { start = "Dockmaster Baren", zone = "Redridge Mountains", x = 22.6, y = 47.4, level = 20, req = 20 }
SGJ.QuestInfo[151] = { start = "Verna Furlbrow", zone = "Westfall", x = 59.9, y = 19.4, level = 14, req = 9 }
SGJ.QuestInfo[153] = { start = "Scout Galiaan", zone = "Westfall", x = 54.0, y = 53.0, level = 15, req = 10 }
SGJ.QuestInfo[166] = { start = "Gryan Stoutmantle", zone = "Westfall", x = 56.3, y = 47.5, level = 22, req = 14, step = 7, steps = 7 }
SGJ.QuestInfo[167] = { start = "Wilder Thistlenettle", zone = "Stormwind City", x = 70.3, y = 40.8, level = 20, req = 15 }
SGJ.QuestInfo[168] = { start = "Wilder Thistlenettle", zone = "Stormwind City", x = 70.3, y = 40.8, level = 18, req = 14 }
SGJ.QuestInfo[170] = { start = "Balir Frosthammer", zone = "Dun Morogh", x = 29.7, y = 71.3, level = 2, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[176] = { start = "Wanted Poster", zone = "Elwynn Forest", x = 24.5, y = 74.7, level = 11, req = 5 }
SGJ.QuestInfo[179] = { start = "Sten Stoutarm", zone = "Dun Morogh", x = 29.9, y = 71.2, level = 1, req = 1, step = 1, steps = 3 }
SGJ.QuestInfo[181] = { start = "Viktori Prism'Antras", zone = "Duskwood", x = 79.8, y = 48.0, level = 30, req = 20, step = 4, steps = 4 }
SGJ.QuestInfo[182] = { start = "Grelin Whitebeard", zone = "Dun Morogh", x = 25.1, y = 75.7, level = 4, req = 1, step = 1, steps = 6 }
SGJ.QuestInfo[183] = { start = "Talin Keeneye", zone = "Dun Morogh", x = 22.6, y = 71.4, level = 3, req = 1 }
SGJ.QuestInfo[188] = { start = "Ajeck Rouack", zone = "Stranglethorn Vale", x = 35.6, y = 10.6, level = 37, req = 28, step = 5, steps = 6 }
SGJ.QuestInfo[193] = { start = "Sir S. J. Erlgadin", zone = "Stranglethorn Vale", x = 35.6, y = 10.5, level = 40, req = 28, step = 5, steps = 6 }
SGJ.QuestInfo[197] = { start = "Hemet Nesingwary", zone = "Stranglethorn Vale", x = 35.7, y = 10.8, level = 43, req = 28, step = 5, steps = 6 }
SGJ.QuestInfo[202] = { start = "Lieutenant Doren", zone = "Stranglethorn Vale", x = 38.0, y = 3.0, level = 40, req = 30, step = 3, steps = 4 }
SGJ.QuestInfo[204] = { start = "Sergeant Yohwa", zone = "Stranglethorn Vale", x = 38.0, y = 3.3, level = 34, req = 30, step = 1, steps = 4 }
SGJ.QuestInfo[206] = { start = "Brother Nimetz", zone = "Stranglethorn Vale", x = 37.8, y = 3.6, level = 46, req = 30, step = 4, steps = 4 }
SGJ.QuestInfo[208] = { start = "Hemet Nesingwary", zone = "Stranglethorn Vale", x = 35.7, y = 10.8, level = 43, req = 28, step = 6, steps = 6 }
SGJ.QuestInfo[213] = { start = "Kebok", zone = "Stranglethorn Vale", x = 27.0, y = 77.1, level = 36, req = 31 }
SGJ.QuestInfo[214] = { start = "Scout Riell", zone = "Westfall", x = 56.7, y = 47.3, level = 17, req = 14, step = 7, steps = 7 }
SGJ.QuestInfo[217] = { start = "Captain Rugelfuss", zone = "Loch Modan", x = 23.2, y = 73.7, level = 17, req = 10, step = 4, steps = 4 }
SGJ.QuestInfo[218] = { start = "Grelin Whitebeard", zone = "Dun Morogh", x = 25.1, y = 75.7, level = 5, req = 1, step = 2, steps = 6 }
SGJ.QuestInfo[219] = { start = "Corporal Keeshan", zone = "Redridge Mountains", x = 23.3, y = 12.6, level = 25, req = 19 }
SGJ.QuestInfo[223] = { start = "Calor", zone = "Duskwood", x = 75.8, y = 47.6, level = 31, req = 23, step = 4, steps = 4 }
SGJ.QuestInfo[231] = { start = "Watcher Ladimore", zone = "Duskwood", x = 74.0, y = 47.8, level = 35, req = 28, step = 5, steps = 5 }
SGJ.QuestInfo[245] = { start = "Watcher Dodds", zone = "Duskwood", x = 45.1, y = 67.0, level = 21, req = 17 }
SGJ.QuestInfo[247] = { start = "Senani Thunderheart", zone = "Ashenvale", x = 73.8, y = 61.5, level = 30, req = 20, step = 4, steps = 4 }
SGJ.QuestInfo[249] = { start = "Old Lion Statue", zone = "Redridge Mountains", x = 79.4, y = 46.8, level = 27, req = 20, step = 3, steps = 3 }
SGJ.QuestInfo[253] = { start = "Lord Ello Ebonlocke", zone = "Duskwood", x = 71.9, y = 46.4, level = 30, req = 20, step = 15, steps = 16 }
SGJ.QuestInfo[256] = { start = "WANTED", zone = "Loch Modan", x = 37.3, y = 46.5, level = 22, req = 17 }
SGJ.QuestInfo[257] = { start = "Daryl the Youngling", zone = "Loch Modan", x = 83.5, y = 65.5, level = 16, req = 11, step = 1, steps = 4 }
SGJ.QuestInfo[258] = { start = "Daryl the Youngling", zone = "Loch Modan", x = 83.5, y = 65.5, level = 17, req = 11, step = 2, steps = 4 }
SGJ.QuestInfo[275] = { start = "Rethiel the Greenwarden", zone = "Wetlands", x = 56.4, y = 40.4, level = 26, req = 20, step = 4, steps = 4 }
SGJ.QuestInfo[283] = { start = "Explosive Charge", zone = "Loch Modan", x = 50.6, y = 14.3, level = 20, req = 16, step = 7, steps = 7 }
SGJ.QuestInfo[286] = { start = "Half-buried Barrel", zone = "Wetlands", x = 13.9, y = 34.8, level = 25, req = 20, step = 5, steps = 8 }
SGJ.QuestInfo[287] = { start = "Senir Whitebeard", zone = "Dun Morogh", x = 46.7, y = 53.8, level = 9, req = 7, step = 5, steps = 6 }
SGJ.QuestInfo[293] = { start = "Glorin Steelbrow", zone = "Wetlands", x = 10.6, y = 60.6, level = 30, req = 22, step = 5, steps = 5 }
SGJ.QuestInfo[296] = { start = "Ormer Ironbraid", zone = "Wetlands", x = 38.2, y = 50.9, level = 29, req = 22, step = 3, steps = 3 }
SGJ.QuestInfo[297] = { start = "Magmar Fellhew", zone = "Loch Modan", x = 64.9, y = 66.7, level = 18, req = 13, step = 2, steps = 2 }
SGJ.QuestInfo[299] = { start = "Prospector Whelgar", zone = "Wetlands", x = 38.8, y = 52.4, level = 27, req = 22, step = 1, steps = 4 }
SGJ.QuestInfo[304] = { start = "Longbraid the Grim", zone = "Wetlands", x = 49.8, y = 18.3, level = 34, req = 26 }
SGJ.QuestInfo[307] = { start = "Mountaineer Stormpike", zone = "Loch Modan", x = 24.8, y = 18.4, level = 15, req = 9 }
SGJ.QuestInfo[309] = { start = "Miran", zone = "Loch Modan", x = 52.2, y = 69.4, level = 15, req = 10, step = 6, steps = 6 }
SGJ.QuestInfo[312] = { start = "Tundra MacGrann", zone = "Dun Morogh", x = 34.6, y = 51.7, level = 12, req = 7 }
SGJ.QuestInfo[314] = { start = "Rudra Amberstill", zone = "Dun Morogh", x = 63.1, y = 49.8, level = 12, req = 6 }
SGJ.QuestInfo[315] = { start = "Rejold Barleybrew", zone = "Dun Morogh", x = 30.2, y = 45.7, level = 9, req = 5, step = 1, steps = 3 }
SGJ.QuestInfo[320] = { start = "Rejold Barleybrew", zone = "Dun Morogh", x = 30.2, y = 45.7, level = 8, req = 2, step = 4, steps = 4 }
SGJ.QuestInfo[328] = { start = "Bookie Herod's Records", zone = "Stranglethorn Vale", x = 43.7, y = 9.4, level = 37, req = 30, step = 3, steps = 6 }
SGJ.QuestInfo[331] = { start = "Corporal Sethman", zone = "Stranglethorn Vale", x = 37.7, y = 3.4, level = 37, req = 30, step = 6, steps = 6 }
SGJ.QuestInfo[338] = { start = "Barnil Stonepot", zone = "Stranglethorn Vale", x = 35.7, y = 10.5, level = 40, req = 30, step = 2, steps = 3 }
SGJ.QuestInfo[346] = { start = "Brother Paxton", zone = "Elwynn Forest", x = 49.6, y = 40.4, level = 24, req = 20, step = 5, steps = 5 }
SGJ.QuestInfo[348] = { start = "Fin Fizracket", zone = "Stranglethorn Vale", x = 27.6, y = 76.7, level = 45, req = 40, step = 1, steps = 2 }
SGJ.QuestInfo[358] = { start = "Magistrate Sevren", zone = "Tirisfal Glades", x = 61.3, y = 50.8, level = 8, req = 4, step = 1, steps = 6 }
SGJ.QuestInfo[364] = { start = "Shadow Priest Sarvis", zone = "Tirisfal Glades", x = 30.8, y = 66.2, level = 2, req = 1, step = 2, steps = 3 }
SGJ.QuestInfo[369] = { start = "Apothecary Johaan", zone = "Tirisfal Glades", x = 59.4, y = 52.4, level = 11, req = 6, step = 3, steps = 4 }
SGJ.QuestInfo[372] = { start = "Executor Zygand", zone = "Tirisfal Glades", x = 60.6, y = 51.8, level = 12, req = 5, step = 9, steps = 9 }
SGJ.QuestInfo[374] = { start = "Deathguard Burgess", zone = "Tirisfal Glades", x = 60.9, y = 52.0, level = 7, req = 5, step = 7, steps = 7 }
SGJ.QuestInfo[375] = { start = "Gretchen Dedmar", zone = "Tirisfal Glades", x = 61.9, y = 52.7, level = 8, req = 7 }
SGJ.QuestInfo[376] = { start = "Novice Elreth", zone = "Tirisfal Glades", x = 30.9, y = 66.1, level = 2, req = 2, step = 1, steps = 9 }
SGJ.QuestInfo[377] = { start = "Councilman Millstipe", zone = "Duskwood", x = 71.9, y = 47.8, level = 26, req = 22 }
SGJ.QuestInfo[378] = { start = "Motley Garmason", zone = "Wetlands", x = 49.7, y = 18.2, level = 27, req = 22, step = 2, steps = 2 }
SGJ.QuestInfo[380] = { start = "Executor Arren", zone = "Tirisfal Glades", x = 32.2, y = 66.0, level = 4, req = 2, step = 2, steps = 9 }
SGJ.QuestInfo[381] = { start = "Executor Arren", zone = "Tirisfal Glades", x = 32.2, y = 66.0, level = 4, req = 2, step = 3, steps = 9 }
SGJ.QuestInfo[382] = { start = "Executor Arren", zone = "Tirisfal Glades", x = 32.2, y = 66.0, level = 5, req = 2, step = 4, steps = 9 }
SGJ.QuestInfo[385] = { start = "Marek Ironheart", zone = "Loch Modan", x = 81.8, y = 61.7, level = 15, req = 10 }
SGJ.QuestInfo[386] = { start = "Guard Berton", zone = "Redridge Mountains", x = 21.2, y = 46.6, level = 25, req = 22 }
SGJ.QuestInfo[396] = { start = "Baros Alexston", zone = "Stormwind City", x = 57.7, y = 47.9, level = 31, req = 16, step = 12, steps = 12 }
SGJ.QuestInfo[397] = { start = "Zardeth of the Black Claw", zone = "Stormwind City", x = 40.1, y = 85.3, level = 30, req = 25, step = 3, steps = 3 }
SGJ.QuestInfo[398] = { start = "Wanted!", zone = "Tirisfal Glades", x = 60.7, y = 51.5, level = 10, req = 6 }
SGJ.QuestInfo[408] = { start = "Magistrate Sevren", zone = "Tirisfal Glades", x = 61.3, y = 50.8, level = 13, req = 7, step = 3, steps = 3 }
SGJ.QuestInfo[411] = { start = "Gunther Arcanus", zone = "Tirisfal Glades", x = 68.2, y = 41.9, level = 12, req = 5, step = 6, steps = 6 }
SGJ.QuestInfo[412] = { start = "Razzle Sprysprocket", zone = "Dun Morogh", x = 45.8, y = 49.4, level = 10, req = 7 }
SGJ.QuestInfo[416] = { start = "Mountaineer Kadrell", zone = "Loch Modan", x = 34.2, y = 47.8, level = 11, req = 10 }
SGJ.QuestInfo[417] = { start = "A Dwarven Corpse", zone = "Dun Morogh", x = 79.7, y = 36.2, level = 11, req = 8, step = 2, steps = 2 }
SGJ.QuestInfo[419] = { start = "Pilot Hammerfoot", zone = "Dun Morogh", x = 83.9, y = 39.2, level = 10, req = 8, step = 1, steps = 2 }
SGJ.QuestInfo[425] = { start = "Rane Yorick", zone = "Silverpine Forest", x = 53.5, y = 13.4, level = 12, req = 10, step = 4, steps = 4 }
SGJ.QuestInfo[426] = { start = "Deathguard Dillinger", zone = "Tirisfal Glades", x = 58.2, y = 51.4, level = 8, req = 6, step = 2, steps = 2 }
SGJ.QuestInfo[435] = { start = "Deathstalker Erland", zone = "Silverpine Forest", x = 56.2, y = 9.2, level = 11, req = 10, step = 1, steps = 5 }
SGJ.QuestInfo[437] = { start = "High Executor Hadrec", zone = "Silverpine Forest", x = 43.4, y = 40.9, level = 14, req = 10, step = 1, steps = 8 }
SGJ.QuestInfo[442] = { start = "High Executor Hadrec", zone = "Silverpine Forest", x = 43.4, y = 40.9, level = 24, req = 10, step = 8, steps = 8 }
SGJ.QuestInfo[451] = { start = "Apothecary Renferrel", zone = "Silverpine Forest", x = 42.8, y = 40.9, level = 18, req = 9, step = 3, steps = 3 }
SGJ.QuestInfo[452] = { start = "Deathstalker Faerleia", zone = "Silverpine Forest", x = 46.5, y = 74.4, level = 15, req = 12 }
SGJ.QuestInfo[456] = { start = "Conservator Ilthalaine", zone = "Teldrassil", x = 58.7, y = 44.3, level = 2, req = 1, step = 1, steps = 2 }
SGJ.QuestInfo[457] = { start = "Conservator Ilthalaine", zone = "Teldrassil", x = 58.7, y = 44.3, level = 3, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[459] = { start = "Tarindrella", zone = "Teldrassil", x = 57.8, y = 45.2, level = 3, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[466] = { start = "Pilot Stonegear", zone = "Dun Morogh", x = 49.6, y = 48.6, level = 22, req = 20, step = 2, steps = 2 }
SGJ.QuestInfo[471] = { start = "James Halloran", zone = "Wetlands", x = 8.5, y = 55.7, level = 26, req = 18, step = 3, steps = 3 }
SGJ.QuestInfo[474] = { start = "Dragonmaw Catapult", zone = "Wetlands", x = 47.5, y = 47.0, level = 32, req = 23, step = 4, steps = 4 }
SGJ.QuestInfo[480] = { start = "Shadow Priest Allister", zone = "Silverpine Forest", x = 44.0, y = 40.9, level = 22, req = 10, step = 6, steps = 6 }
SGJ.QuestInfo[483] = { start = "Athridas Bearmantle", zone = "Teldrassil", x = 56.0, y = 57.3, level = 9, req = 4, step = 3, steps = 4 }
SGJ.QuestInfo[486] = { start = "Athridas Bearmantle", zone = "Teldrassil", x = 56.0, y = 57.3, level = 12, req = 4, step = 4, steps = 4 }
SGJ.QuestInfo[491] = { start = "Dusty Shelf", zone = "Silverpine Forest", x = 65.4, y = 24.8, level = 18, req = 12, step = 3, steps = 3 }
SGJ.QuestInfo[498] = { start = "Krusk", zone = "Hillsbrad Foothills", x = 63.2, y = 20.7, level = 22, req = 17, step = 1, steps = 6 }
SGJ.QuestInfo[501] = { start = "Apothecary Lydon", zone = "Hillsbrad Foothills", x = 61.4, y = 19.1, level = 24, req = 21, step = 1, steps = 2 }
SGJ.QuestInfo[504] = { start = "Marshal Redpath", zone = "Hillsbrad Foothills", x = 49.5, y = 58.7, level = 40, req = 30, step = 2, steps = 2 }
SGJ.QuestInfo[505] = { start = "Magistrate Henry Maleb", zone = "Hillsbrad Foothills", x = 48.1, y = 59.1, level = 33, req = 26 }
SGJ.QuestInfo[508] = { start = "Elysa", zone = "Alterac Mountains", x = 39.3, y = 14.3, level = 40, req = 29, step = 6, steps = 6 }
SGJ.QuestInfo[515] = { start = "Master Apothecary Faranell", zone = "Undercity", x = 48.8, y = 69.3, level = 30, req = 24, step = 3, steps = 5 }
SGJ.QuestInfo[516] = { start = "Shadow Priest Allister", zone = "Silverpine Forest", x = 44.0, y = 40.9, level = 21, req = 16 }
SGJ.QuestInfo[521] = { start = "Melisara", zone = "Hillsbrad Foothills", x = 62.6, y = 20.6, level = 43, req = 34, step = 5, steps = 5 }
SGJ.QuestInfo[530] = { start = "Raleigh Andrean", zone = "Undercity", x = 62.0, y = 42.7, level = 20, req = 10, step = 6, steps = 6 }
SGJ.QuestInfo[546] = { start = "Deathguard Samsa", zone = "Hillsbrad Foothills", x = 62.1, y = 19.7, level = 25, req = 20, step = 2, steps = 2 }
SGJ.QuestInfo[547] = { start = "Deathguard Humbert", zone = "Hillsbrad Foothills", x = 62.8, y = 20.2, level = 30, req = 26 }
SGJ.QuestInfo[549] = { start = "WANTED", zone = "Hillsbrad Foothills", x = 62.6, y = 20.8, level = 22, req = 17 }
SGJ.QuestInfo[550] = { start = "High Executor Darthalia", zone = "Hillsbrad Foothills", x = 62.3, y = 20.5, level = 32, req = 19, step = 7, steps = 7 }
SGJ.QuestInfo[562] = { start = "Lieutenant Farren Orinelle", zone = "Hillsbrad Foothills", x = 51.5, y = 58.4, level = 32, req = 25, step = 5, steps = 6 }
SGJ.QuestInfo[564] = { start = "Darren Malvew", zone = "Hillsbrad Foothills", x = 52.4, y = 56.0, level = 34, req = 30 }
SGJ.QuestInfo[565] = { start = "Bartolo Ginsetti", zone = "Hillsbrad Foothills", x = 49.4, y = 55.5, level = 34, req = 29 }
SGJ.QuestInfo[566] = { start = "WANTED", zone = "Hillsbrad Foothills", x = 62.6, y = 20.8, level = 40, req = 35 }
SGJ.QuestInfo[567] = { start = "Dangerous!", zone = "Hillsbrad Foothills", x = 62.6, y = 19.7, level = 28, req = 19 }
SGJ.QuestInfo[569] = { start = "Commander Aggro'gosh", zone = "Stranglethorn Vale", x = 32.2, y = 28.9, level = 37, req = 33, step = 2, steps = 2 }
SGJ.QuestInfo[573] = { start = "Far Seer Mok'thardin", zone = "Stranglethorn Vale", x = 32.1, y = 29.2, level = 44, req = 33, step = 4, steps = 4 }
SGJ.QuestInfo[576] = { start = "Dizzy One-Eye", zone = "Stranglethorn Vale", x = 28.6, y = 75.9, level = 42, req = 37, step = 2, steps = 2 }
SGJ.QuestInfo[582] = { start = "Nimboya", zone = "Stranglethorn Vale", x = 32.2, y = 27.7, level = 37, req = 30, step = 2, steps = 9 }
SGJ.QuestInfo[592] = { start = "Kin'weelay", zone = "Stranglethorn Vale", x = 32.3, y = 27.7, level = 46, req = 30, step = 8, steps = 9 }
SGJ.QuestInfo[596] = { start = "Kin'weelay", zone = "Stranglethorn Vale", x = 32.3, y = 27.7, level = 37, req = 30, step = 1, steps = 2 }
SGJ.QuestInfo[598] = { start = "Kin'weelay", zone = "Stranglethorn Vale", x = 32.3, y = 27.7, level = 42, req = 30, step = 2, steps = 2 }
SGJ.QuestInfo[600] = { start = "Crank Fizzlebub", zone = "Stranglethorn Vale", x = 27.1, y = 77.2, level = 41, req = 30, step = 2, steps = 2 }
SGJ.QuestInfo[608] = { start = "Fleet Master Seahorn", zone = "Stranglethorn Vale", x = 27.2, y = 77.0, level = 45, req = 37, step = 5, steps = 5 }
SGJ.QuestInfo[611] = { start = "Catelyn the Blade", zone = "Stranglethorn Vale", x = 27.3, y = 77.5, level = 40, req = 32, step = 7, steps = 7 }
SGJ.QuestInfo[613] = { start = "\"Sea Wolf\" MacKinley", zone = "Stranglethorn Vale", x = 27.8, y = 77.1, level = 44, req = 30, step = 4, steps = 4 }
SGJ.QuestInfo[614] = { level = 47, req = 35 }
SGJ.QuestInfo[617] = { start = "Privateer Bloads", zone = "Stranglethorn Vale", x = 26.8, y = 76.4, level = 43, req = 38, step = 1, steps = 2 }
SGJ.QuestInfo[618] = { level = 50, req = 35, step = 3, steps = 4 }
SGJ.QuestInfo[621] = { start = "Crank Fizzlebub", zone = "Stranglethorn Vale", x = 27.1, y = 77.2, level = 44, req = 35, step = 1, steps = 5 }
SGJ.QuestInfo[622] = { start = "Krazek", zone = "Stranglethorn Vale", x = 26.9, y = 77.2, level = 37, req = 32, step = 3, steps = 3 }
SGJ.QuestInfo[628] = { start = "Drizzlik", zone = "Stranglethorn Vale", x = 28.3, y = 77.6, level = 38, req = 31, step = 3, steps = 3 }
SGJ.QuestInfo[630] = { start = "Princess Poobah", zone = "Stranglethorn Vale", x = 38.5, y = 80.6, level = 51, req = 45, step = 2, steps = 2 }
SGJ.QuestInfo[633] = { start = "Rhag Garmason", zone = "Wetlands", x = 49.9, y = 18.2, level = 31, req = 28, step = 3, steps = 4 }
SGJ.QuestInfo[646] = { start = "Trollbane's Tomb", zone = "Arathi Highlands", x = 28.9, y = 59.6, level = 42, req = 32, step = 8, steps = 8 }
SGJ.QuestInfo[648] = { start = "Homing Robot OOX-17/TN", zone = "Tanaris", x = 60.2, y = 64.7, level = 48, req = 43, step = 2, steps = 3 }
SGJ.QuestInfo[656] = { start = "Theldurin the Lost", zone = "Badlands", x = 51.4, y = 76.9, level = 50, req = 30, step = 7, steps = 7 }
SGJ.QuestInfo[661] = { start = "Quae", zone = "Arathi Highlands", x = 60.2, y = 53.8, level = 37, req = 30, step = 5, steps = 5 }
SGJ.QuestInfo[662] = { start = "First Mate Nilzlix", zone = "Arathi Highlands", x = 32.8, y = 81.5, level = 40, req = 35, step = 2, steps = 2 }
SGJ.QuestInfo[664] = { start = "Captain Steelgut", zone = "Arathi Highlands", x = 34.0, y = 80.8, level = 40, req = 35 }
SGJ.QuestInfo[666] = { start = "Doctor Draxlegauge", zone = "Arathi Highlands", x = 33.9, y = 80.4, level = 40, req = 35, step = 2, steps = 6 }
SGJ.QuestInfo[667] = { start = "Shakes O'Breen", zone = "Arathi Highlands", x = 32.3, y = 81.4, level = 44, req = 35, step = 6, steps = 6 }
SGJ.QuestInfo[673] = { start = "Tor'gan", zone = "Arathi Highlands", x = 74.7, y = 36.3, level = 40, req = 35, step = 2, steps = 2 }
SGJ.QuestInfo[679] = { start = "Drum Fel", zone = "Arathi Highlands", x = 74.2, y = 33.9, level = 40, req = 30, step = 4, steps = 4 }
SGJ.QuestInfo[680] = { start = "Korin Fel", zone = "Arathi Highlands", x = 74.0, y = 33.1, level = 40, req = 30, step = 4, steps = 4 }
SGJ.QuestInfo[682] = { start = "Captain Nials", zone = "Arathi Highlands", x = 45.8, y = 47.6, level = 37, req = 30, step = 2, steps = 2 }
SGJ.QuestInfo[684] = { start = "Wanted Board", zone = "Arathi Highlands", x = 46.0, y = 47.8, level = 39, req = 30 }
SGJ.QuestInfo[685] = { start = "Wanted Board", zone = "Arathi Highlands", x = 46.0, y = 47.8, level = 40, req = 30 }
SGJ.QuestInfo[697] = { start = "Skuerto", zone = "Arathi Highlands", x = 46.7, y = 47.0, level = 39, req = 30, step = 7, steps = 7 }
SGJ.QuestInfo[700] = { start = "Grand Mason Marblesten", zone = "Dun Morogh", x = 57.3, y = 35.2, level = 31, req = 25, step = 5, steps = 5 }
SGJ.QuestInfo[704] = { start = "Prospector Ironband", zone = "Loch Modan", x = 65.9, y = 65.6, level = 38, req = 30, step = 4, steps = 4 }
SGJ.QuestInfo[705] = { start = "Rigglefuzz", zone = "Badlands", x = 42.4, y = 52.9, level = 37, req = 30, step = 1, steps = 2 }
SGJ.QuestInfo[709] = { start = "Theldurin the Lost", zone = "Badlands", x = 51.4, y = 76.9, level = 40, req = 30, step = 1, steps = 4 }
SGJ.QuestInfo[716] = { start = "Lucien Tosselwrench", zone = "Badlands", x = 25.8, y = 44.2, level = 42, req = 35, step = 4, steps = 4 }
SGJ.QuestInfo[719] = { start = "Prospector Ryedol", zone = "Badlands", x = 53.4, y = 43.4, level = 35, req = 35 }
SGJ.QuestInfo[733] = { start = "Sigrun Ironhew", zone = "Badlands", x = 53.8, y = 43.3, level = 40, req = 35, step = 2, steps = 2 }
SGJ.QuestInfo[737] = { start = "Gerrig Bonegrip", zone = "Dun Morogh", x = 59.2, y = 22.0, level = 40, req = 30, step = 4, steps = 4 }
SGJ.QuestInfo[739] = { start = "Battered Dwarven Skeleton", zone = "Badlands", x = 50.9, y = 62.4, level = 42, req = 30, step = 3, steps = 4 }
SGJ.QuestInfo[741] = { start = "Archaeologist Hollee", zone = "Darkshore", x = 37.4, y = 41.8, level = 20, req = 15, step = 4, steps = 6 }
SGJ.QuestInfo[744] = { start = "Eyahn Eagletalon", zone = "Thunder Bluff", x = 37.8, y = 59.6, level = 11, req = 7 }
SGJ.QuestInfo[746] = { start = "Baine Bloodhoof", zone = "Mulgore", x = 46.7, y = 63.4, level = 8, req = 6 }
SGJ.QuestInfo[747] = { start = "Grull Hawkwind", zone = "Mulgore", x = 44.5, y = 77.5, level = 2, req = 1, step = 1, steps = 3 }
SGJ.QuestInfo[750] = { start = "Grull Hawkwind", zone = "Mulgore", x = 44.5, y = 77.5, level = 3, req = 1, step = 2, steps = 3 }
SGJ.QuestInfo[757] = { start = "Seer Graytongue", zone = "Mulgore", x = 42.5, y = 90.1, level = 4, req = 1, step = 4, steps = 11 }
SGJ.QuestInfo[758] = { start = "Mull Thunderhorn", zone = "Mulgore", x = 47.5, y = 63.6, level = 8, req = 4, step = 4, steps = 7 }
SGJ.QuestInfo[762] = { start = "Historian Karnik", zone = "Dun Morogh", x = 63.5, y = 23.0, level = 44, req = 35, step = 8, steps = 9 }
SGJ.QuestInfo[765] = { start = "Morin Cloudstalker", zone = "Mulgore", x = 54.8, y = 64.3, level = 12, req = 5, step = 3, steps = 3 }
SGJ.QuestInfo[766] = { start = "Maur Raincaller", zone = "Mulgore", x = 46.2, y = 60.8, level = 8, req = 5 }
SGJ.QuestInfo[768] = { start = "Veren Tallstrider", zone = "Thunder Bluff", x = 44.4, y = 44.7, level = 8, req = 4, step = 1, steps = 2 }
SGJ.QuestInfo[770] = { start = "an item: Demon Scarred Cloak", level = 12, req = 6 }
SGJ.QuestInfo[772] = { start = "Zarlman Two-Moons", zone = "Mulgore", x = 46.9, y = 61.2, level = 7, req = 3, step = 8, steps = 11 }
SGJ.QuestInfo[776] = { start = "Cairne Bloodhoof", zone = "Thunder Bluff", x = 60.3, y = 51.7, level = 14, req = 3, step = 11, steps = 11 }
SGJ.QuestInfo[778] = { start = "Lotwil Veriatus", zone = "Badlands", x = 25.9, y = 44.9, level = 45, req = 35, step = 6, steps = 6 }
SGJ.QuestInfo[780] = { start = "Grull Hawkwind", zone = "Mulgore", x = 44.5, y = 77.5, level = 4, req = 1, step = 3, steps = 3 }
SGJ.QuestInfo[781] = { start = "an item: Dirt-stained Map", zone = "Mulgore", x = 59.8, y = 82.2, level = 4, req = 1 }
SGJ.QuestInfo[786] = { start = "Lar Prowltusk", zone = "Durotar", x = 54.2, y = 73.3, level = 8, req = 5, step = 2, steps = 2 }
SGJ.QuestInfo[788] = { start = "Gornek", zone = "Durotar", x = 42.1, y = 68.3, level = 2, req = 1, step = 2, steps = 3 }
SGJ.QuestInfo[789] = { start = "Gornek", zone = "Durotar", x = 42.1, y = 68.3, level = 3, req = 1, step = 3, steps = 3 }
SGJ.QuestInfo[792] = { start = "Zureetha Fargaze", zone = "Durotar", x = 42.8, y = 69.1, level = 4, req = 2, step = 1, steps = 3 }
SGJ.QuestInfo[793] = { start = "Gorn", zone = "Badlands", x = 2.9, y = 45.6, level = 50, req = 40, step = 2, steps = 3 }
SGJ.QuestInfo[794] = { start = "Zureetha Fargaze", zone = "Durotar", x = 42.8, y = 69.1, level = 5, req = 1, step = 3, steps = 4 }
SGJ.QuestInfo[804] = { start = "Hana'zua", zone = "Durotar", x = 40.6, y = 62.6, level = 5, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[806] = { start = "Orgnil Soulscar", zone = "Durotar", x = 52.2, y = 43.2, level = 12, req = 4, step = 2, steps = 8 }
SGJ.QuestInfo[812] = { start = "Rhinag", zone = "Durotar", x = 41.5, y = 18.6, level = 9, req = 7, step = 1, steps = 2 }
SGJ.QuestInfo[816] = { start = "Misha Tor'kren", zone = "Durotar", x = 43.1, y = 30.2, level = 11, req = 8 }
SGJ.QuestInfo[824] = { start = "Mastok Wrilehiss", zone = "Ashenvale", x = 73.7, y = 60.0, level = 27, req = 23, step = 2, steps = 2 }
SGJ.QuestInfo[825] = { start = "Gar'Thok", zone = "Durotar", x = 51.9, y = 43.5, level = 8, req = 3, step = 2, steps = 2 }
SGJ.QuestInfo[826] = { start = "Master Gadrin", zone = "Durotar", x = 55.9, y = 74.7, level = 10, req = 4 }
SGJ.QuestInfo[827] = { start = "Margoz", zone = "Durotar", x = 56.4, y = 20.0, level = 12, req = 4, step = 4, steps = 8 }
SGJ.QuestInfo[835] = { start = "Rezlak", zone = "Durotar", x = 46.4, y = 22.9, level = 11, req = 7, step = 2, steps = 2 }
SGJ.QuestInfo[836] = { start = "Homing Robot OOX-09/HL", zone = "The Hinterlands", x = 49.4, y = 37.7, level = 48, req = 43, step = 2, steps = 3 }
SGJ.QuestInfo[849] = { start = "Gann Stonespire", zone = "The Barrens", x = 45.9, y = 77.0, level = 26, req = 17, step = 3, steps = 3 }
SGJ.QuestInfo[852] = { start = "Regthar Deathgate", zone = "The Barrens", x = 45.3, y = 28.4, level = 19, req = 11, step = 3, steps = 4 }
SGJ.QuestInfo[853] = { start = "Apothecary Helbrim", zone = "The Barrens", x = 51.4, y = 30.2, level = 15, req = 10, step = 2, steps = 2 }
SGJ.QuestInfo[855] = { start = "Regthar Deathgate", zone = "The Barrens", x = 45.3, y = 28.4, level = 14, req = 9 }
SGJ.QuestInfo[862] = { start = "Grub", zone = "The Barrens", x = 55.3, y = 31.8, level = 23, req = 15 }
SGJ.QuestInfo[863] = { start = "Wizzlecrank's Shredder", zone = "The Barrens", x = 56.5, y = 7.5, level = 18, req = 13, step = 2, steps = 2 }
SGJ.QuestInfo[864] = { start = "Chief Engineer Bilgewhizzle", zone = "Tanaris", x = 52.5, y = 28.5, level = 46, req = 38, step = 6, steps = 6 }
SGJ.QuestInfo[865] = { start = "Mebok Mizzyrix", zone = "The Barrens", x = 62.4, y = 37.6, level = 18, req = 13, step = 1, steps = 2 }
SGJ.QuestInfo[866] = { start = "Mebok Mizzyrix", zone = "The Barrens", x = 62.4, y = 37.6, level = 16, req = 9 }
SGJ.QuestInfo[868] = { start = "Korran", zone = "The Barrens", x = 51.1, y = 29.6, level = 22, req = 17 }
SGJ.QuestInfo[872] = { start = "Thork", zone = "The Barrens", x = 51.5, y = 30.9, level = 15, req = 9, step = 2, steps = 2 }
SGJ.QuestInfo[873] = { start = "Mahren Skyseer", zone = "The Barrens", x = 65.8, y = 43.9, level = 27, req = 10, step = 13, steps = 13 }
SGJ.QuestInfo[876] = { start = "Darsok Swiftdagger", zone = "The Barrens", x = 51.6, y = 30.9, level = 20, req = 12, step = 3, steps = 4 }
SGJ.QuestInfo[888] = { start = "Gazlowe", zone = "The Barrens", x = 62.7, y = 36.2, level = 16, req = 9, step = 4, steps = 4 }
SGJ.QuestInfo[891] = { start = "Captain Thalo'thas Brightsun", zone = "The Barrens", x = 62.3, y = 39.0, level = 20, req = 13 }
SGJ.QuestInfo[893] = { start = "Tatternack Steelforge", zone = "The Barrens", x = 45.1, y = 57.7, level = 24, req = 17, step = 1, steps = 2 }
SGJ.QuestInfo[898] = { start = "Gilthares Firebough", zone = "The Barrens", x = 62.0, y = 55.0, level = 20, req = 13 }
SGJ.QuestInfo[899] = { start = "Mankrik", zone = "The Barrens", x = 52.0, y = 31.6, level = 20, req = 14 }
SGJ.QuestInfo[902] = { start = "Control Console", zone = "The Barrens", x = 52.4, y = 11.6, level = 16, req = 10, step = 4, steps = 8 }
SGJ.QuestInfo[906] = { start = "Mangletooth", zone = "The Barrens", x = 44.5, y = 59.3, level = 25, req = 17, step = 4, steps = 4 }
SGJ.QuestInfo[909] = { level = 30, req = 25 }
SGJ.QuestInfo[913] = { start = "Jorn Skyseer", zone = "The Barrens", x = 44.9, y = 59.1, level = 20, req = 10, step = 11, steps = 13 }
SGJ.QuestInfo[914] = { start = "Nara Wildmane", zone = "Thunder Bluff", x = 75.6, y = 31.6, level = 22, req = 10, step = 7, steps = 7 }
SGJ.QuestInfo[916] = { start = "Gilshalan Windwalker", zone = "Teldrassil", x = 57.8, y = 41.7, level = 4, req = 3, step = 1, steps = 9 }
SGJ.QuestInfo[917] = { start = "Gilshalan Windwalker", zone = "Teldrassil", x = 57.8, y = 41.7, level = 5, req = 1, step = 2, steps = 9 }
SGJ.QuestInfo[919] = { start = "Denalan", zone = "Teldrassil", x = 60.9, y = 68.5, level = 7, req = 4 }
SGJ.QuestInfo[923] = { start = "Rellian Greenspyre", zone = "Darnassus", x = 38.2, y = 21.6, level = 9, req = 4, step = 4, steps = 6 }
SGJ.QuestInfo[924] = { start = "Ak'Zeloth", zone = "The Barrens", x = 62.3, y = 20.1, level = 14, req = 9, step = 7, steps = 8 }
SGJ.QuestInfo[932] = { start = "Tallonkai Swiftroot", zone = "Teldrassil", x = 55.6, y = 56.9, level = 8, req = 4, step = 1, steps = 2 }
SGJ.QuestInfo[935] = { start = "Corithras Moonrage", zone = "Teldrassil", x = 56.1, y = 61.7, level = 11, req = 1, step = 9, steps = 9 }
SGJ.QuestInfo[937] = { start = "Sentinel Arynia Cloudsbreak", zone = "Teldrassil", x = 38.3, y = 34.4, level = 11, req = 6, step = 1, steps = 5 }
SGJ.QuestInfo[938] = { start = "Mist", zone = "Teldrassil", x = 31.5, y = 31.6, level = 12, req = 7 }
SGJ.QuestInfo[940] = { start = "Sentinel Arynia Cloudsbreak", zone = "Teldrassil", x = 38.2, y = 34.4, level = 11, req = 6, step = 4, steps = 5 }
SGJ.QuestInfo[943] = { start = "Archaeologist Flagongut", zone = "Wetlands", x = 10.8, y = 60.4, level = 24, req = 15, step = 6, steps = 6 }
SGJ.QuestInfo[947] = { start = "Barithras Moonshade", zone = "Darkshore", x = 37.3, y = 43.6, level = 17, req = 12, step = 1, steps = 6 }
SGJ.QuestInfo[951] = { start = "Onu", zone = "Darkshore", x = 43.6, y = 76.3, level = 20, req = 12, step = 6, steps = 6 }
SGJ.QuestInfo[957] = { start = "Asterion", zone = "Darkshore", x = 44.2, y = 36.3, level = 13, req = 7, step = 4, steps = 4 }
SGJ.QuestInfo[958] = { start = "Thundris Windweaver", zone = "Darkshore", x = 37.4, y = 40.1, level = 12, req = 9 }
SGJ.QuestInfo[962] = { start = "Apothecary Zamah", zone = "Thunder Bluff", x = 22.8, y = 20.9, level = 18, req = 14 }
SGJ.QuestInfo[963] = { start = "Cerellean Whiteclaw", zone = "Darkshore", x = 35.7, y = 43.7, level = 16, req = 11 }
SGJ.QuestInfo[971] = { start = "Gerrig Bonegrip", zone = "Dun Morogh", x = 59.2, y = 22.0, level = 23, req = 10 }
SGJ.QuestInfo[973] = { start = "Delgren the Purifier", zone = "Ashenvale", x = 26.2, y = 38.7, level = 24, req = 13, step = 5, steps = 9 }
SGJ.QuestInfo[976] = { start = "Feero Ironhand", zone = "Ashenvale", x = 26.2, y = 38.9, level = 24, req = 19, step = 6, steps = 6 }
SGJ.QuestInfo[981] = { start = "Balthule Shadowstrike", zone = "Darkshore", x = 55.0, y = 24.9, level = 31, req = 13, step = 9, steps = 9 }
SGJ.QuestInfo[982] = { start = "Gorbold Steelhand", zone = "Darkshore", x = 38.1, y = 41.2, level = 17, req = 13, step = 2, steps = 2 }
SGJ.QuestInfo[994] = { start = "Volcor", zone = "Darkshore", x = 45.0, y = 85.3, level = 22, req = 10, step = 5, steps = 6 }
SGJ.QuestInfo[995] = { start = "Volcor", zone = "Darkshore", x = 45.0, y = 85.3, level = 20, req = 10, step = 5, steps = 6 }
SGJ.QuestInfo[1009] = { start = "Talen", zone = "Ashenvale", x = 14.8, y = 31.3, level = 25, req = 20, step = 2, steps = 2 }
SGJ.QuestInfo[1012] = { start = "Kayneth Stillwind", zone = "Ashenvale", x = 85.2, y = 44.7, level = 32, req = 24, step = 3, steps = 3 }
SGJ.QuestInfo[1013] = { start = "Keeper Bel'dugur", zone = "Undercity", x = 53.7, y = 54.5, level = 26, req = 16 }
SGJ.QuestInfo[1014] = { start = "Dalar Dawnweaver", zone = "Silverpine Forest", x = 44.2, y = 39.8, level = 27, req = 18 }
SGJ.QuestInfo[1031] = { start = "Anilia", zone = "Ashenvale", x = 78.3, y = 44.8, level = 32, req = 26, step = 2, steps = 3 }
SGJ.QuestInfo[1035] = { start = "Pelturas Whitemoon", zone = "Ashenvale", x = 37.4, y = 51.8, level = 30, req = 20, step = 5, steps = 5 }
SGJ.QuestInfo[1044] = { start = "Jonathan Carevin", zone = "Duskwood", x = 75.3, y = 49.0, level = 30, req = 25, step = 9, steps = 9 }
SGJ.QuestInfo[1046] = { start = "Krolg", zone = "Ashenvale", x = 50.8, y = 75.1, level = 30, req = 18, step = 11, steps = 11 }
SGJ.QuestInfo[1048] = { start = "Varimathras", zone = "Undercity", x = 56.3, y = 92.2, level = 42, req = 33 }
SGJ.QuestInfo[1049] = { start = "Sage Truthseeker", zone = "Thunder Bluff", x = 34.4, y = 46.9, level = 38, req = 28 }
SGJ.QuestInfo[1050] = { start = "Librarian Mae Paledust", zone = "Dun Morogh", x = 63.1, y = 23.1, level = 38, req = 28 }
SGJ.QuestInfo[1051] = { start = "Vorrel Sengutz", zone = "Scarlet Monastery", level = 33, req = 25 }
SGJ.QuestInfo[1053] = { start = "Raleigh the Devout", zone = "Hillsbrad Foothills", x = 51.5, y = 58.4, level = 40, req = 34, step = 4, steps = 4 }
SGJ.QuestInfo[1058] = { start = "Witch Doctor Jin'Zil", zone = "Stonetalon Mountains", x = 74.5, y = 97.9, level = 26, req = 20 }
SGJ.QuestInfo[1059] = { start = "Keeper Albagorm", zone = "Stonetalon Mountains", x = 37.1, y = 8.1, level = 27, req = 20, step = 3, steps = 3 }
SGJ.QuestInfo[1078] = { start = "Collin Mauren", zone = "Stormwind City", x = 53.0, y = 86.6, level = 26, req = 17 }
SGJ.QuestInfo[1081] = { start = "Sentinel Thenysil", zone = "Ashenvale", x = 34.9, y = 49.8, level = 28, req = 17, step = 11, steps = 11 }
SGJ.QuestInfo[1089] = { start = "Braelyn Firehand", zone = "Stonetalon Mountains", x = 45.9, y = 60.4, level = 29, req = 20, step = 3, steps = 3 }
SGJ.QuestInfo[1092] = { start = "Piznik", zone = "Stonetalon Mountains", x = 71.9, y = 60.0, level = 22, req = 17, step = 2, steps = 2 }
SGJ.QuestInfo[1096] = { start = "Ziz Fizziks", zone = "Stonetalon Mountains", x = 59.0, y = 62.6, level = 27, req = 16, step = 5, steps = 5 }
SGJ.QuestInfo[1098] = { start = "High Executor Hadrec", zone = "Silverpine Forest", x = 43.4, y = 40.9, level = 25, req = 18 }
SGJ.QuestInfo[1101] = { start = "Falfindel Waywarder", zone = "Feralas", x = 89.6, y = 46.6, level = 34, req = 29, step = 2, steps = 2 }
SGJ.QuestInfo[1102] = { start = "Auld Stonespire", zone = "Thunder Bluff", x = 36.0, y = 59.9, level = 34, req = 29 }
SGJ.QuestInfo[1135] = { start = "Fiora Longears", zone = "Dustwallow Marsh", x = 66.5, y = 45.1, level = 30, req = 25 }
SGJ.QuestInfo[1136] = { start = "Melor Stonehoof", zone = "Thunder Bluff", x = 61.5, y = 80.9, level = 37, req = 26, step = 3, steps = 3 }
SGJ.QuestInfo[1137] = { start = "Martek the Exiled", zone = "Badlands", x = 42.2, y = 52.7, level = 38, req = 28, step = 3, steps = 6 }
SGJ.QuestInfo[1138] = { start = "Gubber Blump", zone = "Darkshore", x = 36.1, y = 44.9, level = 17, req = 15 }
SGJ.QuestInfo[1139] = { start = "Advisor Belgrum", zone = "Dun Morogh", x = 63.5, y = 22.6, level = 45, req = 35, step = 9, steps = 9 }
SGJ.QuestInfo[1141] = { start = "Gubber Blump", zone = "Darkshore", x = 36.1, y = 44.9, level = 14, req = 10 }
SGJ.QuestInfo[1142] = { start = "Heralath Fallowbrook", zone = "Razorfen Kraul", level = 30, req = 25 }
SGJ.QuestInfo[1144] = { start = "Willix the Importer", zone = "Razorfen Kraul", level = 30, req = 22 }
SGJ.QuestInfo[1153] = { start = "Tatternack Steelforge", zone = "The Barrens", x = 45.1, y = 57.7, level = 29, req = 25, step = 2, steps = 2 }
SGJ.QuestInfo[1164] = { start = "Genavie Callow", zone = "Undercity", x = 63.8, y = 49.5, level = 36, req = 27 }
SGJ.QuestInfo[1166] = { start = "Overlord Mok'Morokk", zone = "Dustwallow Marsh", x = 36.3, y = 31.4, level = 43, req = 38 }
SGJ.QuestInfo[1168] = { start = "Tharg", zone = "Dustwallow Marsh", x = 37.4, y = 31.4, level = 43, req = 38 }
SGJ.QuestInfo[1169] = { start = "Draz'Zilb", zone = "Dustwallow Marsh", x = 37.2, y = 33.1, level = 43, req = 38, step = 1, steps = 5 }
SGJ.QuestInfo[1172] = { start = "Draz'Zilb", zone = "Dustwallow Marsh", x = 37.2, y = 33.1, level = 45, req = 38, step = 4, steps = 5 }
SGJ.QuestInfo[1173] = { start = "Overlord Mok'Morokk", zone = "Dustwallow Marsh", x = 36.3, y = 31.4, level = 45, req = 38, step = 5, steps = 5 }
SGJ.QuestInfo[1177] = { start = "Mudcrush Durtfeet", zone = "Dustwallow Marsh", x = 35.2, y = 38.3, level = 36, req = 32 }
SGJ.QuestInfo[1184] = { start = "Korran", zone = "The Barrens", x = 51.1, y = 29.6, level = 35, req = 28, step = 2, steps = 2 }
SGJ.QuestInfo[1189] = { start = "Shreev", zone = "Tanaris", x = 51.0, y = 27.2, level = 41, req = 29, step = 10, steps = 10 }
SGJ.QuestInfo[1197] = { start = "Rau Cliffrunner", zone = "Thousand Needles", x = 46.1, y = 51.7, level = 29, req = 20, step = 3, steps = 3 }
SGJ.QuestInfo[1199] = { start = "Argent Guard Manados", zone = "Darnassus", x = 55.2, y = 24.0, level = 25, req = 20 }
SGJ.QuestInfo[1200] = { start = "Argent Guard Thaelrid", level = 27, req = 18, step = 2, steps = 2 }
SGJ.QuestInfo[1203] = { start = "\"Swamp Eye\" Jarl", zone = "Dustwallow Marsh", x = 55.4, y = 26.3, level = 35, req = 30, step = 3, steps = 3 }
SGJ.QuestInfo[1258] = { start = "Morgan Stern", zone = "Dustwallow Marsh", x = 66.3, y = 45.5, level = 40, req = 33, step = 3, steps = 4 }
SGJ.QuestInfo[1267] = { start = "Archmage Tervosh", zone = "Dustwallow Marsh", x = 66.4, y = 49.3, level = 38, req = 28, step = 17, steps = 17 }
SGJ.QuestInfo[1273] = { start = "Ogron", zone = "Dustwallow Marsh", x = 41.0, y = 36.7, level = 37, req = 30, step = 2, steps = 2 }
SGJ.QuestInfo[1275] = { start = "Gershala Nightwhisper", zone = "Darkshore", x = 38.3, y = 43.0, level = 24, req = 18, step = 2, steps = 2 }
SGJ.QuestInfo[1318] = { level = 60, req = 56 }
SGJ.QuestInfo[1358] = { start = "Apothecary Zinge", zone = "Undercity", x = 50.1, y = 68.0, level = 15, req = 10, step = 5, steps = 5 }
SGJ.QuestInfo[1364] = { start = "Acolyte Dellis", zone = "Stormwind City", x = 51.4, y = 73.8, level = 41, req = 37, step = 2, steps = 2 }
SGJ.QuestInfo[1366] = { start = "Felgur Twocuts", zone = "Desolace", x = 56.2, y = 59.6, level = 31, req = 30, step = 2, steps = 2 }
SGJ.QuestInfo[1370] = { start = "Uthek the Wise", zone = "Desolace", x = 36.2, y = 79.2, level = 35, req = 30, step = 3, steps = 6 }
SGJ.QuestInfo[1380] = { start = "Uthek the Wise", zone = "Desolace", x = 36.2, y = 79.2, level = 42, req = 30, step = 6, steps = 6 }
SGJ.QuestInfo[1381] = { start = "Warug", zone = "Desolace", x = 75.0, y = 68.2, level = 42, req = 30, step = 6, steps = 6 }
SGJ.QuestInfo[1383] = { start = "Apothecary Faustin", zone = "Duskwood", x = 87.5, y = 35.2, level = 42, req = 37, step = 2, steps = 4 }
SGJ.QuestInfo[1387] = { start = "Corporal Melkins", zone = "Desolace", x = 66.7, y = 10.9, level = 31, req = 30 }
SGJ.QuestInfo[1393] = { start = "Galen Goodward", zone = "Swamp of Sorrows", x = 65.5, y = 18.2, level = 38, req = 30 }
SGJ.QuestInfo[1394] = { start = "Parqual Fintallas", zone = "Undercity", x = 57.8, y = 65.4, level = 36, req = 25, step = 10, steps = 10 }
SGJ.QuestInfo[1427] = { start = "Katar", zone = "Swamp of Sorrows", x = 83.8, y = 80.4, level = 43, req = 35, step = 5, steps = 6 }
SGJ.QuestInfo[1430] = { start = "Dar", zone = "Swamp of Sorrows", x = 44.7, y = 57.2, level = 44, req = 35 }
SGJ.QuestInfo[1436] = { start = "Takata Steelblade", zone = "Desolace", x = 52.6, y = 54.4, level = 33, req = 30, step = 5, steps = 5 }
SGJ.QuestInfo[1440] = { start = "Dalinda Malem", zone = "Desolace", x = 54.9, y = 26.1, level = 33, req = 30, step = 5, steps = 5 }
SGJ.QuestInfo[1446] = { start = "Atal'ai Exile", zone = "The Hinterlands", x = 33.8, y = 75.2, level = 53, req = 38 }
SGJ.QuestInfo[1457] = { start = "Kreldig Ungor", zone = "Desolace", x = 66.2, y = 9.6, level = 39, req = 30, step = 5, steps = 5 }
SGJ.QuestInfo[1467] = { start = "Kreldig Ungor", zone = "Desolace", x = 66.2, y = 9.6, level = 40, req = 30, step = 5, steps = 5 }
SGJ.QuestInfo[1475] = { start = "Brohann Caskbelly", zone = "Stormwind City", x = 69.5, y = 40.4, level = 50, req = 38, step = 7, steps = 7 }
SGJ.QuestInfo[1486] = { start = "Nalpak", zone = "The Barrens", x = 46.0, y = 35.7, level = 17, req = 13 }
SGJ.QuestInfo[1487] = { start = "Ebru", zone = "The Barrens", x = 46.0, y = 35.7, level = 21, req = 15 }
SGJ.QuestInfo[1488] = { start = "Takata Steelblade", zone = "Desolace", x = 52.6, y = 54.4, level = 40, req = 25, step = 5, steps = 5 }
SGJ.QuestInfo[1499] = { start = "Ruzan", zone = "Durotar", x = 42.6, y = 69.0, level = 4, req = 1, step = 2, steps = 4 }
SGJ.QuestInfo[1503] = { start = "Thun'grim Firegaze", zone = "The Barrens", x = 57.2, y = 30.3, level = 10, req = 10, step = 4, steps = 4 }
SGJ.QuestInfo[1526] = { start = "Telf Joolam", zone = "Durotar", x = 38.6, y = 59.0, level = 13, req = 10, step = 4, steps = 5 }
SGJ.QuestInfo[1560] = { start = "Tooga", zone = "Tanaris", x = 31.8, y = 74.1, level = 50, req = 40 }
SGJ.QuestInfo[1652] = { start = "Daphne Stilwell", zone = "Westfall", x = 41.7, y = 89.2, level = 25, req = 20, step = 4, steps = 7 }
SGJ.QuestInfo[1667] = { start = "Marshal Haggard", zone = "Elwynn Forest", x = 84.6, y = 69.4, level = 10, req = 10, step = 6, steps = 6 }
SGJ.QuestInfo[1682] = { start = "Tormus Deepforge", zone = "Dun Morogh", x = 58.9, y = 27.9, level = 10, req = 10, step = 5, steps = 5 }
SGJ.QuestInfo[1693] = { start = "Mathiel", zone = "Darnassus", x = 59.5, y = 45.4, level = 10, req = 10, step = 5, steps = 5 }
SGJ.QuestInfo[1702] = { start = "Yorus Barleybrew", zone = "Redridge Mountains", x = 21.5, y = 44.7, level = 22, req = 20, step = 3, steps = 7 }
SGJ.QuestInfo[1706] = { start = "Grimand Elmore", zone = "Stormwind City", x = 59.7, y = 33.8, level = 30, req = 20, step = 7, steps = 7 }
SGJ.QuestInfo[1709] = { start = "Klockmort Spannerspan", zone = "Dun Morogh", x = 62.0, y = 28.5, level = 30, req = 20, step = 7, steps = 7 }
SGJ.QuestInfo[1711] = { start = "Mathiel", zone = "Darnassus", x = 59.5, y = 45.4, level = 30, req = 20, step = 7, steps = 7 }
SGJ.QuestInfo[1740] = { start = "Doan Karhan", zone = "The Barrens", x = 49.3, y = 57.2, level = 25, req = 20 }
SGJ.QuestInfo[1782] = { start = "Furen Longbeard", zone = "Stormwind City", x = 64.6, y = 37.2, level = 28, req = 20, step = 5, steps = 5 }
SGJ.QuestInfo[1792] = { start = "Bath'rah the Windwatcher", zone = "Alterac Mountains", x = 80.5, y = 66.9, level = 40, req = 30, step = 6, steps = 6 }
SGJ.QuestInfo[1806] = { start = "Jordan Stilwell", zone = "Dun Morogh", x = 52.5, y = 36.9, level = 22, req = 20, step = 7, steps = 7 }
SGJ.QuestInfo[1822] = { start = "Coleman Farthing", zone = "Tirisfal Glades", x = 61.7, y = 52.3, level = 11, req = 10, step = 5, steps = 5 }
SGJ.QuestInfo[1824] = { start = "Ruga Ragetotem", zone = "The Barrens", x = 44.7, y = 59.4, level = 20, req = 20, step = 2, steps = 7 }
SGJ.QuestInfo[1843] = { start = "Ula'elek", zone = "Durotar", x = 56.3, y = 74.3, level = 30, req = 20, step = 7, steps = 7 }
SGJ.QuestInfo[1845] = { start = "Orm Stonehoof", zone = "Thunder Bluff", x = 39.0, y = 56.0, level = 30, req = 20, step = 7, steps = 7 }
SGJ.QuestInfo[1847] = { start = "Velora Nitely", zone = "Undercity", x = 62.1, y = 39.1, level = 30, req = 20, step = 7, steps = 7 }
SGJ.QuestInfo[1848] = { start = "Thun'grim Firegaze", zone = "The Barrens", x = 57.2, y = 30.3, level = 30, req = 20, step = 5, steps = 5 }
SGJ.QuestInfo[1880] = { start = "Bink", zone = "Dun Morogh", x = 55.5, y = 22.4, level = 10, req = 10, step = 2, steps = 2 }
SGJ.QuestInfo[1884] = { start = "Un'Thuwa", zone = "Durotar", x = 56.3, y = 75.1, level = 10, req = 10, step = 2, steps = 2 }
SGJ.QuestInfo[1941] = { start = "Wynne Larson", zone = "Stormwind City", x = 51.8, y = 83.5, level = 15, req = 15, step = 4, steps = 4 }
SGJ.QuestInfo[1942] = { start = "Wynne Larson", zone = "Stormwind City", x = 51.8, y = 83.5, level = 26, req = 26, step = 4, steps = 4 }
SGJ.QuestInfo[1946] = { start = "Kil'hala", zone = "The Barrens", x = 52.2, y = 31.7, level = 26, req = 26, step = 4, steps = 4 }
SGJ.QuestInfo[1952] = { start = "Tabetha", zone = "Dustwallow Marsh", x = 46.1, y = 57.1, level = 40, req = 30, step = 5, steps = 5 }
SGJ.QuestInfo[1958] = { start = "Tabetha", zone = "Dustwallow Marsh", x = 46.1, y = 57.1, level = 40, req = 35, step = 6, steps = 6 }
SGJ.QuestInfo[1962] = { start = "Josef Gregorian", zone = "Undercity", x = 70.8, y = 30.7, level = 15, req = 15, step = 4, steps = 4 }
SGJ.QuestInfo[2038] = { start = "Bingles Blastenheimer", zone = "Loch Modan", x = 63.6, y = 47.9, level = 15, req = 12, step = 2, steps = 2 }
SGJ.QuestInfo[2040] = { start = "Shoni the Shilent", zone = "Stormwind City", x = 62.6, y = 34.1, level = 20, req = 15, step = 2, steps = 2 }
SGJ.QuestInfo[2139] = { start = "Tharnariun Treetender", zone = "Darkshore", x = 38.8, y = 43.4, level = 18, req = 10, step = 3, steps = 3 }
SGJ.QuestInfo[2240] = { start = "Baelog", level = 40, req = 35, step = 2, steps = 2 }
SGJ.QuestInfo[2242] = { start = "Syurna", zone = "Darnassus", x = 37.0, y = 21.9, level = 10, req = 10, step = 2, steps = 2 }
SGJ.QuestInfo[2341] = { start = "Dran Droffers", zone = "Orgrimmar", x = 59.6, y = 36.5, level = 44, req = 37, step = 7, steps = 7 }
SGJ.QuestInfo[2361] = { start = "Talvash del Kissel", zone = "Dun Morogh", x = 56.9, y = 21.7, level = 44, req = 37, step = 6, steps = 6 }
SGJ.QuestInfo[2418] = { start = "Rigglefuzz", zone = "Badlands", x = 42.4, y = 52.9, level = 36, req = 30 }
SGJ.QuestInfo[2499] = { start = "Denalan", zone = "Teldrassil", x = 60.9, y = 68.5, level = 9, req = 4, step = 6, steps = 6 }
SGJ.QuestInfo[2520] = { start = "Priestess A'moora", zone = "Darnassus", x = 36.7, y = 85.9, level = 12, req = 5, step = 4, steps = 4 }
SGJ.QuestInfo[2561] = { start = "Oben Rageclaw", zone = "Teldrassil", x = 44.9, y = 61.6, level = 10, req = 3, step = 2, steps = 2 }
SGJ.QuestInfo[2701] = { start = "Corporal Thund Splithoof", level = 57, req = 45, step = 8, steps = 22 }
SGJ.QuestInfo[2765] = { start = "Galvan the Ancient", zone = "Stranglethorn Vale", x = 50.6, y = 20.5, level = 45, req = 40, step = 5, steps = 5 }
SGJ.QuestInfo[2767] = { start = "Homing Robot OOX-22/FE", zone = "Feralas", x = 53.4, y = 55.7, level = 45, req = 40, step = 2, steps = 3 }
SGJ.QuestInfo[2768] = { start = "Chief Engineer Bilgewhizzle", zone = "Tanaris", x = 52.5, y = 28.5, level = 47, req = 40 }
SGJ.QuestInfo[2770] = { start = "Wizzle Brassbolts", zone = "Thousand Needles", x = 78.1, y = 77.1, level = 50, req = 40, step = 2, steps = 2 }
SGJ.QuestInfo[2821] = { start = "Pratt McGrubben", zone = "Feralas", x = 30.6, y = 42.7, level = 46, req = 40, step = 1, steps = 2 }
SGJ.QuestInfo[2822] = { start = "Jangdor Swiftstrider", zone = "Feralas", x = 74.4, y = 42.9, level = 46, req = 40, step = 1, steps = 2 }
SGJ.QuestInfo[2841] = { start = "Nogg", zone = "Orgrimmar", x = 76.0, y = 25.4, level = 35, req = 25, step = 1, steps = 3 }
SGJ.QuestInfo[2845] = { start = "Shay Leafrunner", zone = "Feralas", x = 38.2, y = 10.3, level = 49, req = 44, step = 2, steps = 2 }
SGJ.QuestInfo[2846] = { start = "Tabetha", zone = "Dustwallow Marsh", x = 46.1, y = 57.1, level = 46, req = 40, step = 2, steps = 2 }
SGJ.QuestInfo[2871] = { start = "Latronicus Moonspear", zone = "Feralas", x = 30.4, y = 46.2, level = 45, req = 40, step = 6, steps = 6 }
SGJ.QuestInfo[2874] = { start = "Stoley", zone = "Tanaris", x = 67.1, y = 24.0, level = 45, req = 40, step = 3, steps = 3 }
SGJ.QuestInfo[2903] = { start = "Woodpaw Battle Map", zone = "Feralas", x = 71.6, y = 55.9, level = 43, req = 39, step = 4, steps = 6 }
SGJ.QuestInfo[2904] = { start = "Kernobee", level = 30, req = 20 }
SGJ.QuestInfo[2928] = { start = "Shoni the Shilent", zone = "Stormwind City", x = 62.6, y = 34.1, level = 30, req = 20 }
SGJ.QuestInfo[2930] = { start = "Master Mechanic Castpipe", zone = "Dun Morogh", x = 62.3, y = 28.8, level = 30, req = 25, step = 2, steps = 2 }
SGJ.QuestInfo[2938] = { start = "Apothecary Lydon", zone = "Hillsbrad Foothills", x = 61.4, y = 19.1, level = 55, req = 40, step = 6, steps = 6 }
SGJ.QuestInfo[2942] = { start = "Equinex Monolith", zone = "Feralas", x = 38.8, y = 13.2, level = 50, req = 42, step = 7, steps = 7 }
SGJ.QuestInfo[2948] = { start = "Talvash del Kissel", zone = "Dun Morogh", x = 56.9, y = 21.7, level = 35, req = 28, step = 3, steps = 3 }
SGJ.QuestInfo[2950] = { start = "Nogg", zone = "Orgrimmar", x = 76.0, y = 25.4, level = 35, req = 28, step = 3, steps = 3 }
SGJ.QuestInfo[2972] = { start = "Jer'kai Moonweaver", zone = "Feralas", x = 65.9, y = 45.6, level = 47, req = 38, step = 3, steps = 8 }
SGJ.QuestInfo[2976] = { start = "Krueg Skullsplitter", zone = "Feralas", x = 75.9, y = 42.7, level = 45, req = 37, step = 3, steps = 3 }
SGJ.QuestInfo[2987] = { start = "Orwin Gizzmick", zone = "Feralas", x = 75.7, y = 44.3, level = 43, req = 38 }
SGJ.QuestInfo[2994] = { start = "Gryphon Master Talonaxe", zone = "The Hinterlands", x = 9.8, y = 44.5, level = 51, req = 40, step = 7, steps = 7 }
SGJ.QuestInfo[3062] = { start = "Talo Thornhoof", zone = "Feralas", x = 76.2, y = 43.8, level = 50, req = 45 }
SGJ.QuestInfo[3129] = { start = "Witch Doctor Uzer'i", zone = "Feralas", x = 74.4, y = 43.4, level = 50, req = 40, step = 8, steps = 8 }
SGJ.QuestInfo[3161] = { start = "Marvon Rivetseeker", zone = "Tanaris", x = 52.7, y = 45.9, level = 48, req = 43 }
SGJ.QuestInfo[3281] = { start = "Gazrog", zone = "The Barrens", x = 51.9, y = 30.3, level = 18, req = 9, step = 2, steps = 2 }
SGJ.QuestInfo[3301] = { start = "Tonga Runetotem", zone = "The Barrens", x = 52.3, y = 31.9, level = 15, req = 10, step = 5, steps = 5 }
SGJ.QuestInfo[3321] = { start = "Trenton Lighthammer", zone = "Tanaris", x = 51.4, y = 28.8, level = 50, req = 40, step = 1, steps = 2 }
SGJ.QuestInfo[3341] = { start = "Andrew Brownell", zone = "Undercity", x = 74.0, y = 33.3, level = 42, req = 37 }
SGJ.QuestInfo[3369] = { start = "Falla Sagewind", zone = "The Barrens", x = 48.2, y = 32.8, level = 25, req = 10, step = 2, steps = 2 }
SGJ.QuestInfo[3373] = { start = "an item: Essence of Eranikus", level = 55, req = 48, step = 1, steps = 3 }
SGJ.QuestInfo[3376] = { start = "Brave Windfeather", zone = "Mulgore", x = 44.2, y = 77.0, level = 5, req = 3 }
SGJ.QuestInfo[3378] = { start = "Zamael Lunthistle", zone = "Searing Gorge", x = 29.6, y = 26.3, level = 50, req = 40, step = 2, steps = 2 }
SGJ.QuestInfo[3379] = { start = "Nilith Lokrav", zone = "Searing Gorge", x = 41.0, y = 74.9, level = 50, req = 40, step = 1, steps = 3 }
SGJ.QuestInfo[3385] = { start = "Nilith Lokrav", zone = "Searing Gorge", x = 41.0, y = 74.9, level = 50, req = 40, step = 2, steps = 3 }
SGJ.QuestInfo[3454] = { start = "Kalaran Windblade", zone = "Searing Gorge", x = 39.1, y = 39.0, level = 50, req = 40, step = 6, steps = 11 }
SGJ.QuestInfo[3461] = { start = "Pilot Xiggs Fuselighter", level = 52, req = 45, step = 3, steps = 3 }
SGJ.QuestInfo[3463] = { start = "Squire Maltrake", zone = "Searing Gorge", x = 39.2, y = 39.0, level = 52, req = 40, step = 8, steps = 11 }
SGJ.QuestInfo[3507] = { start = "Ag'tor Bloodfist", zone = "Azshara", x = 22.3, y = 51.5, level = 56, req = 44, step = 4, steps = 4 }
SGJ.QuestInfo[3514] = { start = "Kadrak", zone = "The Barrens", x = 48.1, y = 5.4, level = 29, req = 15, step = 2, steps = 2 }
SGJ.QuestInfo[3522] = { start = "Dirania Silvershine", zone = "Teldrassil", x = 60.9, y = 42.0, level = 4, req = 2, step = 4, steps = 4 }
SGJ.QuestInfo[3525] = { start = "Belnistrasz", zone = "Razorfen Downs", level = 37, req = 32, step = 2, steps = 2 }
SGJ.QuestInfo[3528] = { start = "Yeh'kinya", zone = "Tanaris", x = 67.0, y = 22.4, level = 53, req = 40, step = 4, steps = 8 }
SGJ.QuestInfo[3566] = { start = "Dying Archaeologist", zone = "Searing Gorge", x = 41.1, y = 25.6, level = 52, req = 40, step = 5, steps = 5 }
SGJ.QuestInfo[3625] = { start = "Galvan the Ancient", zone = "Stranglethorn Vale", x = 50.6, y = 20.5, level = 58, req = 45, step = 19, steps = 22 }
SGJ.QuestInfo[3628] = { start = "Fallen Hero of the Horde", zone = "Swamp of Sorrows", x = 34.3, y = 66.1, level = 60, req = 45, step = 22, steps = 22 }
SGJ.QuestInfo[3701] = { start = "Royal Historian Archesonus", zone = "Dun Morogh", x = 57.2, y = 30.0, level = 54, req = 50, step = 2, steps = 6 }
SGJ.QuestInfo[3791] = { start = "Quintis Jonespyre", zone = "Feralas", x = 32.4, y = 43.8, level = 50, req = 47, step = 6, steps = 7 }
SGJ.QuestInfo[3822] = { start = "Sha'ni Proudtusk", level = 53, req = 48, step = 2, steps = 2 }
SGJ.QuestInfo[3825] = { start = "Oralius", zone = "Burning Steppes", x = 84.6, y = 68.7, level = 53, req = 48, step = 3, steps = 3 }
SGJ.QuestInfo[3882] = { start = "Spark Nilminer", zone = "Un'Goro Crater", x = 43.5, y = 7.4, level = 51, req = 49 }
SGJ.QuestInfo[3901] = { start = "Shadow Priest Sarvis", zone = "Tirisfal Glades", x = 30.8, y = 66.2, level = 3, req = 1, step = 3, steps = 3 }
SGJ.QuestInfo[3902] = { start = "Deathguard Saltain", zone = "Tirisfal Glades", x = 31.6, y = 65.6, level = 3, req = 2, step = 2, steps = 2 }
SGJ.QuestInfo[3905] = { start = "Milly Osworth", zone = "Elwynn Forest", x = 50.7, y = 39.3, level = 4, req = 2, step = 6, steps = 6 }
SGJ.QuestInfo[3907] = { start = "Thunderheart", zone = "Badlands", x = 3.3, y = 48.3, level = 56, req = 48, step = 2, steps = 2 }
SGJ.QuestInfo[3911] = { level = 54, req = 48 }
SGJ.QuestInfo[3924] = { start = "Rilli Greasygob", zone = "Orgrimmar", x = 76.5, y = 24.4, level = 19, req = 10, step = 8, steps = 8 }
SGJ.QuestInfo[3962] = { start = "Linken", zone = "Un'Goro Crater", x = 44.7, y = 8.1, level = 56, req = 47, step = 13, steps = 13 }
SGJ.QuestInfo[4004] = { start = "Princess Moira Bronzebeard", level = 60, req = 48, step = 7, steps = 7 }
SGJ.QuestInfo[4024] = { start = "Cyrus Therepentous", zone = "Burning Steppes", x = 95.1, y = 31.6, level = 58, req = 52, step = 11, steps = 11 }
SGJ.QuestInfo[4063] = { start = "Lotwil Veriatus", zone = "Badlands", x = 25.9, y = 44.9, level = 58, req = 52, step = 3, steps = 3 }
SGJ.QuestInfo[4126] = { start = "Ragnar Thunderbrew", zone = "Dun Morogh", x = 46.8, y = 52.4, level = 55, req = 50, step = 2, steps = 2 }
SGJ.QuestInfo[4132] = { start = "Warlord Goretooth", zone = "Badlands", x = 5.8, y = 47.5, level = 58, req = 52, step = 3, steps = 3 }
SGJ.QuestInfo[4136] = { start = "Yuka Screwspigot", zone = "Burning Steppes", x = 66.1, y = 22.0, level = 53, req = 48, step = 2, steps = 2 }
SGJ.QuestInfo[4201] = { start = "Mistress Nagmara", level = 54, req = 50 }
SGJ.QuestInfo[4242] = { start = "Marshal Windsor", level = 54, req = 48, step = 9, steps = 16 }
SGJ.QuestInfo[4261] = { start = "Arei", level = 56, req = 49, step = 4, steps = 4 }
SGJ.QuestInfo[4266] = { start = "Ginro Hearthkindle", zone = "Feralas", x = 31.9, y = 45.1, level = 46, req = 40, step = 9, steps = 10 }
SGJ.QuestInfo[4292] = { start = "Torwa Pathfinder", zone = "Un'Goro Crater", x = 71.6, y = 76.0, level = 56, req = 48, step = 3, steps = 3 }
SGJ.QuestInfo[4300] = { start = "Jes'rimon", zone = "Orgrimmar", x = 55.5, y = 34.1, level = 52, req = 48 }
SGJ.QuestInfo[4301] = { start = "Torwa Pathfinder", zone = "Un'Goro Crater", x = 71.6, y = 76.0, level = 55, req = 50, step = 2, steps = 2 }
SGJ.QuestInfo[4322] = { start = "Marshal Windsor", level = 58, req = 50, step = 12, steps = 16 }
SGJ.QuestInfo[4363] = { start = "Princess Moira Bronzebeard", level = 59, req = 50, step = 6, steps = 6 }
SGJ.QuestInfo[4450] = { start = "Wooden Outhouse", zone = "Searing Gorge", x = 65.6, y = 62.2, level = 46, req = 43, step = 2, steps = 2 }
SGJ.QuestInfo[4491] = { start = "Ringo", zone = "Un'Goro Crater", x = 51.9, y = 49.8, level = 55, req = 50, step = 2, steps = 2 }
SGJ.QuestInfo[4501] = { start = "Beware of Pterrordax", zone = "Un'Goro Crater", x = 43.5, y = 8.4, level = 55, req = 49 }
SGJ.QuestInfo[4503] = { start = "Shizzle", zone = "Un'Goro Crater", x = 44.2, y = 11.6, level = 51, req = 49 }
SGJ.QuestInfo[4510] = { start = "Gracina Spiritmight", zone = "Darnassus", x = 41.8, y = 85.6, level = 54, req = 50, step = 5, steps = 5 }
SGJ.QuestInfo[4511] = { start = "Zilzibin Drumlore", zone = "Orgrimmar", x = 56.3, y = 46.7, level = 54, req = 50, step = 5, steps = 5 }
SGJ.QuestInfo[4513] = { start = "Laris Geardawdle", zone = "Dun Morogh", x = 63.2, y = 24.8, level = 54, req = 48, step = 2, steps = 2 }
SGJ.QuestInfo[4621] = { start = "Fleet Master Firallon", zone = "Stranglethorn Vale", x = 30.6, y = 90.6, level = 60, req = 55, step = 2, steps = 2 }
SGJ.QuestInfo[4642] = { start = "Chemist Fuely", zone = "Undercity", x = 47.5, y = 73.3, level = 55, req = 48, step = 2, steps = 2 }
SGJ.QuestInfo[4681] = { start = "Gwennyth Bly'Leggonde", zone = "Darkshore", x = 36.6, y = 45.6, level = 14, req = 11, step = 2, steps = 3 }
SGJ.QuestInfo[4701] = { start = "Helendis Riverhorn", zone = "Burning Steppes", x = 85.8, y = 68.9, level = 59, req = 55 }
SGJ.QuestInfo[4740] = { start = "WANTED: Murkdeep!", zone = "Darkshore", x = 37.2, y = 44.2, level = 18, req = 15 }
SGJ.QuestInfo[4743] = { start = "Vaelan", level = 60, req = 57, step = 2, steps = 2 }
SGJ.QuestInfo[4763] = { start = "Thundris Windweaver", zone = "Darkshore", x = 37.4, y = 40.1, level = 18, req = 15, step = 4, steps = 4 }
SGJ.QuestInfo[4765] = { start = "Mayara Brightwing", zone = "Burning Steppes", x = 84.8, y = 69.1, level = 60, req = 57, step = 3, steps = 3 }
SGJ.QuestInfo[4771] = { start = "Betina Bigglezink", zone = "Eastern Plaguelands", x = 71.7, y = 49.9, level = 60, req = 57, step = 10, steps = 10 }
SGJ.QuestInfo[4786] = { start = "Menara Voidrender", zone = "The Barrens", x = 62.5, y = 35.4, level = 38, req = 31, step = 7, steps = 7 }
SGJ.QuestInfo[4810] = { start = "Felnok Steelspring", zone = "Winterspring", x = 61.6, y = 38.6, level = 54, req = 50, step = 4, steps = 10 }
SGJ.QuestInfo[4813] = { start = "Mysterious Red Crystal", zone = "Darkshore", x = 47.3, y = 48.7, level = 14, req = 12, step = 3, steps = 3 }
SGJ.QuestInfo[4842] = { start = "Donova Snowden", zone = "Winterspring", x = 31.3, y = 45.2, level = 56, req = 51, step = 3, steps = 3 }
SGJ.QuestInfo[4866] = { start = "Ragged John", zone = "Burning Steppes", x = 65.0, y = 23.8, level = 60, req = 55 }
SGJ.QuestInfo[4867] = { start = "Warosh", level = 60, req = 55 }
SGJ.QuestInfo[4883] = { start = "Trull Failbane", zone = "Felwood", x = 34.7, y = 52.8, level = 59, req = 52, step = 2, steps = 2 }
SGJ.QuestInfo[4902] = { start = "Erelas Ambersky", zone = "Teldrassil", x = 55.5, y = 92.0, level = 57, req = 52, step = 5, steps = 5 }
SGJ.QuestInfo[4904] = { start = "Lakota Windsong", zone = "Thousand Needles", x = 37.9, y = 26.4, level = 29, req = 25 }
SGJ.QuestInfo[4906] = { start = "Eridan Bluewind", zone = "Felwood", x = 51.3, y = 81.5, level = 54, req = 49, step = 2, steps = 2 }
SGJ.QuestInfo[4964] = { start = "Menara Voidrender", zone = "The Barrens", x = 62.5, y = 35.4, level = 40, req = 35, step = 5, steps = 5 }
SGJ.QuestInfo[4966] = { start = "Kanati Greycloud", zone = "Thousand Needles", x = 21.3, y = 32.1, level = 28, req = 23, step = 2, steps = 2 }
SGJ.QuestInfo[4971] = { start = "Chromie", zone = "Western Plaguelands", x = 39.5, y = 66.8, level = 56, req = 53, step = 1, steps = 3 }
SGJ.QuestInfo[4974] = { start = "Thrall", zone = "Orgrimmar", x = 31.7, y = 37.8, level = 60, req = 55, step = 3, steps = 12 }
SGJ.QuestInfo[4975] = { start = "Menara Voidrender", zone = "The Barrens", x = 62.5, y = 35.4, level = 40, req = 35, step = 5, steps = 5 }
SGJ.QuestInfo[4983] = { start = "Bijou", level = 59, req = 55, step = 3, steps = 3 }
SGJ.QuestInfo[4986] = { start = "Mulgris Deepriver", zone = "Western Plaguelands", x = 53.7, y = 64.7, level = 56, req = 51, step = 3, steps = 3 }
SGJ.QuestInfo[5051] = { start = "Janice Felstone", zone = "Western Plaguelands", x = 38.4, y = 54.1, level = 54, req = 50, step = 5, steps = 5 }
SGJ.QuestInfo[5056] = { start = "Storm Shadowhoof", zone = "Winterspring", x = 61.9, y = 38.4, level = 60, req = 53, step = 3, steps = 4 }
SGJ.QuestInfo[5057] = { start = "Storm Shadowhoof", zone = "Winterspring", x = 61.9, y = 38.4, level = 60, req = 53, step = 4, steps = 4 }
SGJ.QuestInfo[5060] = { start = "Locked Cabinet", zone = "Western Plaguelands", x = 47.4, y = 49.6, level = 55, req = 52 }
SGJ.QuestInfo[5063] = { start = "Malyfous's Catalogue", zone = "Winterspring", x = 61.0, y = 38.8, level = 60, req = 57, step = 2, steps = 2 }
SGJ.QuestInfo[5064] = { start = "Cliffwatcher Longhorn", zone = "Thousand Needles", x = 45.7, y = 50.7, level = 28, req = 24, step = 3, steps = 3 }
SGJ.QuestInfo[5067] = { start = "Malyfous's Catalogue", zone = "Winterspring", x = 61.0, y = 38.8, level = 60, req = 57, step = 2, steps = 2 }
SGJ.QuestInfo[5068] = { start = "Malyfous's Catalogue", zone = "Winterspring", x = 61.0, y = 38.8, level = 60, req = 57, step = 2, steps = 2 }
SGJ.QuestInfo[5081] = { start = "Marshal Maxwell", zone = "Burning Steppes", x = 84.7, y = 69.0, level = 60, req = 55, step = 3, steps = 3 }
SGJ.QuestInfo[5088] = { start = "Magatha Grimtotem", zone = "Thunder Bluff", x = 69.9, y = 30.9, level = 28, req = 24, step = 4, steps = 4 }
SGJ.QuestInfo[5121] = { start = "Donova Snowden", zone = "Winterspring", x = 31.3, y = 45.2, level = 59, req = 52, step = 6, steps = 6 }
SGJ.QuestInfo[5124] = { start = "Malyfous Darkhammer", zone = "Winterspring", x = 61.0, y = 38.8, level = 60, req = 55, step = 2, steps = 2 }
SGJ.QuestInfo[5125] = { start = "Aurius", zone = "Stratholme", level = 60, req = 55, step = 2, steps = 2 }
SGJ.QuestInfo[5147] = { start = "Wanted Poster - Arnak Grimtotem", zone = "Thousand Needles", x = 46.0, y = 50.9, level = 29, req = 25 }
SGJ.QuestInfo[5151] = { start = "Wizlo Bearingshiner", zone = "Thousand Needles", x = 21.4, y = 32.6, level = 30, req = 24 }
SGJ.QuestInfo[5166] = { start = "Catalogue of the Wayward", zone = "Western Plaguelands", x = 39.3, y = 66.6, level = 60, req = 57, step = 5, steps = 5 }
SGJ.QuestInfo[5167] = { start = "Catalogue of the Wayward", zone = "Western Plaguelands", x = 39.3, y = 66.6, level = 60, req = 57, step = 5, steps = 5 }
SGJ.QuestInfo[5213] = { start = "Betina Bigglezink", zone = "Eastern Plaguelands", x = 71.7, y = 49.9, level = 60, req = 55, step = 2, steps = 2 }
SGJ.QuestInfo[5214] = { start = "Smokey LaRue", zone = "Eastern Plaguelands", x = 70.9, y = 48.4, level = 60, req = 55 }
SGJ.QuestInfo[5237] = { start = "Commander Ashlam Valorfist", zone = "Western Plaguelands", x = 42.7, y = 84.0, level = 58, req = 50, step = 12, steps = 13 }
SGJ.QuestInfo[5242] = { start = "Greta Mosshoof", zone = "Felwood", x = 51.2, y = 82.1, level = 58, req = 48, step = 6, steps = 6 }
SGJ.QuestInfo[5243] = { start = "Leonid Barthalomew the Revered", zone = "Eastern Plaguelands", x = 71.9, y = 48.3, level = 60, req = 55 }
SGJ.QuestInfo[5253] = { start = "Wynd Nightchaser", zone = "Winterspring", x = 52.0, y = 30.4, level = 58, req = 53, step = 8, steps = 8 }
SGJ.QuestInfo[5265] = { start = "Lord Maxwell Tyrosus", zone = "Eastern Plaguelands", x = 71.9, y = 48.4, level = 60, req = 55, step = 5, steps = 5 }
SGJ.QuestInfo[5282] = { start = "Egan", zone = "Eastern Plaguelands", x = 11.4, y = 26.6, level = 60, req = 55, step = 2, steps = 2 }
SGJ.QuestInfo[5321] = { start = "Kerlonian Evershade", zone = "Darkshore", x = 44.4, y = 76.4, level = 20, req = 17 }
SGJ.QuestInfo[5342] = { start = "Alexi Barov", zone = "Tirisfal Glades", x = 83.1, y = 71.6, level = 60, req = 52, step = 2, steps = 2 }
SGJ.QuestInfo[5344] = { start = "Weldon Barov", zone = "Western Plaguelands", x = 43.5, y = 83.7, level = 60, req = 52, step = 2, steps = 2 }
SGJ.QuestInfo[5384] = { start = "Eva Sarkhoff", zone = "Western Plaguelands", x = 70.2, y = 73.7, level = 60, req = 55, step = 3, steps = 9 }
SGJ.QuestInfo[5385] = { start = "Remains of Trey Lightforge", zone = "Felwood", x = 38.5, y = 50.4, level = 57, req = 49, step = 4, steps = 4 }
SGJ.QuestInfo[5401] = { start = "Argent Officer Pureheart", zone = "Western Plaguelands", x = 43.0, y = 83.5, level = 55, req = 50 }
SGJ.QuestInfo[5466] = { start = "Magistrate Marduke", zone = "Western Plaguelands", x = 70.6, y = 74.1, level = 60, req = 57, step = 9, steps = 9 }
SGJ.QuestInfo[5501] = { start = "Bibbly F'utzbuckle", zone = "Desolace", x = 62.3, y = 39.0, level = 39, req = 33 }
SGJ.QuestInfo[5503] = { start = "Duke Nicholas Zverenhoff", zone = "Eastern Plaguelands", x = 71.6, y = 50.1, level = 55, req = 50 }
SGJ.QuestInfo[5526] = { start = "Rabine Saturna", zone = "Moonglade", x = 51.7, y = 45.1, level = 60, req = 56, step = 2, steps = 2 }
SGJ.QuestInfo[5561] = { start = "Smeed Scrabblescrew", zone = "Desolace", x = 60.9, y = 61.9, level = 34, req = 30 }
SGJ.QuestInfo[5581] = { start = "Taiga Wisemane", zone = "Desolace", x = 25.8, y = 68.2, level = 38, req = 32, step = 2, steps = 2 }
SGJ.QuestInfo[5621] = { start = "Laurna Morninglight", zone = "Teldrassil", x = 55.6, y = 56.7, level = 4, req = 5, step = 2, steps = 2 }
SGJ.QuestInfo[5624] = { start = "Priestess Josetta", zone = "Elwynn Forest", x = 43.3, y = 65.7, level = 4, req = 5, step = 2, steps = 2 }
SGJ.QuestInfo[5648] = { start = "Tai'jin", zone = "Durotar", x = 54.3, y = 42.9, level = 4, req = 5, step = 2, steps = 2 }
SGJ.QuestInfo[5650] = { start = "Dark Cleric Beryl", zone = "Tirisfal Glades", x = 61.6, y = 52.2, level = 4, req = 5, step = 2, steps = 2 }
SGJ.QuestInfo[5724] = { start = "Maur Grimtotem", level = 16, req = 9, step = 2, steps = 2 }
SGJ.QuestInfo[5725] = { start = "Varimathras", zone = "Undercity", x = 56.3, y = 92.2, level = 16, req = 9 }
SGJ.QuestInfo[5730] = { start = "Neeru Fireblade", zone = "Orgrimmar", x = 49.5, y = 50.6, level = 16, req = 9, step = 5, steps = 5 }
SGJ.QuestInfo[5821] = { start = "Cork Gizelton", zone = "Desolace", x = 60.4, y = 38.1, level = 35, req = 30 }
SGJ.QuestInfo[5863] = { start = "Andi Lynn", zone = "Tanaris", x = 52.8, y = 27.4, level = 49, req = 44 }
SGJ.QuestInfo[5942] = { start = "Pamela Redpath", zone = "Eastern Plaguelands", x = 31.2, y = 78.0, level = 60, req = 50, step = 11, steps = 11 }
SGJ.QuestInfo[5943] = { start = "Rigger Gizelton", zone = "Desolace", x = 60.3, y = 38.2, level = 38, req = 32 }
SGJ.QuestInfo[5944] = { start = "Highlord Taelan Fordring", zone = "Western Plaguelands", x = 42.0, y = 14.8, level = 60, req = 52, step = 9, steps = 9 }
SGJ.QuestInfo[6024] = { start = "Torn Scroll", zone = "Eastern Plaguelands", x = 22.9, y = 73.0, level = 60, req = 54 }
SGJ.QuestInfo[6027] = { start = "Azore Aldamort", zone = "Desolace", x = 38.9, y = 27.2, level = 38, req = 30, step = 2, steps = 2 }
SGJ.QuestInfo[6031] = { start = "Meilosh", zone = "Felwood", x = 65.7, y = 2.8, level = 55, req = 50 }
SGJ.QuestInfo[6041] = { start = "Smokey LaRue", zone = "Eastern Plaguelands", x = 70.9, y = 48.4, level = 58, req = 54, step = 2, steps = 2 }
SGJ.QuestInfo[6124] = { start = "Alanndarian Nightsong", zone = "Darkshore", x = 37.7, y = 40.7, level = 14, req = 14, step = 4, steps = 5 }
SGJ.QuestInfo[6134] = { start = "Hornizz Brimbuzzle", zone = "Desolace", x = 47.8, y = 61.8, level = 39, req = 34 }
SGJ.QuestInfo[6135] = { start = "Nathanos Blightcaller", zone = "Eastern Plaguelands", x = 22.2, y = 63.5, level = 60, req = 56, step = 2, steps = 3 }
SGJ.QuestInfo[6136] = { start = "Nathanos Blightcaller", zone = "Eastern Plaguelands", x = 22.2, y = 63.5, level = 60, req = 56 }
SGJ.QuestInfo[6142] = { start = "Mai'Lahii", zone = "Desolace", x = 22.6, y = 72.0, level = 35, req = 31 }
SGJ.QuestInfo[6161] = { start = "Rackmore's Log", zone = "Desolace", x = 36.1, y = 30.4, level = 36, req = 30 }
SGJ.QuestInfo[6163] = { start = "Nathanos Blightcaller", zone = "Eastern Plaguelands", x = 22.2, y = 63.5, level = 60, req = 56, step = 3, steps = 3 }
SGJ.QuestInfo[6187] = { start = "Highlord Bolvar Fordragon", zone = "Stormwind City", x = 80.2, y = 38.3, level = 60, req = 56, step = 6, steps = 6 }
SGJ.QuestInfo[6283] = { start = "Maggran Earthbinder", zone = "Stonetalon Mountains", x = 47.2, y = 61.2, level = 26, req = 18, step = 2, steps = 2 }
SGJ.QuestInfo[6284] = { start = "Wanted Poster: Besseleth", zone = "Stonetalon Mountains", x = 59.1, y = 75.7, level = 21, req = 15 }
SGJ.QuestInfo[6381] = { start = "Tammra Windfield", zone = "Stonetalon Mountains", x = 47.5, y = 58.4, level = 25, req = 17, step = 2, steps = 2 }
SGJ.QuestInfo[6481] = { start = "Mor'rogal", zone = "Stonetalon Mountains", x = 47.2, y = 64.0, level = 20, req = 14, step = 2, steps = 2 }
SGJ.QuestInfo[6504] = { start = "Gurda Ragescar", zone = "Ashenvale", x = 70.0, y = 71.2, level = 30, req = 23 }
SGJ.QuestInfo[6521] = { start = "Varimathras", zone = "Undercity", x = 56.3, y = 92.2, level = 36, req = 28, step = 2, steps = 2 }
SGJ.QuestInfo[6544] = { start = "Torek", zone = "Ashenvale", x = 68.3, y = 75.3, level = 24, req = 20 }
SGJ.QuestInfo[6565] = { start = "Je'neu Sancrea", zone = "Ashenvale", x = 11.6, y = 34.3, level = 26, req = 17, step = 2, steps = 2 }
SGJ.QuestInfo[6571] = { start = "Locke Okarr", zone = "Ashenvale", x = 71.4, y = 67.6, level = 27, req = 22, step = 1, steps = 2 }
SGJ.QuestInfo[6602] = { start = "Rexxar", zone = "Feralas", x = 46.4, y = 18.2, level = 60, req = 55, step = 12, steps = 12 }
SGJ.QuestInfo[6621] = { start = "Karang Amakkar", zone = "Ashenvale", x = 11.9, y = 34.5, level = 26, req = 21, step = 2, steps = 2 }
SGJ.QuestInfo[6641] = { start = "Muglash", zone = "Ashenvale", x = 12.1, y = 34.6, level = 23, req = 20 }
SGJ.QuestInfo[6845] = { start = "Umber", zone = "Moonglade", x = 44.9, y = 35.6, level = 57, req = 54, step = 8, steps = 9 }
SGJ.QuestInfo[6922] = { start = "an item: Strange Water Globe", level = 30, req = 21 }
SGJ.QuestInfo[7003] = { start = "Zorbin Fandazzle", zone = "Feralas", x = 44.8, y = 43.4, level = 48, req = 45, step = 1, steps = 2 }
SGJ.QuestInfo[7028] = { start = "Willow", zone = "Desolace", x = 62.2, y = 39.6, level = 47, req = 41 }
SGJ.QuestInfo[7029] = { start = "Vark Battlescar", zone = "Desolace", x = 23.2, y = 70.3, level = 47, req = 41 }
SGJ.QuestInfo[7064] = { start = "Selendra", zone = "Desolace", x = 26.9, y = 77.7, level = 51, req = 45 }
SGJ.QuestInfo[7067] = { start = "Centaur Pariah", zone = "Desolace", x = 50.4, y = 86.7, level = 48, req = 39 }
SGJ.QuestInfo[7068] = { start = "Uthel'nay", zone = "Orgrimmar", x = 39.2, y = 86.3, level = 42, req = 39 }
SGJ.QuestInfo[7161] = { start = "Warmaster Laggrond", zone = "Alterac Mountains", x = 62.3, y = 58.9, level = 60, req = 51, step = 1, steps = 6 }
SGJ.QuestInfo[7162] = { start = "Lieutenant Haggerdin", zone = "Alterac Mountains", x = 39.5, y = 81.2, level = 60, req = 51, step = 1, steps = 6 }
SGJ.QuestInfo[7163] = { start = "Warmaster Laggrond", zone = "Alterac Mountains", x = 62.3, y = 58.9, level = 60, req = 51, step = 2, steps = 6 }
SGJ.QuestInfo[7164] = { start = "Warmaster Laggrond", zone = "Alterac Mountains", x = 62.3, y = 58.9, level = 60, req = 51, step = 3, steps = 6 }
SGJ.QuestInfo[7165] = { start = "Warmaster Laggrond", zone = "Alterac Mountains", x = 62.3, y = 58.9, level = 60, req = 51, step = 4, steps = 6 }
SGJ.QuestInfo[7166] = { start = "Warmaster Laggrond", zone = "Alterac Mountains", x = 62.3, y = 58.9, level = 60, req = 51, step = 5, steps = 6 }
SGJ.QuestInfo[7167] = { start = "Warmaster Laggrond", zone = "Alterac Mountains", x = 62.3, y = 58.9, level = 60, req = 51, step = 6, steps = 6 }
SGJ.QuestInfo[7168] = { start = "Lieutenant Haggerdin", zone = "Alterac Mountains", x = 39.5, y = 81.2, level = 60, req = 51, step = 2, steps = 6 }
SGJ.QuestInfo[7169] = { start = "Lieutenant Haggerdin", zone = "Alterac Mountains", x = 39.5, y = 81.2, level = 60, req = 51, step = 3, steps = 6 }
SGJ.QuestInfo[7170] = { start = "Lieutenant Haggerdin", zone = "Alterac Mountains", x = 39.5, y = 81.2, level = 60, req = 51, step = 4, steps = 6 }
SGJ.QuestInfo[7171] = { start = "Lieutenant Haggerdin", zone = "Alterac Mountains", x = 39.5, y = 81.2, level = 60, req = 51, step = 5, steps = 6 }
SGJ.QuestInfo[7172] = { start = "Lieutenant Haggerdin", zone = "Alterac Mountains", x = 39.5, y = 81.2, level = 60, req = 51, step = 6, steps = 6 }
SGJ.QuestInfo[7441] = { start = "Azj'Tordin", zone = "Feralas", x = 76.9, y = 37.4, level = 58, req = 54 }
SGJ.QuestInfo[7462] = { start = "Shen'dralar Ancient", level = 60, req = 56, step = 2, steps = 2 }
SGJ.QuestInfo[7486] = { start = "Duke Hydraxis", zone = "Azshara", x = 79.3, y = 73.7, level = 60, req = 55, step = 6, steps = 6 }
SGJ.QuestInfo[7488] = { start = "Latronicus Moonspear", zone = "Feralas", x = 30.4, y = 46.2, level = 57, req = 54, step = 2, steps = 2 }
SGJ.QuestInfo[7491] = { start = "Thrall", zone = "Orgrimmar", x = 31.7, y = 37.8, level = 60, req = 60, step = 2, steps = 3 }
SGJ.QuestInfo[7496] = { start = "Highlord Bolvar Fordragon", zone = "Stormwind City", x = 80.2, y = 38.3, level = 60, req = 60, step = 2, steps = 3 }
SGJ.QuestInfo[7498] = { start = "an item: Garona: A Study on Stealth and Treachery", level = 60, req = 54 }
SGJ.QuestInfo[7499] = { start = "an item: Codex of Defense", level = 60, req = 54 }
SGJ.QuestInfo[7500] = { start = "an item: The Arcanist's Cookbook", level = 60, req = 54 }
SGJ.QuestInfo[7501] = { start = "an item: The Light and How to Swing It", level = 60, req = 54 }
SGJ.QuestInfo[7502] = { start = "an item: Harnessing Shadows", level = 60, req = 54 }
SGJ.QuestInfo[7503] = { start = "an item: The Greatest Race of Hunters", level = 60, req = 54 }
SGJ.QuestInfo[7504] = { start = "an item: Holy Bologna: What the Light Won't Tell You", level = 60, req = 54 }
SGJ.QuestInfo[7505] = { start = "an item: Frost Shock and You", level = 60, req = 54 }
SGJ.QuestInfo[7506] = { start = "an item: The Emerald Dream", level = 60, req = 54 }
SGJ.QuestInfo[7509] = { start = "Lorekeeper Lydros", level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[7541] = { start = "Zor Lonetree", zone = "Orgrimmar", x = 38.9, y = 38.4, level = 40, req = 30, step = 6, steps = 6 }
SGJ.QuestInfo[7583] = { start = "Daio the Decrepit", zone = "Blasted Lands", x = 34.1, y = 50.1, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[7603] = { start = "Impsy", zone = "Felwood", x = 41.5, y = 45.0, level = 55, req = 50, step = 3, steps = 3 }
SGJ.QuestInfo[7668] = { start = "Sagorne Creststrider", zone = "Orgrimmar", x = 38.6, y = 36.2, level = 60, req = 58 }
SGJ.QuestInfo[7701] = { start = "Wanted/Missing/Lost & Found", zone = "Searing Gorge", x = 37.6, y = 26.5, level = 50, req = 45 }
SGJ.QuestInfo[7704] = { start = "an item: Chambermaid Pillaclencher's Pillow", level = 50, req = 45 }
SGJ.QuestInfo[7721] = { start = "Zorbin Fandazzle", zone = "Feralas", x = 44.8, y = 43.4, level = 48, req = 45, step = 1, steps = 2 }
SGJ.QuestInfo[7723] = { start = "Hansel Heavyhands", zone = "Searing Gorge", x = 38.6, y = 27.8, level = 49, req = 45 }
SGJ.QuestInfo[7724] = { start = "Hansel Heavyhands", zone = "Searing Gorge", x = 38.6, y = 27.8, level = 49, req = 45 }
SGJ.QuestInfo[7727] = { start = "Hansel Heavyhands", zone = "Searing Gorge", x = 38.6, y = 27.8, level = 49, req = 45 }
SGJ.QuestInfo[7728] = { start = "Wanted/Missing/Lost & Found", zone = "Searing Gorge", x = 37.6, y = 26.5, level = 48, req = 45 }
SGJ.QuestInfo[7732] = { start = "Hadoken Swiftstrider", zone = "Feralas", x = 74.9, y = 42.5, level = 48, req = 39, step = 6, steps = 6 }
SGJ.QuestInfo[7733] = { start = "Pratt McGrubben", zone = "Feralas", x = 30.6, y = 42.7, level = 48, req = 40, step = 2, steps = 2 }
SGJ.QuestInfo[7734] = { start = "Jangdor Swiftstrider", zone = "Feralas", x = 74.4, y = 42.9, level = 48, req = 40, step = 2, steps = 2 }
SGJ.QuestInfo[7782] = { start = "Highlord Bolvar Fordragon", zone = "Stormwind City", x = 80.2, y = 38.3, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[7784] = { start = "Thrall", zone = "Orgrimmar", x = 31.7, y = 37.8, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[7787] = { start = "an item: Dormant Wind Kissed Blade", level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[7815] = { start = "Katoom the Angler", zone = "The Hinterlands", x = 80.3, y = 81.5, level = 50, req = 44, step = 1, steps = 2 }
SGJ.QuestInfo[7838] = { start = "Short John Mithril", zone = "Stranglethorn Vale", x = 29.6, y = 47.4, level = 55, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[7843] = { start = "Otho Moji'ko", zone = "The Hinterlands", x = 79.4, y = 79.1, level = 50, req = 44, step = 3, steps = 3 }
SGJ.QuestInfo[7847] = { start = "Elder Torntusk", zone = "The Hinterlands", x = 59.7, y = 77.8, level = 51, req = 46, step = 3, steps = 3 }
SGJ.QuestInfo[7849] = { start = "Huntsman Markhor", zone = "The Hinterlands", x = 79.2, y = 79.5, level = 50, req = 46 }
SGJ.QuestInfo[7850] = { start = "Primal Torntusk", zone = "The Hinterlands", x = 78.2, y = 81.2, level = 50, req = 46 }
SGJ.QuestInfo[7861] = { start = "Call to Arms!", zone = "The Hinterlands", x = 79.1, y = 79.0, level = 51, req = 46 }
SGJ.QuestInfo[7862] = { start = "Call to Arms!", zone = "The Hinterlands", x = 79.1, y = 79.0, level = 51, req = 46 }
SGJ.QuestInfo[7907] = { start = "an item: Beasts Deck", level = 55, req = 1 }
SGJ.QuestInfo[7927] = { start = "an item: Portals Deck", level = 55, req = 1 }
SGJ.QuestInfo[7928] = { start = "an item: Warlords Deck", level = 55, req = 1 }
SGJ.QuestInfo[7929] = { start = "an item: Elementals Deck", level = 55, req = 1 }
SGJ.QuestInfo[7930] = { start = "Gelvas Grimegate", zone = "Mulgore", x = 38.2, y = 44.7, level = 60, req = 6 }
SGJ.QuestInfo[7935] = { start = "Gelvas Grimegate", zone = "Mulgore", x = 38.2, y = 44.7, level = 60, req = 25 }
SGJ.QuestInfo[7936] = { start = "Gelvas Grimegate", zone = "Mulgore", x = 38.2, y = 44.7, level = 60, req = 45 }
SGJ.QuestInfo[7940] = { start = "Gelvas Grimegate", zone = "Mulgore", x = 38.2, y = 44.7, level = 60, req = 55 }
SGJ.QuestInfo[7981] = { start = "Gelvas Grimegate", zone = "Mulgore", x = 38.2, y = 44.7, level = 60, req = 55 }
SGJ.QuestInfo[8041] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8042] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8043] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8044] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8045] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8046] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8047] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8048] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8049] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8050] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8051] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8052] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8053] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58 }
SGJ.QuestInfo[8054] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58 }
SGJ.QuestInfo[8055] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58 }
SGJ.QuestInfo[8056] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58 }
SGJ.QuestInfo[8057] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58 }
SGJ.QuestInfo[8058] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58 }
SGJ.QuestInfo[8059] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8060] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8061] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8062] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58 }
SGJ.QuestInfo[8063] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58 }
SGJ.QuestInfo[8064] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58 }
SGJ.QuestInfo[8065] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58 }
SGJ.QuestInfo[8066] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58 }
SGJ.QuestInfo[8067] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58 }
SGJ.QuestInfo[8068] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8069] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8070] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8071] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8072] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58 }
SGJ.QuestInfo[8073] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58 }
SGJ.QuestInfo[8074] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58 }
SGJ.QuestInfo[8075] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58 }
SGJ.QuestInfo[8076] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8077] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58 }
SGJ.QuestInfo[8078] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58 }
SGJ.QuestInfo[8079] = { start = "Jin'rokh the Breaker", zone = "Stranglethorn Vale", x = 15.3, y = 14.4, level = 60, req = 58 }
SGJ.QuestInfo[8101] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8102] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8103] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8104] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8106] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8107] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8108] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8109] = { start = "Al'tabim the All-Seeing", zone = "Stranglethorn Vale", x = 15.3, y = 16.1, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8110] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8111] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8112] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8113] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8116] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8117] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8118] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8119] = { start = "Maywiki of Zuldazar", zone = "Stranglethorn Vale", x = 15.3, y = 16.0, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8141] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8142] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8143] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8144] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8145] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 1, steps = 4 }
SGJ.QuestInfo[8146] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 2, steps = 4 }
SGJ.QuestInfo[8147] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 3, steps = 4 }
SGJ.QuestInfo[8148] = { start = "Falthir the Sightless", zone = "Stranglethorn Vale", x = 14.1, y = 13.7, level = 60, req = 58, step = 4, steps = 4 }
SGJ.QuestInfo[8181] = { start = "Prospector Ironboot", zone = "Tanaris", x = 66.9, y = 24.0, level = 58, req = 40, step = 7, steps = 8 }
SGJ.QuestInfo[8183] = { start = "an item: Heart of Hakkar", level = 60, req = 58 }
SGJ.QuestInfo[8193] = { start = "Riggle Bassbait", zone = "Stranglethorn Vale", x = 27.4, y = 76.8, level = 60, req = 1 }
SGJ.QuestInfo[8201] = { start = "Exzhal", zone = "Stranglethorn Vale", x = 15.3, y = 15.5, level = 60, req = 58 }
SGJ.QuestInfo[8221] = { start = "Fishbot 5000", zone = "Stranglethorn Vale", x = 27.3, y = 76.9, level = 60, req = 1 }
SGJ.QuestInfo[8225] = { start = "Fishbot 5000", zone = "Stranglethorn Vale", x = 27.3, y = 76.9, level = 60, req = 1 }
SGJ.QuestInfo[8232] = { start = "Ogtinc", zone = "Azshara", x = 42.4, y = 42.6, level = 52, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[8236] = { start = "Archmage Xylem", zone = "Azshara", x = 29.2, y = 40.2, level = 52, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[8249] = { start = "Fahrad", zone = "Alterac Mountains", x = 84.4, y = 80.3, level = 60, req = 50 }
SGJ.QuestInfo[8253] = { start = "Archmage Xylem", zone = "Azshara", x = 29.2, y = 40.2, level = 52, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[8257] = { start = "Ogtinc", zone = "Azshara", x = 42.4, y = 42.6, level = 52, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[8259] = { start = "Sagorne Creststrider", zone = "Orgrimmar", x = 38.6, y = 36.2, level = 60, req = 58 }
SGJ.QuestInfo[8272] = { start = "Voggah Deathgrip", zone = "Alterac Mountains", x = 63.8, y = 60.5, level = 60, req = 51, step = 3, steps = 3 }
SGJ.QuestInfo[8273] = { start = "Oran Snakewrithe", zone = "Undercity", x = 73.1, y = 32.8, level = 47, req = 42, step = 3, steps = 3 }
SGJ.QuestInfo[8283] = { start = "Wanted Poster: Deathclasp", zone = "Silithus", x = 51.4, y = 38.3, level = 59, req = 54 }
SGJ.QuestInfo[8306] = { start = "Commander Mar'alith", zone = "Silithus", x = 49.2, y = 34.2, level = 60, req = 58, step = 2, steps = 2 }
SGJ.QuestInfo[8308] = { start = "an item: Brann Bronzebeard's Lost Letter", level = 60, req = 58 }
SGJ.QuestInfo[8316] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8321] = { start = "Huum Wildmane", zone = "Silithus", x = 48.6, y = 37.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8332] = { start = "Aurel Goldleaf", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60, step = 2, steps = 5 }
SGJ.QuestInfo[8341] = { start = "Aurel Goldleaf", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60, step = 2, steps = 5 }
SGJ.QuestInfo[8366] = { start = "Security Chief Bilgewhizzle", zone = "Tanaris", x = 67.1, y = 23.9, level = 45, req = 40 }
SGJ.QuestInfo[8376] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8377] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8378] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8379] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8380] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8381] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8382] = { start = "Geologist Larksbane", zone = "Silithus", x = 49.7, y = 37.5, level = 60, req = 58, step = 5, steps = 5 }
SGJ.QuestInfo[8413] = { start = "Bath'rah the Windwatcher", zone = "Alterac Mountains", x = 80.5, y = 66.9, level = 52, req = 50, step = 3, steps = 3 }
SGJ.QuestInfo[8418] = { start = "Commander Ashlam Valorfist", zone = "Western Plaguelands", x = 42.7, y = 84.0, level = 52, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[8422] = { start = "Impsy", zone = "Felwood", x = 41.5, y = 45.0, level = 52, req = 50, step = 3, steps = 3 }
SGJ.QuestInfo[8425] = { start = "Fallen Hero of the Horde", zone = "Swamp of Sorrows", x = 34.3, y = 66.1, level = 52, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[8447] = { start = "Keeper Remulos", zone = "Moonglade", x = 36.2, y = 41.8, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8460] = { start = "Grazle", zone = "Felwood", x = 50.9, y = 85.0, level = 48, req = 45, step = 1, steps = 2 }
SGJ.QuestInfo[8461] = { start = "Nafien", zone = "Felwood", x = 64.8, y = 8.1, level = 55, req = 45, step = 1, steps = 2 }
SGJ.QuestInfo[8464] = { start = "Salfa", zone = "Winterspring", x = 27.7, y = 34.5, level = 58, req = 45, step = 1, steps = 2 }
SGJ.QuestInfo[8481] = { start = "Gorn One Eye", zone = "Felwood", x = 65.2, y = 2.7, level = 60, req = 45 }
SGJ.QuestInfo[8544] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8548] = { start = "Vargus", zone = "Silithus", x = 51.2, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8556] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8557] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8558] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8559] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8560] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8561] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8562] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8572] = { start = "Vargus", zone = "Silithus", x = 51.2, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8573] = { start = "Vargus", zone = "Silithus", x = 51.2, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8574] = { start = "Vargus", zone = "Silithus", x = 51.2, y = 38.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8592] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8593] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8594] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8596] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8602] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8603] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8620] = { start = "Narain Soothfancy", zone = "Tanaris", x = 65.2, y = 18.6, level = 60, req = 60, step = 6, steps = 10 }
SGJ.QuestInfo[8621] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8622] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8623] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8624] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8625] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8626] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8627] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8628] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8629] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8630] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8631] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8632] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8633] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8634] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8637] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8638] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8639] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8640] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8641] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8655] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8656] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8657] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8658] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8659] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8660] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8661] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8662] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8663] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8664] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8665] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8666] = { start = "Vethsera", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8667] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8668] = { start = "Kandrostrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8669] = { start = "Andorgos", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8689] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8690] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8691] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8692] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8693] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8694] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8695] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8696] = { start = "Keyl Swiftclaw", zone = "Silithus", x = 51.8, y = 39.5, level = 60, req = 60 }
SGJ.QuestInfo[8697] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8698] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8699] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8700] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8701] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8702] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8703] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8704] = { start = "Windcaller Yessendra", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 60 }
SGJ.QuestInfo[8705] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8706] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8707] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8708] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8709] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8710] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8711] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8712] = { start = "Warden Haro", zone = "Silithus", x = 51.1, y = 38.9, level = 60, req = 60 }
SGJ.QuestInfo[8729] = { start = "Narain Soothfancy", zone = "Tanaris", x = 65.2, y = 18.6, level = 60, req = 60, step = 8, steps = 10 }
SGJ.QuestInfo[8730] = { start = "Vaelastrasz the Corrupt", zone = "Blackwing Lair", level = 60, req = 60, step = 8, steps = 10 }
SGJ.QuestInfo[8736] = { start = "Keeper Remulos", zone = "Moonglade", x = 36.2, y = 41.8, level = 60, req = 60, step = 4, steps = 7 }
SGJ.QuestInfo[8745] = { start = "Jonathan the Revelator", zone = "Silithus", x = 25.9, y = 91.0, level = 60, req = 60, step = 10, steps = 10 }
SGJ.QuestInfo[8747] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 1, steps = 5 }
SGJ.QuestInfo[8748] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 2, steps = 5 }
SGJ.QuestInfo[8749] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 3, steps = 5 }
SGJ.QuestInfo[8750] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 4, steps = 5 }
SGJ.QuestInfo[8752] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 1, steps = 5 }
SGJ.QuestInfo[8753] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 2, steps = 5 }
SGJ.QuestInfo[8754] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 3, steps = 5 }
SGJ.QuestInfo[8755] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 4, steps = 5 }
SGJ.QuestInfo[8757] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 1, steps = 5 }
SGJ.QuestInfo[8758] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 2, steps = 5 }
SGJ.QuestInfo[8759] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 3, steps = 5 }
SGJ.QuestInfo[8760] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 4, steps = 5 }
SGJ.QuestInfo[8765] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60 }
SGJ.QuestInfo[8766] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60 }
SGJ.QuestInfo[8789] = { start = "Arygos", zone = "Ahn'Qiraj Temple", level = 60, req = 60 }
SGJ.QuestInfo[8790] = { start = "Merithra of the Dream", zone = "Ahn'Qiraj Temple", level = 60, req = 60 }
SGJ.QuestInfo[8791] = { start = "an item: Head of Ossirian the Unscarred", level = 60, req = 60 }
SGJ.QuestInfo[8802] = { start = "Caelestrasz", zone = "Ahn'Qiraj Temple", level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[8864] = { start = "Valadar Starsong", zone = "Moonglade", x = 53.7, y = 35.3, level = 60, req = 1 }
SGJ.QuestInfo[8865] = { start = "Valadar Starsong", zone = "Moonglade", x = 53.7, y = 35.3, level = 60, req = 1 }
SGJ.QuestInfo[8905] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8906] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8907] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8908] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8909] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8910] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8911] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8912] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8913] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8914] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8915] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8916] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8917] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8918] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8919] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8920] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 1, steps = 8 }
SGJ.QuestInfo[8926] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8927] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8931] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8932] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8933] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8934] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8935] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8936] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8937] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8938] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8939] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8940] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8941] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8942] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8943] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8944] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 8, steps = 15 }
SGJ.QuestInfo[8949] = { start = "Falrin Treeshaper", level = 60, req = 58, step = 7, steps = 12 }
SGJ.QuestInfo[8951] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8952] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8953] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8954] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8955] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8956] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8957] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[8958] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8959] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 5, steps = 12 }
SGJ.QuestInfo[8999] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9000] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9001] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9002] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9003] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9004] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9005] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9006] = { start = "Deliana", zone = "Dun Morogh", x = 58.1, y = 29.5, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9007] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9008] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9009] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9010] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9011] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9012] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9013] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9014] = { start = "Mokvar", zone = "Orgrimmar", x = 34.9, y = 38.3, level = 60, req = 58, step = 12, steps = 12 }
SGJ.QuestInfo[9016] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[9017] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[9018] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[9019] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[9020] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[9021] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[9022] = { start = "Anthion Harmon", zone = "Eastern Plaguelands", x = 26.1, y = 11.3, level = 60, req = 58, step = 6, steps = 13 }
SGJ.QuestInfo[9023] = { start = "Dirk Thunderwood", zone = "Silithus", x = 52.1, y = 39.1, level = 60, req = 60 }
SGJ.QuestInfo[9034] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9036] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9037] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9038] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9039] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9040] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9041] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9042] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9043] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9044] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9045] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9046] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9047] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9048] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9049] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9050] = { start = "Commander Eligor Dawnbringer", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9053] = { start = "Torwa Pathfinder", zone = "Un'Goro Crater", x = 71.6, y = 76.0, level = 52, req = 50, step = 4, steps = 4 }
SGJ.QuestInfo[9054] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9055] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9056] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9057] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9058] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9059] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9060] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9061] = { start = "Huntsman Leopold", zone = "Eastern Plaguelands", x = 71.7, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9068] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9069] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9070] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9071] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9072] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9073] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9074] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9075] = { start = "Rimblat Earthshatter", zone = "Eastern Plaguelands", x = 71.3, y = 49.4, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9077] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9078] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9079] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9080] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9081] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9082] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9083] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9084] = { start = "Rohan the Assassin", zone = "Eastern Plaguelands", x = 71.6, y = 48.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9086] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9087] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9088] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9089] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9090] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9091] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9092] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9093] = { start = "Rayne", zone = "Eastern Plaguelands", x = 71.4, y = 49.3, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9094] = { start = "Argent Quartermaster", zone = "Dun Morogh", x = 55.8, y = 30.7, level = 60, req = 50, step = 2, steps = 2 }
SGJ.QuestInfo[9095] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9096] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9097] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9098] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9099] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9100] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9101] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9102] = { start = "Archmage Angela Dosantos", zone = "Eastern Plaguelands", x = 71.7, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9103] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9104] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9105] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9106] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9107] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9108] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9109] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9110] = { start = "Mataus the Wrathcaster", zone = "Eastern Plaguelands", x = 71.6, y = 48.7, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9111] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9112] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9113] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9114] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9115] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9116] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9117] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9118] = { start = "Father Inigo Montoy", zone = "Eastern Plaguelands", x = 71.7, y = 48.6, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9120] = { start = "an item: The Phylactery of Kel'Thuzad", level = 60, req = 60 }
SGJ.QuestInfo[9227] = { start = "Quartermaster Miranda Breechlock", zone = "Eastern Plaguelands", x = 71.8, y = 50.2, level = 60, req = 55 }
SGJ.QuestInfo[9228] = { start = "Quartermaster Miranda Breechlock", zone = "Eastern Plaguelands", x = 71.8, y = 50.2, level = 60, req = 55 }
SGJ.QuestInfo[9230] = { start = "Korfax, Champion of the Light", zone = "Eastern Plaguelands", x = 72.0, y = 48.5, level = 60, req = 60, step = 4, steps = 4 }
SGJ.QuestInfo[9232] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9234] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9235] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9236] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9237] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9238] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9239] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9240] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9241] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9242] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9243] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9244] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9245] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9246] = { start = "Craftsman Wilhelm", zone = "Eastern Plaguelands", x = 71.2, y = 49.9, level = 60, req = 60, step = 2, steps = 2 }
SGJ.QuestInfo[9248] = { start = "Aurel Goldleaf", zone = "Silithus", x = 52.0, y = 38.2, level = 60, req = 58 }
SGJ.QuestInfo[9257] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9269] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9270] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9271] = { start = "Anachronos", zone = "Tanaris", x = 65.3, y = 50.0, level = 60, req = 60, step = 3, steps = 3 }
SGJ.QuestInfo[9323] = { start = "Festival Flamekeeper", zone = "Orgrimmar", x = 42.6, y = 34.2, level = 60, req = 1 }
SGJ.QuestInfo[9339] = { start = "Festival Talespinner", zone = "Thunder Bluff", x = 21.5, y = 27.2, level = 60, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[76240] = { start = "Boarton Shadetotem", zone = "Thunder Bluff", x = 39.6, y = 65.6, level = 11, req = 4 }
SGJ.QuestInfo[78307] = { level = 23, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[79980] = { start = "Pocket Litter", zone = "Stonetalon Mountains", x = 40.8, y = 52.5, level = 24, req = 14, step = 3, steps = 6 }
SGJ.QuestInfo[86574] = { start = "Night Elf Courier", zone = "Stonetalon Mountains", x = 48.6, y = 39.8, level = 24, req = 20 }
SGJ.QuestInfo[86576] = { start = "Maggran Earthbinder", zone = "Stonetalon Mountains", x = 47.2, y = 61.0, level = 26, req = 18 }
SGJ.QuestInfo[86585] = { start = "Mountaineer Ylva", zone = "Loch Modan", x = 31.8, y = 86.2, level = 17, req = 10 }
SGJ.QuestInfo[86614] = { start = "Discarded Fishing Toolbox", zone = "Loch Modan", x = 48.0, y = 39.7, level = 20, req = 13 }
SGJ.QuestInfo[86758] = { start = "Marek Ironheart", zone = "Loch Modan", x = 81.8, y = 61.8, level = 16, req = 12 }
SGJ.QuestInfo[91285] = { start = "Breton Samuels", zone = "Tirisfal Glades", x = 21.8, y = 45.2, level = 11, req = 7, step = 1, steps = 2 }
SGJ.QuestInfo[91316] = { start = "Jorin Croge", zone = "Tirisfal Glades", x = 22.6, y = 44.8, level = 11, req = 8 }
SGJ.QuestInfo[91777] = { start = "Marshal Dughan", zone = "Elwynn Forest", x = 42.2, y = 65.8, level = 7, req = 1, step = 8, steps = 8 }
SGJ.QuestInfo[92401] = { start = "Tabitha Heartweaver", zone = "Silverpine Forest", x = 44.4, y = 42.8, level = 22, req = 15 }
SGJ.QuestInfo[92421] = { start = "Morbin Lightbane", zone = "Undercity", x = 57.8, y = 89.8, level = 22, req = 15 }
SGJ.QuestInfo[92422] = { start = "Deathguard Kristof", zone = "Tirisfal Glades", x = 65.2, y = 60.2, level = 22, req = 15 }
SGJ.QuestInfo[92456] = { level = 33, req = 24 }
SGJ.QuestInfo[92457] = { level = 33, req = 24 }
SGJ.QuestInfo[92458] = { level = 33, req = 24 }
SGJ.QuestInfo[92460] = { start = "Ailee Farheart", zone = "Zephras Isle", x = 42.8, y = 23.4, level = 1, req = 1, step = 1, steps = 2 }
SGJ.QuestInfo[92461] = { start = "Rorian the Dayseeker", zone = "Zephras Isle", x = 42.0, y = 23.4, level = 1, req = 1, step = 2, steps = 2 }
SGJ.QuestInfo[92463] = { start = "Elatrell Featherlight", zone = "Zephras Isle", x = 43.4, y = 24.8, level = 3, req = 2 }
SGJ.QuestInfo[92469] = { start = "Yala Windwatcher", zone = "Zephras Isle", x = 47.2, y = 21.8, level = 4, req = 3, step = 3, steps = 5 }
SGJ.QuestInfo[92470] = { start = "Aetheen of the Gales", zone = "Zephras Isle", x = 42.6, y = 23.6, level = 5, req = 2, step = 4, steps = 5 }
SGJ.QuestInfo[92473] = { start = "Valreaa Valewind", zone = "Zephras Isle", x = 42.4, y = 25.0, level = 4, req = 3 }
SGJ.QuestInfo[92489] = { start = "High Sorcerer Andromath", zone = "Stormwind City", x = 48.7, y = 87.6, level = 33, req = 24 }
SGJ.QuestInfo[92517] = { start = "Constable Aonda", zone = "Zephras Isle", x = 45.6, y = 45.4, level = 7, req = 4, step = 2, steps = 2 }
SGJ.QuestInfo[92528] = { start = "Missionary Jasaan", zone = "Zephras Isle", x = 46.8, y = 56.2, level = 8, req = 5, step = 3, steps = 5 }
SGJ.QuestInfo[92550] = { start = "Constable Aonda", zone = "Zephras Isle", x = 45.6, y = 45.4, level = 8, req = 5, step = 4, steps = 5 }
SGJ.QuestInfo[92579] = { start = "Constable Aonda", zone = "Zephras Isle", x = 45.6, y = 45.4, level = 8, req = 6, step = 5, steps = 5 }
SGJ.QuestInfo[92640] = { start = "Talaanis Shadowsong", zone = "Zephras Isle", x = 66.2, y = 76.6, level = 11, req = 6, step = 5, steps = 7 }
SGJ.QuestInfo[92644] = { start = "Dead Cultist", zone = "Zephras Isle", x = 56.0, y = 58.8, level = 11, req = 6, step = 3, steps = 7 }
SGJ.QuestInfo[92645] = { start = "Yorana Windyreed", zone = "Zephras Isle", x = 69.6, y = 67.0, level = 11, req = 6 }
SGJ.QuestInfo[92646] = { start = "Valennia Stormfist", zone = "Zephras Isle", x = 65.2, y = 50.4, level = 12, req = 7, step = 1, steps = 6 }
SGJ.QuestInfo[92683] = { start = "Aamelia Windfield", zone = "Zephras Isle", x = 46.6, y = 81.8, level = 9, req = 5 }
SGJ.QuestInfo[92684] = { start = "Aamelia Windfield", zone = "Zephras Isle", x = 46.6, y = 81.8, level = 9, req = 5 }
SGJ.QuestInfo[92703] = { start = "Aamelia Windfield", zone = "Zephras Isle", x = 46.6, y = 81.8, level = 9, req = 5, step = 2, steps = 2 }
SGJ.QuestInfo[92834] = { start = "Elaadrin Evengale", zone = "Zephras Isle", x = 66.6, y = 79.8, level = 11, req = 6, step = 5, steps = 6 }
SGJ.QuestInfo[92840] = { start = "Elaadrin Evengale", zone = "Zephras Isle", x = 66.6, y = 79.8, level = 11, req = 5, step = 4, steps = 6 }
SGJ.QuestInfo[92880] = { start = "Yorana Windyreed", zone = "Zephras Isle", x = 69.6, y = 67.0, level = 11, req = 6 }
SGJ.QuestInfo[93165] = { start = "Vayn Moongaze", zone = "Zephras Isle", x = 63.8, y = 36.0, level = 13, req = 8 }
SGJ.QuestInfo[93172] = { start = "Strange Hermit", zone = "Zephras Isle", x = 54.0, y = 39.0, level = 13, req = 8 }
SGJ.QuestInfo[93318] = { start = "Bounty Available: Vulgara the Insatiable!", zone = "Zephras Isle", x = 43.4, y = 45.8, level = 9, req = 4 }
SGJ.QuestInfo[93320] = { start = "Valennia Stormfist", zone = "Zephras Isle", x = 66.2, y = 76.6, level = 11, req = 6 }
SGJ.QuestInfo[93739] = { start = "Thrall", zone = "Orgrimmar", x = 32.0, y = 37.8, level = 13, req = 7, step = 6, steps = 6 }
SGJ.QuestInfo[93746] = { start = "Ayessa Dawnsinger", zone = "Zephras Isle", x = 59.0, y = 79.6, level = 9, req = 4 }
SGJ.QuestInfo[93797] = { start = "Belann Windwood", zone = "Zephras Isle", x = 62.8, y = 77.4, level = 10, req = 10, step = 2, steps = 2 }
SGJ.QuestInfo[93963] = { start = "Highlord Bolvar Fordragon", zone = "Stormwind City", x = 78.0, y = 18.0, level = 13, req = 7, step = 6, steps = 6 }
SGJ.QuestInfo[94003] = { start = "Seena Skybreaker", zone = "Zephras Isle", x = 59.8, y = 72.8, level = 10, req = 10 }
SGJ.QuestInfo[94411] = { start = "Illaya Amberwind", zone = "Zephras Isle", x = 43.6, y = 44.8, level = 6, req = 4 }
SGJ.QuestInfo[94413] = { start = "Rathiril Sunlance", zone = "Zephras Isle", x = 45.0, y = 46.4, level = 6, req = 4 }
SGJ.QuestInfo[95126] = { start = "Ott", zone = "Hillsbrad Foothills", x = 60.4, y = 26.0, level = 25, req = 20 }
SGJ.QuestInfo[95161] = { start = "Orphan Matron Nightingale", zone = "Stormwind City", x = 47.2, y = 38.4, level = 22, req = 15, step = 2, steps = 2 }
SGJ.QuestInfo[95195] = { start = "an item: Bloodied Insignia", level = 22, req = 16 }
SGJ.QuestInfo[95216] = { start = "Theodore Griffs", zone = "Undercity", x = 46.6, y = 72.0, level = 22, req = 16 }
SGJ.QuestInfo[95250] = { level = 21, req = 16 }
SGJ.QuestInfo[95508] = { start = "Walton", zone = "The Barrens", x = 42.0, y = 11.4, level = 18, req = 14 }
SGJ.QuestInfo[95646] = { start = "Rethiel the Greenwarden", zone = "Wetlands", x = 56.2, y = 40.5, level = 31, req = 24 }
SGJ.QuestInfo[95682] = { level = 31, req = 24 }
SGJ.QuestInfo[95697] = { start = "Borstan", zone = "Orgrimmar", x = 57.4, y = 53.4, level = 31, req = 24 }
SGJ.QuestInfo[95795] = { level = 31, req = 24 }
SGJ.QuestInfo[95885] = { start = "Offering Stone", zone = "Silverpine Forest", x = 58.1, y = 69.9, level = 23, req = 20, step = 3, steps = 3 }
SGJ.QuestInfo[95981] = { start = "Shadow Priest Allister", zone = "Silverpine Forest", x = 44.0, y = 41.0, level = 20, req = 10 }
SGJ.QuestInfo[95999] = { start = "Wanted: Incinerator Gar'im", zone = "Redridge Mountains", x = 24.4, y = 46.2, level = 25, req = 16 }
SGJ.QuestInfo[96130] = { start = "Yaw Sharpmane", zone = "Mulgore", x = 46.8, y = 59.6, level = 5, req = 4 }
SGJ.QuestInfo[96393] = { start = "Earthseer Farsen", zone = "Dun Morogh", x = 64.8, y = 58.4, level = 16, req = 9, step = 2, steps = 2 }
SGJ.QuestInfo[96394] = { start = "Afadra Dunwall", zone = "Ironforge", x = 33.0, y = 48.0, level = 15, req = 10 }
SGJ.QuestInfo[96395] = { level = 15, req = 10 }
SGJ.QuestInfo[96403] = { start = "Thom Filch", zone = "Ironforge", x = 32.4, y = 44.8, level = 15, req = 10 }
SGJ.QuestInfo[96984] = { level = 33, req = 24 }
SGJ.QuestInfo[96986] = { start = "Melisara", zone = "Hillsbrad Foothills", x = 62.6, y = 20.6, level = 33, req = 24 }
SGJ.QuestInfo[96988] = { start = "Doctor Martin Felben", zone = "Undercity", x = 46.6, y = 74.4, level = 33, req = 24 }
SGJ.QuestInfo[97003] = { start = "Gur'ak", zone = "The Barrens", x = 52.6, y = 29.0, level = 21, req = 15 }
SGJ.QuestInfo[97223] = { start = "Xar'Ti", zone = "Durotar", x = 55.2, y = 75.4, level = 8, req = 5 }
SGJ.QuestInfo[97225] = { start = "Master Vornal", zone = "Durotar", x = 55.8, y = 74.4, level = 9, req = 4 }
SGJ.QuestInfo[97250] = { start = "Grunt Logmar", zone = "The Barrens", x = 44.6, y = 59.2, level = 23, req = 18 }
SGJ.QuestInfo[97282] = { start = "Rezlak", zone = "Durotar", x = 46.4, y = 23.0, level = 11, req = 7, step = 2, steps = 2 }
SGJ.QuestInfo[97290] = { start = "Unfinished Abomination", zone = "Undercity", x = 46.0, y = 62.2, level = 21, req = 16, step = 3, steps = 5 }
SGJ.QuestInfo[97326] = { start = "Thra", zone = "Orgrimmar", x = 36.8, y = 29.0, level = 15, req = 5 }
SGJ.QuestInfo[97558] = { start = "Shelene Rhobart", zone = "Tirisfal Glades", x = 65.4, y = 60.0, level = 11, req = 6 }
SGJ.QuestInfo[98025] = { start = "WANTED: Murkdeep!", zone = "Darkshore", x = 37.2, y = 44.2, level = 13, req = 10 }
SGJ.QuestInfo[98028] = { start = "an item: Clouded Water Globe", level = 21, req = 17 }
SGJ.QuestInfo[98093] = { start = "Sulhasa", zone = "The Barrens", x = 47.8, y = 77.6, level = 23, req = 18 }
SGJ.QuestInfo[98095] = { level = 25, req = 19, step = 2, steps = 2 }
SGJ.QuestInfo[98191] = { level = 25, req = 20, step = 8, steps = 8 }
SGJ.QuestInfo[98208] = { start = "Sylessa Duskwhisper", zone = "Wetlands", x = 8.0, y = 55.8, level = 29, req = 22, step = 1, steps = 2 }
SGJ.QuestInfo[98298] = { start = "Dalar Dawnweaver", zone = "Silverpine Forest", x = 44.2, y = 39.8, level = 16, req = 9, step = 6, steps = 6 }
SGJ.QuestInfo[98326] = { start = "Gretta Ganter", zone = "Dun Morogh", x = 31.4, y = 44.6, level = 9, req = 5 }
SGJ.QuestInfo[98403] = { start = "Tallonkai Swiftroot", zone = "Teldrassil", x = 55.4, y = 56.8, level = 12, req = 4, step = 2, steps = 2 }
SGJ.QuestInfo[98435] = { start = "Mull Thunderhorn", zone = "Mulgore", x = 48.4, y = 60.4, level = 10, req = 4, step = 7, steps = 7 }
SGJ.QuestInfo[98545] = { start = "Leonid Barthalomew the Revered", zone = "Tirisfal Glades", x = 22.0, y = 44.8, level = 13, req = 10, step = 3, steps = 3 }
SGJ.QuestInfo[98823] = { level = 31, req = 24, step = 2, steps = 2 }
SGJ.QuestInfo[98824] = { level = 31, req = 24, step = 2, steps = 2 }
