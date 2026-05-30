local addonName, SGJ = ...

-- 2. INITIALIZE DB
SGJ.DungeonDB = SGJ.DungeonDB or {}

SGJ.DungeonDB["Elwynn Forest Quests"] = {
-- ==========================================
-- ALLIANCE: ELWYNN FOREST
-- ==========================================
-- Wanted: "Hogger" (Pick One)
[6215] = { name = "Heavy Spiked Mace", source = "Wanted: \"Hogger\"", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 176 },
[6084] = { name = "Webbed Cloak", source = "Wanted: \"Hogger\"", slot = "Back", type = "Cloak", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 176 },
[6085] = { name = "Defias Mage Wand", source = "Wanted: \"Hogger\"", slot = "Ranged", type = "Wand", zone = "Elwynn Forest Quests", reqLevel = 5, questID = 176 },

-- Princess Must Die! (Pick One)
[11191] = { name = "Brass-studded Bracers", source = "Princess Must Die!", slot = "Wrist", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 86 },
[1173] = { name = "Ruffled Chemise", source = "Princess Must Die!", slot = "Chest", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 86 },
[1182] = { name = "Brass-studded Legguards", source = "Princess Must Die!", slot = "Legs", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 86 },

-- Manhunt (Pick One)
[1360] = { name = "Cape of the Brotherhood", source = "Manhunt", slot = "Back", type = "Cloak", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 147 },
[1183] = { name = "Belt of the People's Militia", source = "Manhunt", slot = "Waist", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 147 },

-- Bounty on Garrick Padfoot (Pick One)
[3070] = { name = "Handstitched Leather Cloak", source = "Bounty on Garrick Padfoot", slot = "Back", type = "Cloak", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 6 },
[60] = { name = "Painted Chain Gloves", source = "Bounty on Garrick Padfoot", slot = "Hands", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 6 },
[6076] = { name = "Padded Boots", source = "Bounty on Garrick Padfoot", slot = "Feet", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 6 },

-- Wolves Across the Border (Pick One)
[6070] = { name = "Wolf-mane Wristguards", source = "Wolves Across the Border", slot = "Wrist", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 39 },
[80] = { name = "Soft Fur-lined Shoes", source = "Wolves Across the Border", slot = "Feet", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 39 },

-- Riverpaw Gnoll Bounty (Pick One)
[2249] = { name = "Rust-flecked Chain", source = "Riverpaw Gnoll Bounty", slot = "Chest", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 88 },
[2238] = { name = "Black Bear Hide Dress", source = "Riverpaw Gnoll Bounty", slot = "Chest", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 6, questID = 88 },

-- Cloth and Leather Armor (Pick One)
[1171] = { name = "Rough Leather Pants", source = "Cloth and Leather Armor", slot = "Legs", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 89 },
[2237] = { name = "Heavy Weave Armor", source = "Cloth and Leather Armor", slot = "Chest", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 89 },

-- Brotherhood of Thieves (Pick One)
[1159] = { name = "Brawler's Boots", source = "Brotherhood of Thieves", slot = "Feet", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18 },
[5579] = { name = "Dirty Leather Bracers", source = "Brotherhood of Thieves", slot = "Wrist", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18 },
[2224] = { name = "Faded Cloth Belt", source = "Brotherhood of Thieves", slot = "Waist", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18 },
[5580] = { name = "Rough Wooden Shield", source = "Brotherhood of Thieves", slot = "Shield", type = "Shield", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18 },
[1161] = { name = "Brawler's Pants", source = "Brotherhood of Thieves", slot = "Legs", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 18 },

-- Bounty on Murlocs (Pick One)
[4840] = { name = "Murloc Scale Belt", source = "Bounty on Murlocs", slot = "Waist", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 46 },
[1158] = { name = "Brawler's Gloves", source = "Bounty on Murlocs", slot = "Hands", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 46 },
[1008] = { name = "Brawler's Harness", source = "Bounty on Murlocs", slot = "Chest", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 7, questID = 46 },

-- Skirmish at Echo Ridge (Pick One)
[2186] = { name = "Patched Leather Bracers", source = "Skirmish at Echo Ridge", slot = "Wrist", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 7 },
[2691] = { name = "Frayed Shoes", source = "Skirmish at Echo Ridge", slot = "Feet", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 7 },
[11192] = { name = "Frayed Pants", source = "Skirmish at Echo Ridge", slot = "Legs", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 1, questID = 7 },

-- Grape Manifest (Pick One)
[11475] = { name = "Flimsy Chain Vest", source = "Grape Manifest", slot = "Chest", type = "Mail Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 62 },
[2690] = { name = "Handstitched Leather Boots", source = "Grape Manifest", slot = "Feet", type = "Leather Armor", zone = "Elwynn Forest Quests", reqLevel = 2, questID = 62 },

-- Red Linen Goods (Guaranteed Both - NO QUEST ID APPLIED)
[983] = { name = "Red Linen Vest", source = "Red Linen Goods", slot = "Chest", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 4 },
[2575] = { name = "Red Linen Bandana", source = "Red Linen Goods", slot = "Head", type = "Cloth Armor", zone = "Elwynn Forest Quests", reqLevel = 4 },

-- Goldtooth (Only 1 Reward - NO QUEST ID NEEDED)
[1359] = { name = "Goldtooth's Flensing Knife", source = "Goldtooth", slot = "Main Hand", type = "Dagger", zone = "Elwynn Forest Quests", reqLevel = 5 },

-- Report to Goldshire (Only 1 Reward - NO QUEST ID NEEDED)
[6078] = { name = "Elwynn Bamboo Wand", source = "Report to Goldshire", slot = "Ranged", type = "Wand", zone = "Elwynn Forest Quests", reqLevel = 1 },
}

SGJ.DungeonDB["Dun Morogh Quests"] = {
-- ==========================================
-- ALLIANCE: DUN MOROGH
-- ==========================================
-- The Troll Cave (Pick One)
[5761] = { name = "Anvilmar Sledge", source = "The Troll Cave", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Dun Morogh Quests", reqLevel = 1, questID = 179 },
[2195] = { name = "Anvilmar Knife", source = "The Troll Cave", slot = "One-Hand", type = "Dagger", zone = "Dun Morogh Quests", reqLevel = 1, questID = 179 },
[2047] = { name = "Anvilmar Hand Axe", source = "The Troll Cave", slot = "One-Hand", type = "One-Handed Axe", zone = "Dun Morogh Quests", reqLevel = 1, questID = 179 },
[2048] = { name = "Anvilmar Hammer", source = "The Troll Cave", slot = "One-Hand", type = "One-Handed Mace", zone = "Dun Morogh Quests", reqLevel = 1, questID = 179 },

-- Protecting the Herd (Pick One)
[3103] = { name = "Coldridge Hammer", source = "Protecting the Herd", slot = "Main Hand", type = "One-Handed Mace", zone = "Dun Morogh Quests", reqLevel = 6, questID = 400 },
[2817] = { name = "Soft Leather Tunic", source = "Protecting the Herd", slot = "Chest", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 6, questID = 400 },
[10549] = { name = "Rancher's Trousers", source = "Protecting the Herd", slot = "Legs", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 6, questID = 400 },

-- Dwarven Outfitters (Pick One)
[2547] = { name = "Boar Handler Gloves", source = "Dwarven Outfitters", slot = "Hands", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 170 },
[6171] = { name = "Wolf Handler Gloves", source = "Dwarven Outfitters", slot = "Hands", type = "Mail Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 170 },
[719] = { name = "Rabbit Handler Gloves", source = "Dwarven Outfitters", slot = "Hands", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 170 },

-- Return to Bellowfiz (Pick One)
[10547] = { name = "Camping Knife", source = "Return to Bellowfiz", slot = "One-Hand", type = "Dagger", zone = "Dun Morogh Quests", reqLevel = 2, questID = 308 },
[1010] = { name = "Gnarled Short Staff", source = "Return to Bellowfiz", slot = "Two-Hand", type = "Staff", zone = "Dun Morogh Quests", reqLevel = 2, questID = 308 },
[1011] = { name = "Sharp Axe", source = "Return to Bellowfiz", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Dun Morogh Quests", reqLevel = 2, questID = 308 },

-- A New Threat (Pick One)
[6173] = { name = "Snow Boots", source = "A New Threat", slot = "Feet", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 175 },
[2172] = { name = "Rustic Belt", source = "A New Threat", slot = "Waist", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 175 },
[6185] = { name = "Bear Shawl", source = "A New Threat", slot = "Back", type = "Cloak", zone = "Dun Morogh Quests", reqLevel = 1, questID = 175 },

-- Frostmane Hold (Pick One)
[2900] = { name = "Stone Buckler", source = "Frostmane Hold", slot = "Shield", type = "Shield", zone = "Dun Morogh Quests", reqLevel = 7, questID = 287 },
[3216] = { name = "Warm Winter Robe", source = "Frostmane Hold", slot = "Chest", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 287 },

-- The Perfect Stout (Pick One)
[2326] = { name = "Ivy-weave Bracers", source = "The Perfect Stout", slot = "Wrist", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 5, questID = 311 },
[2905] = { name = "Goat Fur Cloak", source = "The Perfect Stout", slot = "Back", type = "Cloak", zone = "Dun Morogh Quests", reqLevel = 5, questID = 311 },

-- The Stolen Journal (Pick One)
[5581] = { name = "Smooth Walking Staff", source = "The Stolen Journal", slot = "Two-Hand", type = "Staff", zone = "Dun Morogh Quests", reqLevel = 1, questID = 216 },
[6176] = { name = "Dwarven Kite Shield", source = "The Stolen Journal", slot = "Shield", type = "Shield", zone = "Dun Morogh Quests", reqLevel = 1, questID = 216 },

-- Tundra MacGrann's Stolen Stash (Pick One)
[10550] = { name = "Wooly Mittens", source = "Tundra MacGrann's Stolen Stash", slot = "Hands", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 281 },
[6177] = { name = "Ironwrought Bracers", source = "Tundra MacGrann's Stolen Stash", slot = "Wrist", type = "Mail Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 281 },

-- A Pilot's Revenge (Pick One)
[1009] = { name = "Compact Hammer", source = "A Pilot's Revenge", slot = "One-Hand", type = "One-Handed Mace", zone = "Dun Morogh Quests", reqLevel = 8, questID = 272 },
[2218] = { name = "Craftsman's Dagger", source = "A Pilot's Revenge", slot = "One-Hand", type = "Dagger", zone = "Dun Morogh Quests", reqLevel = 8, questID = 272 },

-- The Boar Hunter (Pick One)
[61] = { name = "Dwarven Leather Pants", source = "The Boar Hunter", slot = "Legs", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 180 },
[79] = { name = "Dwarven Cloth Britches", source = "The Boar Hunter", slot = "Legs", type = "Cloth Armor", zone = "Dun Morogh Quests", reqLevel = 1, questID = 180 },

-- Operation Recombobulation (Pick One)
[3153] = { name = "Oil-stained Cloak", source = "Operation Recombobulation", slot = "Back", type = "Cloak", zone = "Dun Morogh Quests", reqLevel = 7, questID = 412 },
[3152] = { name = "Driving Gloves", source = "Operation Recombobulation", slot = "Hands", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 7, questID = 412 },

-- Search for Incendicite (Guaranteed)
[3565] = { name = "Beerstained Gloves", source = "Search for Incendicite", slot = "Hands", type = "Leather Armor", zone = "Dun Morogh Quests", reqLevel = 20 },

-- The Lost Pilot (Guaranteed)
[3151] = { name = "Siege Brigade Vest", source = "The Lost Pilot", slot = "Chest", type = "Mail Armor", zone = "Dun Morogh Quests", reqLevel = 8 },

}

SGJ.DungeonDB["Teldrassil Quests"] = {
-- ==========================================
-- ALLIANCE: TELDRASSIL
-- ==========================================
-- Webwood Venom (Pick One)
[5586] = { name = "Thistlewood Blade", source = "Webwood Venom", slot = "One-Hand", type = "One-Handed Sword", zone = "Teldrassil Quests", reqLevel = 3, questID = 488 },
[5393] = { name = "Thistlewood Staff", source = "Webwood Venom", slot = "Two-Hand", type = "Staff", zone = "Teldrassil Quests", reqLevel = 3, questID = 488 },
[5392] = { name = "Thistlewood Dagger", source = "Webwood Venom", slot = "One-Hand", type = "Dagger", zone = "Teldrassil Quests", reqLevel = 3, questID = 488 },
[10544] = { name = "Thistlewood Maul", source = "Webwood Venom", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Teldrassil Quests", reqLevel = 3, questID = 488 },

-- The Woodland Protector (Pick One)
[11190] = { name = "Viny Gloves", source = "The Woodland Protector", slot = "Hands", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 489 },
[5399] = { name = "Tracking Boots", source = "The Woodland Protector", slot = "Feet", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 489 },
[5398] = { name = "Canopy Leggings", source = "The Woodland Protector", slot = "Legs", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 489 },

-- Mist (Pick One)
[5618] = { name = "Scout's Cloak", source = "Mist", slot = "Back", type = "Cloak", zone = "Teldrassil Quests", reqLevel = 7, questID = 933 },
[5593] = { name = "Crag Buckler", source = "Mist", slot = "Shield", type = "Shield", zone = "Teldrassil Quests", reqLevel = 7, questID = 933 },
[5590] = { name = "Cord Bracers", source = "Mist", slot = "Wrist", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 7, questID = 933 },

-- Webwood Egg (Pick One)
[11189] = { name = "Woodland Robes", source = "Webwood Egg", slot = "Chest", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 456 },
[4907] = { name = "Woodland Tunic", source = "Webwood Egg", slot = "Chest", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 456 },
[5395] = { name = "Woodland Shield", source = "Webwood Egg", slot = "Shield", type = "Shield", zone = "Teldrassil Quests", reqLevel = 1, questID = 456 },

-- Ursal the Mauler (Pick One)
[5459] = { name = "Defender Axe", source = "Ursal the Mauler", slot = "Two-Hand", type = "Two-Handed Axe", zone = "Teldrassil Quests", reqLevel = 4, questID = 938 },
[5587] = { name = "Thornroot Club", source = "Ursal the Mauler", slot = "Main Hand", type = "One-Handed Mace", zone = "Teldrassil Quests", reqLevel = 4, questID = 938 },

-- The Relics of Wakening (Pick One)
[9603] = { name = "Gritroot Staff", source = "The Relics of Wakening", slot = "Two-Hand", type = "Staff", zone = "Teldrassil Quests", reqLevel = 4, questID = 487 },
[9599] = { name = "Barkmail Leggings", source = "The Relics of Wakening", slot = "Legs", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 487 },

-- Twisted Hatred (Pick One)
[2571] = { name = "Viny Wrappings", source = "Twisted Hatred", slot = "Wrist", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 2459 },
[5419] = { name = "Feral Bracers", source = "Twisted Hatred", slot = "Wrist", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 2459 },

-- Oakenscowl (Pick One)
[5589] = { name = "Moss-covered Gauntlets", source = "Oakenscowl", slot = "Hands", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 918 },
[5458] = { name = "Dirtwood Belt", source = "Oakenscowl", slot = "Waist", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 918 },

-- Druid of the Claw (Pick One)
[9598] = { name = "Sleeping Robes", source = "Druid of the Claw", slot = "Chest", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 3, questID = 928 },
[18957] = { name = "Brushwood Blade", source = "Druid of the Claw", slot = "One-Hand", type = "Dagger", zone = "Teldrassil Quests", reqLevel = 3, questID = 928 },

-- Crown of the Earth (Pick One)
[5595] = { name = "Thicket Hammer", source = "Crown of the Earth", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Teldrassil Quests", reqLevel = 1, questID = 932 },
[5596] = { name = "Ashwood Bow", source = "Crown of the Earth", slot = "Ranged", type = "Bow", zone = "Teldrassil Quests", reqLevel = 1, questID = 932 },

-- The Balance of Nature (Part 2) (Pick One)
[6058] = { name = "Blackened Leather Belt", source = "The Balance of Nature", slot = "Waist", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 454 },
[5405] = { name = "Draped Cloak", source = "The Balance of Nature", slot = "Back", type = "Cloak", zone = "Teldrassil Quests", reqLevel = 1, questID = 454 },

-- Iverron's Antidote (Pick One)
[10655] = { name = "Sedgeweed Britches", source = "Iverron's Antidote", slot = "Legs", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 2, questID = 483 },
[10656] = { name = "Barkmail Vest", source = "Iverron's Antidote", slot = "Chest", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 2, questID = 483 },

-- The Enchanted Glade (Pick One)
[5592] = { name = "Shackled Girdle", source = "The Enchanted Glade", slot = "Waist", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 6, questID = 921 },
[5591] = { name = "Rain-spotted Cape", source = "The Enchanted Glade", slot = "Back", type = "Cloak", zone = "Teldrassil Quests", reqLevel = 6, questID = 921 },

-- The Balance of Nature (Part 1) (Pick One)
[5394] = { name = "Archery Training Gloves", source = "The Balance of Nature", slot = "Hands", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 453 },
[11187] = { name = "Stemleaf Bracers", source = "The Balance of Nature", slot = "Wrist", type = "Cloth Armor", zone = "Teldrassil Quests", reqLevel = 1, questID = 453 },

-- Timberling Sprouts (Pick One)
[5606] = { name = "Gardening Gloves", source = "Timberling Sprouts", slot = "Hands", type = "Leather Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 486 },
[6061] = { name = "Graystone Bracers", source = "Timberling Sprouts", slot = "Wrist", type = "Mail Armor", zone = "Teldrassil Quests", reqLevel = 4, questID = 486 },

-- Tumors (Guaranteed)
[5605] = { name = "Pruning Knife", source = "Tumors", slot = "One-Hand", type = "Dagger", zone = "Teldrassil Quests", reqLevel = 4 },

}

SGJ.DungeonDB["Bloodmyst Isle Quests"] = {
-- ==========================================
-- ALLIANCE: BLOODMYST ISLE
-- ==========================================
-- Ending Their World (Pick One)
[24352] = { name = "Blade of the Hand", source = "Ending Their World", slot = "One-Hand", type = "One-Handed Sword", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9759 },
[24353] = { name = "Crossbow of the Hand", source = "Ending Their World", slot = "Ranged", type = "Crossbow", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9759 },
[24351] = { name = "Mace of the Hand", source = "Ending Their World", slot = "One-Hand", type = "One-Handed Mace", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9759 },
[24354] = { name = "Staff of the Hand", source = "Ending Their World", slot = "Two-Hand", type = "Staff", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9759 },

-- A Favorite Treat (Pick One)
[26018] = { name = "Elekk Handler's Leathers", source = "A Favorite Treat", slot = "Chest", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 9, questID = 9631 },
[26004] = { name = "Farmhand's Vest", source = "A Favorite Treat", slot = "Chest", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 9, questID = 9631 },
[26031] = { name = "Elekk Rider's Mail", source = "A Favorite Treat", slot = "Chest", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 9, questID = 9631 },

-- Alien Predators (Pick One)
[26051] = { name = "2-Stone Sledgehammer", source = "Alien Predators", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Bloodmyst Isle Quests", reqLevel = 8, questID = 9633 },
[26053] = { name = "Elekk Handler's Blade", source = "Alien Predators", slot = "One-Hand", type = "Dagger", zone = "Bloodmyst Isle Quests", reqLevel = 8, questID = 9633 },
[26049] = { name = "Old Elekk Prod", source = "Alien Predators", slot = "Two-Hand", type = "Staff", zone = "Bloodmyst Isle Quests", reqLevel = 8, questID = 9633 },
[27389] = { name = "Surplus Bastard Sword", source = "Alien Predators", slot = "Two-Hand", type = "Two-Handed Sword", zone = "Bloodmyst Isle Quests", reqLevel = 8, questID = 9633 },

-- Razormaw (Pick One)
[24346] = { name = "Robe of the Dragon Slayer", source = "Razormaw", slot = "Chest", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 19, questID = 9689 },
[24348] = { name = "Tunic of the Dragon Slayer", source = "Razormaw", slot = "Chest", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 19, questID = 9689 },
[24347] = { name = "Vest of the Dragon Slayer", source = "Razormaw", slot = "Chest", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 19, questID = 9689 },

-- Matis the Cruel (Pick One)
[26033] = { name = "Vindicator's Iron Legguards", source = "Matis the Cruel", slot = "Legs", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9662 },
[26021] = { name = "Vindicator's Leather Chaps", source = "Matis the Cruel", slot = "Legs", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9662 },
[26007] = { name = "Vindicator's Woolies", source = "Matis the Cruel", slot = "Legs", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9662 },

-- The Unwritten Prophecy (Pick One)
[24350] = { name = "Signet Ring of the Hand", source = "The Unwritten Prophecy", slot = "Finger", type = "Ring", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9762 },
[24349] = { name = "Signet Ring of the Hand", source = "The Unwritten Prophecy", slot = "Finger", type = "Ring", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9762 },

-- Clearing the Way (Pick One)
[26035] = { name = "Corin's Handguards", source = "Clearing the Way", slot = "Hands", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9673 },
[26023] = { name = "Ravager Hide Gloves", source = "Clearing the Way", slot = "Hands", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9673 },
[26009] = { name = "Flutterer Silk Handwraps", source = "Clearing the Way", slot = "Hands", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 18, questID = 9673 },

-- Ysera's Tears (Pick One)
[26030] = { name = "Maatparm's Fungus-Lined Hauberk", source = "Ysera's Tears", slot = "Chest", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9687 },
[26019] = { name = "Maatparm's Fungus-Lined Vest", source = "Ysera's Tears", slot = "Chest", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9687 },
[26005] = { name = "Maatparm's Fungus-Lined Tunic", source = "Ysera's Tears", slot = "Chest", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9687 },

-- I Shoot Magic Into the Darkness (Pick One)
[26036] = { name = "Vindicator's Stompers", source = "I Shoot Magic Into the Darkness", slot = "Feet", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 14, questID = 9668 },
[26024] = { name = "Vindicator's Leather Moccasins", source = "I Shoot Magic Into the Darkness", slot = "Feet", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 14, questID = 9668 },
[26010] = { name = "Vindicator's Soft-Sole Slippers", source = "I Shoot Magic Into the Darkness", slot = "Feet", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 14, questID = 9668 },

-- Declaration of Power (Pick One)
[26039] = { name = "Kessel's Sturdy Riding Handle", source = "Declaration of Power", slot = "Waist", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9663 },
[26027] = { name = "Kessel's Sweat-Stained Elekk Leash", source = "Declaration of Power", slot = "Waist", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9663 },
[26012] = { name = "Kessel's Cinch Wrap", source = "Declaration of Power", slot = "Waist", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9663 },

-- Galaen's Fate (Pick One)
[26025] = { name = "Technician's Boots", source = "Galaen's Fate", slot = "Feet", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9670 },
[26037] = { name = "Lightweight Mesh Boots", source = "Galaen's Fate", slot = "Feet", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9670 },
[26011] = { name = "Cryo-Core Attendant's Boots", source = "Galaen's Fate", slot = "Feet", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9670 },

-- Learning from the Crystals (Pick One)
[26020] = { name = "Shard-Covered Leggings", source = "Learning from the Crystals", slot = "Legs", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9628 },
[26032] = { name = "Crystal-Studded Legguards", source = "Learning from the Crystals", slot = "Legs", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9628 },
[26006] = { name = "Crystal-Flecked Pants", source = "Learning from the Crystals", slot = "Legs", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9628 },

-- Culling the Flutterers (Pick One)
[26038] = { name = "Segmented Girdle", source = "Culling the Flutterers", slot = "Waist", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 14, questID = 9672 },
[26026] = { name = "Ornately Tooled Belt", source = "Culling the Flutterers", slot = "Waist", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 14, questID = 9672 },
[26013] = { name = "Cincture of Woven Reeds", source = "Culling the Flutterers", slot = "Waist", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 14, questID = 9672 },

-- Maatparm Mushroom Menagerie (Pick One)
[26014] = { name = "Maatparm's Fungus-Lined Cuffs", source = "Maatparm Mushroom Menagerie", slot = "Wrist", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9642 },
[26028] = { name = "Maatparm's Fungus-Lined Bands", source = "Maatparm Mushroom Menagerie", slot = "Wrist", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9642 },
[26040] = { name = "Maatparm's Fungus-Lined Bracers", source = "Maatparm Mushroom Menagerie", slot = "Wrist", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9642 },

-- The Cryo-Core (Pick One)
[27390] = { name = "Vindicator's Letter Opener", source = "The Cryo-Core", slot = "One-Hand", type = "Dagger", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9667 },
[27641] = { name = "Vindicator's Walking Stick", source = "The Cryo-Core", slot = "Two-Hand", type = "Staff", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9667 },
[26052] = { name = "Vindicator's Smasher", source = "The Cryo-Core", slot = "One-Hand", type = "One-Handed Mace", zone = "Bloodmyst Isle Quests", reqLevel = 15, questID = 9667 },

-- Blood Watch (Pick One)
[26050] = { name = "Fist of Argus", source = "Blood Watch", slot = "One-Hand", type = "Fist Weapon", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9648 },
[26054] = { name = "Blade of Argus", source = "Blood Watch", slot = "One-Hand", type = "One-Handed Sword", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9648 },
[27640] = { name = "Hand of Argus Crossfire", source = "Blood Watch", slot = "Ranged", type = "Gun", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9648 },

-- Catch and Release (Pick One)
[26008] = { name = "Scholar's Gloves", source = "Catch and Release", slot = "Hands", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9632 },
[26022] = { name = "Researcher's Gloves", source = "Catch and Release", slot = "Hands", type = "Leather Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9632 },
[26034] = { name = "Protective Field Gloves", source = "Catch and Release", slot = "Hands", type = "Mail Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9632 },

-- Saving Princess Stillpine (Pick One)
[24343] = { name = "The Thumper", source = "Saving Princess Stillpine", slot = "Two-Hand", type = "Two-Handed Mace", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9688 },
[24342] = { name = "Stillpine Shocker", source = "Saving Princess Stillpine", slot = "One-Hand", type = "One-Handed Mace", zone = "Bloodmyst Isle Quests", reqLevel = 10, questID = 9688 },

-- WANTED: Deathclaw (Pick One)
[27398] = { name = "Carved Crystalline Orb", source = "WANTED: Deathclaw", slot = "Held In Off-hand", type = "Off-hand Frill", zone = "Bloodmyst Isle Quests", reqLevel = 9, questID = 9674 },
[27400] = { name = "Peacekeeper's Buckler", source = "WANTED: Deathclaw", slot = "Shield", type = "Shield", zone = "Bloodmyst Isle Quests", reqLevel = 9, questID = 9674 },

-- Containing the Threat (Pick One)
[27402] = { name = "Huntsman's Crossbow", source = "Containing the Threat", slot = "Ranged", type = "Crossbow", zone = "Bloodmyst Isle Quests", reqLevel = 13, questID = 9691 },
[27404] = { name = "Lightspark", source = "Containing the Threat", slot = "Ranged", type = "Wand", zone = "Bloodmyst Isle Quests", reqLevel = 13, questID = 9691 },

-- Ending the Bloodcurse (Guaranteed)
[24334] = { name = "Wheel of the Lost Hope", source = "Ending the Bloodcurse", slot = "Shield", type = "Shield", zone = "Bloodmyst Isle Quests", reqLevel = 15 },

-- Salvaging the Data (Guaranteed)
[26016] = { name = "Surveyor's Mantle", source = "Salvaging the Data", slot = "Shoulder", type = "Cloth Armor", zone = "Bloodmyst Isle Quests", reqLevel = 10 },

-- They're Alive! Maybe... (Guaranteed)
[26017] = { name = "Venomous Silk Cover", source = "They're Alive! Maybe...", slot = "Back", type = "Cloak", zone = "Bloodmyst Isle Quests", reqLevel = 16 },
}