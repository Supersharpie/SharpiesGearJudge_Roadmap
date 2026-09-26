local addonName, SGJ = ...

-- 2. INITIALIZE DB
SGJ.DungeonDB = SGJ.DungeonDB or {}

-- ============================================================
-- WOW FOREVER DUNGEONS (level 13-20 bracket)
-- Source: foreverchanges.pro/dungeons (beta build 1.60.1.70009, 2026-09-25)
-- Keys must match ZONE_META in Roadmap.lua
-- Only equippable drops are listed (quest items, keys, bags, pets, recipes skipped).
-- The Dataminer still adds anything else found in game on top of this.
-- ============================================================

SGJ.DungeonDB["Hall of Thanes"] = {
    [270227] = { name = "Ephemeral Choker", source = "Faldrim Anvilmar", slot = "Neck", type = "Amulet", zone = "Hall of Thanes", reqLevel = 13 },
    [271096] = { name = "Aetherwisp Bracers", source = "Faldrim Anvilmar", slot = "Wrist", type = "Cloth Armor", zone = "Hall of Thanes", reqLevel = 13 },
    [271097] = { name = "Spiritwraith Drape", source = "Faldrim Anvilmar", slot = "Back", type = "Cloak", zone = "Hall of Thanes", reqLevel = 13 },
    [270230] = { name = "Kindlegem Girdle", source = "Magmatus", slot = "Waist", type = "Mail Armor", zone = "Hall of Thanes", reqLevel = 13 },
    [270231] = { name = "Flamefist Grips", source = "Magmatus", slot = "Hands", type = "Leather Armor", zone = "Hall of Thanes", reqLevel = 13 },
    [271095] = { name = "Fang of Magmatus", source = "Magmatus", slot = "Main Hand", type = "Dagger", zone = "Hall of Thanes", reqLevel = 13 },
    [270228] = { name = "Golemheart Stave", source = "Plunder", slot = "Two-Hand", type = "Staff", zone = "Hall of Thanes", reqLevel = 13 },
    [270229] = { name = "Treads of the Protector Golem", source = "Plunder", slot = "Feet", type = "Mail Armor", zone = "Hall of Thanes", reqLevel = 13 },
    [271098] = { name = "Golemguard Chest", source = "Plunder", slot = "Chest", type = "Mail Armor", zone = "Hall of Thanes", reqLevel = 13 },
    [270256] = { name = "Durgen's Crescent Axe", source = "Durgen Dirgehammer", slot = "Main Hand", type = "One-Handed Axe", zone = "Hall of Thanes", reqLevel = 13 },
    [270260] = { name = "Direhammer Leggings", source = "Durgen Dirgehammer", slot = "Legs", type = "Leather Armor", zone = "Hall of Thanes", reqLevel = 13 },
    [270261] = { name = "Robes of the Disgraced Thane", source = "Durgen Dirgehammer", slot = "Chest", type = "Cloth Armor", zone = "Hall of Thanes", reqLevel = 13 }
}

SGJ.DungeonDB["Ragefire Chasm"] = {
    [272999] = { name = "Barbaric Crossbow", source = "Oggleflint", slot = "Ranged", type = "Crossbow", zone = "Ragefire Chasm", reqLevel = 13 },
    [272996] = { name = "Trogg Scepter", source = "Oggleflint", slot = "Main Hand", type = "One-Handed Mace", zone = "Ragefire Chasm", reqLevel = 13 },
    [272998] = { name = "Bone Knuckles", source = "Oggleflint", slot = "Main Hand", type = "Fist Weapon", zone = "Ragefire Chasm", reqLevel = 13 },
    [14149]  = { name = "Subterranean Cape", source = "Taragaman the Hungerer", slot = "Back", type = "Cloak", zone = "Ragefire Chasm", reqLevel = 13 },
    [14148]  = { name = "Crystalline Cuffs", source = "Taragaman the Hungerer", slot = "Wrist", type = "Cloth Armor", zone = "Ragefire Chasm", reqLevel = 13 },
    [14145]  = { name = "Cursed Felblade", source = "Taragaman the Hungerer", slot = "Main Hand", type = "One-Handed Sword", zone = "Ragefire Chasm", reqLevel = 13 },
    [14150]  = { name = "Robe of Evocation", source = "Jergosh the Invoker", slot = "Chest", type = "Cloth Armor", zone = "Ragefire Chasm", reqLevel = 13 },
    [14147]  = { name = "Cavedweller Bracers", source = "Jergosh the Invoker", slot = "Wrist", type = "Mail Armor", zone = "Ragefire Chasm", reqLevel = 13 },
    [14151]  = { name = "Chanting Blade", source = "Jergosh the Invoker", slot = "One-Hand", type = "Dagger", zone = "Ragefire Chasm", reqLevel = 13 },
    [273003] = { name = "Searing Dagger", source = "Bazzalan", slot = "Main Hand", type = "Dagger", zone = "Ragefire Chasm", reqLevel = 13 },
    [273005] = { name = "Satyrskin Cloak", source = "Bazzalan", slot = "Back", type = "Cloak", zone = "Ragefire Chasm", reqLevel = 13 },
    [273007] = { name = "Chasm Walkers", source = "Bazzalan", slot = "Feet", type = "Leather Armor", zone = "Ragefire Chasm", reqLevel = 13 }
}

SGJ.DungeonDB["Ruins of Lordaeron"] = {
    [271204] = { name = "Meathook Slicer", source = "The Baron", slot = "One-Hand", type = "Dagger", zone = "Ruins of Lordaeron", reqLevel = 15 },
    [271205] = { name = "Abomination Bones", source = "The Baron", slot = "Chest", type = "Mail Armor", zone = "Ruins of Lordaeron", reqLevel = 15 },
    [271206] = { name = "Leftover Abomination Skin", source = "The Baron", slot = "Chest", type = "Cloth Armor", zone = "Ruins of Lordaeron", reqLevel = 15 },
    [271201] = { name = "Atrophic Girdle", source = "Witherfang", slot = "Waist", type = "Mail Armor", zone = "Ruins of Lordaeron", reqLevel = 15 },
    [271202] = { name = "Witherbite Bracers", source = "Witherfang", slot = "Wrist", type = "Leather Armor", zone = "Ruins of Lordaeron", reqLevel = 15 },
    [271203] = { name = "Segmented Spider Leg", source = "Witherfang", slot = "Two-Hand", type = "Staff", zone = "Ruins of Lordaeron", reqLevel = 15 },
    [271207] = { name = "Rotmender's Leggings", source = "The Abandoned", slot = "Legs", type = "Cloth Armor", zone = "Ruins of Lordaeron", reqLevel = 17 },
    [271208] = { name = "Grip of Fear", source = "The Abandoned", slot = "Hands", type = "Mail Armor", zone = "Ruins of Lordaeron", reqLevel = 17 },
    [271216] = { name = "Scepter of the Abandoned", source = "The Abandoned", slot = "Main Hand", type = "One-Handed Mace", zone = "Ruins of Lordaeron", reqLevel = 17 },
    [271209] = { name = "Bonerust Leggings", source = "Bjork", slot = "Legs", type = "Mail Armor", zone = "Ruins of Lordaeron", reqLevel = 16 },
    [271210] = { name = "Tuskwrap Belt", source = "Bjork", slot = "Waist", type = "Cloth Armor", zone = "Ruins of Lordaeron", reqLevel = 16 },
    [271217] = { name = "Corpse Chopper", source = "Bjork", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Ruins of Lordaeron", reqLevel = 16 },
    [271213] = { name = "Mirror of Rath'mael", source = "Rath'mael", slot = "Shield", type = "Shield", zone = "Ruins of Lordaeron", reqLevel = 19 },
    [271214] = { name = "Rotmender's Treads", source = "Rath'mael", slot = "Feet", type = "Cloth Armor", zone = "Ruins of Lordaeron", reqLevel = 19 },
    [271215] = { name = "Coldspire Staff", source = "Rath'mael", slot = "Two-Hand", type = "Staff", zone = "Ruins of Lordaeron", reqLevel = 19 },
    [271211] = { name = "Vilewalkers", source = "Viktor the Vile", slot = "Feet", type = "Mail Armor", zone = "Ruins of Lordaeron", reqLevel = 17 },
    [271212] = { name = "Bloodied Chestwraps", source = "Viktor the Vile", slot = "Chest", type = "Leather Armor", zone = "Ruins of Lordaeron", reqLevel = 17 },
    [271218] = { name = "Vileblood Scimitar", source = "Viktor the Vile", slot = "One-Hand", type = "One-Handed Sword", zone = "Ruins of Lordaeron", reqLevel = 17 },
    [6641]   = { name = "Haunting Blade", source = "Lordaeron Captain", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Ruins of Lordaeron", reqLevel = 22 },
    [6642]   = { name = "Phantom Armor", source = "Lordaeron Captain", slot = "Chest", type = "Mail Armor", zone = "Ruins of Lordaeron", reqLevel = 22 }
}

SGJ.DungeonDB["Wailing Caverns"] = {
    [6460]   = { name = "Cobrahn's Grasp", source = "Lord Cobrahn", slot = "Waist", type = "Mail Armor", zone = "Wailing Caverns", reqLevel = 17 },
    [10410]  = { name = "Leggings of the Fang", source = "Lord Cobrahn", slot = "Legs", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 17 },
    [6465]   = { name = "Robe of the Moccasin", source = "Lord Cobrahn", slot = "Chest", type = "Cloth Armor", zone = "Wailing Caverns", reqLevel = 17 },
    [10412]  = { name = "Belt of the Fang", source = "Lady Anacondra", slot = "Waist", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 16 },
    [5404]   = { name = "Serpent's Shoulders", source = "Lady Anacondra", slot = "Shoulder", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 18 },
    [273088] = { name = "Snake Eye Kaleidoscope", source = "Lady Anacondra", slot = "Neck", type = "Amulet", zone = "Wailing Caverns", reqLevel = 17 },
    [13245]  = { name = "Kresh's Back", source = "Kresh", slot = "Shield", type = "Shield", zone = "Wailing Caverns", reqLevel = 18 },
    [6447]   = { name = "Worn Turtle Shell Shield", source = "Kresh", slot = "Shield", type = "Shield", zone = "Wailing Caverns", reqLevel = 16 },
    [273084] = { name = "Cloak of Hermitic Bliss", source = "Kresh", slot = "Back", type = "Cloak", zone = "Wailing Caverns", reqLevel = 17 },
    [6472]   = { name = "Stinging Viper", source = "Lord Pythas", slot = "One-Hand", type = "One-Handed Mace", zone = "Wailing Caverns", reqLevel = 19 },
    [6473]   = { name = "Armor of the Fang", source = "Lord Pythas", slot = "Chest", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 18 },
    [273089] = { name = "Slither Cord", source = "Lord Pythas", slot = "Waist", type = "Cloth Armor", zone = "Wailing Caverns", reqLevel = 17 },
    [6449]   = { name = "Glowing Lizardscale Cloak", source = "Skum", slot = "Back", type = "Cloak", zone = "Wailing Caverns", reqLevel = 18 },
    [6448]   = { name = "Tail Spike", source = "Skum", slot = "One-Hand", type = "Dagger", zone = "Wailing Caverns", reqLevel = 17 },
    [273137] = { name = "Skum's Bucket", source = "Skum", slot = "Held In Off-hand", type = "Off-hand Frill", zone = "Wailing Caverns", reqLevel = 17 },
    [6469]   = { name = "Venomstrike", source = "Lord Serpentis", slot = "Ranged", type = "Bow", zone = "Wailing Caverns", reqLevel = 19 },
    [5970]   = { name = "Serpent Gloves", source = "Lord Serpentis", slot = "Hands", type = "Cloth Armor", zone = "Wailing Caverns", reqLevel = 18 },
    [10411]  = { name = "Footpads of the Fang", source = "Lord Serpentis", slot = "Feet", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 17 },
    [6459]   = { name = "Savage Trodders", source = "Lord Serpentis", slot = "Feet", type = "Mail Armor", zone = "Wailing Caverns", reqLevel = 18 },
    [6630]   = { name = "Seedcloud Buckler", source = "Verdan the Everliving", slot = "Shield", type = "Shield", zone = "Wailing Caverns", reqLevel = 19 },
    [6631]   = { name = "Living Root", source = "Verdan the Everliving", slot = "Two-Hand", type = "Staff", zone = "Wailing Caverns", reqLevel = 18 },
    [6629]   = { name = "Sporid Cape", source = "Verdan the Everliving", slot = "Back", type = "Cloak", zone = "Wailing Caverns", reqLevel = 17 },
    [6461]   = { name = "Slime-encrusted Pads", source = "Mutanus the Devourer", slot = "Shoulder", type = "Cloth Armor", zone = "Wailing Caverns", reqLevel = 20 },
    [6627]   = { name = "Mutant Scale Breastplate", source = "Mutanus the Devourer", slot = "Chest", type = "Mail Armor", zone = "Wailing Caverns", reqLevel = 18 },
    [6463]   = { name = "Deep Fathom Ring", source = "Mutanus the Devourer", slot = "Finger", type = "Ring", zone = "Wailing Caverns", reqLevel = 19 },
    [5243]   = { name = "Firebelcher", source = "Deviate Faerie Dragon", slot = "Ranged", type = "Wand", zone = "Wailing Caverns", reqLevel = 18 },
    [6632]   = { name = "Feyscale Cloak", source = "Deviate Faerie Dragon", slot = "Back", type = "Cloak", zone = "Wailing Caverns", reqLevel = 16 },
    [10413]  = { name = "Gloves of the Fang", source = "Zone Drop", slot = "Hands", type = "Leather Armor", zone = "Wailing Caverns", reqLevel = 14 }
}

SGJ.DungeonDB["Deadmines"] = {
    [872]    = { name = "Rockslicer", source = "Rhahk'Zor", slot = "Two-Hand", type = "Two-Handed Axe", zone = "The Deadmines", reqLevel = 18 },
    [5187]   = { name = "Rhahk'Zor's Hammer", source = "Rhahk'Zor", slot = "Two-Hand", type = "Two-Handed Mace", zone = "The Deadmines", reqLevel = 16 },
    [273289] = { name = "Ogre Loincloth", source = "Rhahk'Zor", slot = "Legs", type = "Cloth Armor", zone = "The Deadmines", reqLevel = 17 },
    [5443]   = { name = "Gold-plated Buckler", source = "Miner Johnson", slot = "Shield", type = "Shield", zone = "The Deadmines", reqLevel = 17 },
    [5444]   = { name = "Miner's Cape", source = "Miner Johnson", slot = "Back", type = "Cloak", zone = "The Deadmines", reqLevel = 17 },
    [5194]   = { name = "Taskmaster Axe", source = "Sneed", slot = "Two-Hand", type = "Two-Handed Axe", zone = "The Deadmines", reqLevel = 18 },
    [5195]   = { name = "Gold-flecked Gloves", source = "Sneed", slot = "Hands", type = "Cloth Armor", zone = "The Deadmines", reqLevel = 17 },
    [273293] = { name = "Bandsaw Wristbands", source = "Sneed", slot = "Wrist", type = "Mail Armor", zone = "The Deadmines", reqLevel = 16 },
    [1937]   = { name = "Buzz Saw", source = "Sneed's Shredder", slot = "One-Hand", type = "One-Handed Sword", zone = "The Deadmines", reqLevel = 18 },
    [2169]   = { name = "Buzzer Blade", source = "Sneed's Shredder", slot = "Main Hand", type = "Dagger", zone = "The Deadmines", reqLevel = 16 },
    [285292] = { name = "Dull Sawblade", source = "Sneed's Shredder", slot = "Thrown", type = "Thrown Weapon", zone = "The Deadmines", reqLevel = 16 },
    [1156]   = { name = "Lavishly Jeweled Ring", source = "Gilnid", slot = "Finger", type = "Ring", zone = "The Deadmines", reqLevel = 17 },
    [5199]   = { name = "Smelting Pants", source = "Gilnid", slot = "Legs", type = "Leather Armor", zone = "The Deadmines", reqLevel = 16 },
    [273297] = { name = "Goblin Hammer", source = "Gilnid", slot = "Main Hand", type = "One-Handed Mace", zone = "The Deadmines", reqLevel = 18 },
    [7230]   = { name = "Smite's Mighty Hammer", source = "Mr. Smite", slot = "Two-Hand", type = "Two-Handed Mace", zone = "The Deadmines", reqLevel = 18 },
    [5192]   = { name = "Thief's Blade", source = "Mr. Smite", slot = "One-Hand", type = "One-Handed Sword", zone = "The Deadmines", reqLevel = 17 },
    [5196]   = { name = "Smite's Reaver", source = "Mr. Smite", slot = "One-Hand", type = "One-Handed Axe", zone = "The Deadmines", reqLevel = 17 },
    [284715] = { name = "First Mate Band", source = "Mr. Smite", slot = "Finger", type = "Ring", zone = "The Deadmines", reqLevel = 17 },
    [5201]   = { name = "Emberstone Staff", source = "Captain Greenskin", slot = "Two-Hand", type = "Staff", zone = "The Deadmines", reqLevel = 17 },
    [10403]  = { name = "Blackened Defias Belt", source = "Captain Greenskin", slot = "Waist", type = "Leather Armor", zone = "The Deadmines", reqLevel = 17 },
    [5200]   = { name = "Impaling Harpoon", source = "Captain Greenskin", slot = "Two-Hand", type = "Polearm", zone = "The Deadmines", reqLevel = 17 },
    [5193]   = { name = "Cape of the Brotherhood", source = "Edwin VanCleef", slot = "Back", type = "Cloak", zone = "The Deadmines", reqLevel = 19 },
    [5202]   = { name = "Corsair's Overshirt", source = "Edwin VanCleef", slot = "Chest", type = "Cloth Armor", zone = "The Deadmines", reqLevel = 17 },
    [10399]  = { name = "Blackened Defias Armor", source = "Edwin VanCleef", slot = "Chest", type = "Leather Armor", zone = "The Deadmines", reqLevel = 17 },
    [5191]   = { name = "Cruel Barb", source = "Edwin VanCleef", slot = "One-Hand", type = "One-Handed Sword", zone = "The Deadmines", reqLevel = 19 },
    [5198]   = { name = "Cookie's Stirring Rod", source = "Cookie", slot = "Ranged", type = "Wand", zone = "The Deadmines", reqLevel = 17 },
    [5197]   = { name = "Cookie's Tenderizer", source = "Cookie", slot = "One-Hand", type = "One-Handed Mace", zone = "The Deadmines", reqLevel = 16 },
    [273298] = { name = "Lookie's Spyglass", source = "Cookie", slot = "Trinket", type = "Trinket", zone = "The Deadmines", reqLevel = 18 },
    [1934]   = { name = "Stonemason Trousers", source = "Zone Drop", slot = "Legs", type = "Leather Armor", zone = "The Deadmines", reqLevel = 15 },
    [10402]  = { name = "Blackened Defias Boots", source = "Zone Drop", slot = "Feet", type = "Leather Armor", zone = "The Deadmines", reqLevel = 15 },
    [1943]   = { name = "Goblin Mail Leggings", source = "Zone Drop", slot = "Legs", type = "Mail Armor", zone = "The Deadmines", reqLevel = 14 },
    [1951]   = { name = "Blackwater Cutlass", source = "Zone Drop", slot = "One-Hand", type = "One-Handed Sword", zone = "The Deadmines", reqLevel = 14 },
    [10400]  = { name = "Blackened Defias Leggings", source = "Zone Drop", slot = "Legs", type = "Leather Armor", zone = "The Deadmines", reqLevel = 14 },
    [10401]  = { name = "Blackened Defias Gloves", source = "Zone Drop", slot = "Hands", type = "Leather Armor", zone = "The Deadmines", reqLevel = 14 },
    [1929]   = { name = "Silk-threaded Trousers", source = "Zone Drop", slot = "Legs", type = "Cloth Armor", zone = "The Deadmines", reqLevel = 13 },
    [1930]   = { name = "Stonemason Cloak", source = "Zone Drop", slot = "Back", type = "Cloak", zone = "The Deadmines", reqLevel = 13 },
    [1936]   = { name = "Goblin Screwdriver", source = "Zone Drop", slot = "One-Hand", type = "Dagger", zone = "The Deadmines", reqLevel = 13 },
    [1944]   = { name = "Metalworking Gloves", source = "Zone Drop", slot = "Hands", type = "Leather Armor", zone = "The Deadmines", reqLevel = 13 },
    [1945]   = { name = "Woodworking Gloves", source = "Zone Drop", slot = "Hands", type = "Leather Armor", zone = "The Deadmines", reqLevel = 13 },
    [1925]   = { name = "Defias Rapier", source = "Zone Drop", slot = "Main Hand", type = "One-Handed Sword", zone = "The Deadmines", reqLevel = 11 }
}
