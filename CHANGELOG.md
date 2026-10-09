# Sharpie's Gear Judge [Roadmap] - Version History

## 🚀 v3.1.1

### ⚔️ PvP
- **Gear for PvP in the Roadmap**: A profile picked in the Roadmap's own menu now gets the same scoring as Gear Judge's (including the PvP weights when Gear for PvP is on or the profile is a PvP one); before, it skipped the PvP part.

---

## 🚀 v3.1.0

### 📜 Forever Quest Rewards
- **Quest Rewards for Every Zone**: The Roadmap now carries Forever's quest rewards, taken from foreverchanges.pro/quests: 1,931 rewards you can equip. Before, the Forever quest list started empty and only filled from the dataminer.
	- **World quests** get a row per zone, for example "Elwynn Forest Quests" or "Stranglethorn Vale Quests" (68 rows, including the class, profession and event quests).
	- **Dungeon quests** join their dungeon's row next to its boss loot, marked "Quest:" (24 dungeons, for example 30 quest rewards in Blackrock Depths). Raids and dungeons without a loot list get a row of their own: Ahn'Qiraj, Blackwing Lair, Naxxramas, Onyxia's Lair and City of Dalaran.
	- Each world quest row's level for the level range bar is the lowest required level among its rewards, and each reward keeps its own required level.
	- Rewards from one faction's quests only show for that faction, and class quest rewards only for that class. Zephras Isle, the Skyborne starting island, only shows for Skyborne, since other races can't get there.
	- **One Reward per Choice Quest**: When a quest lets you choose one of several rewards, the Roadmap suggests at most one of them. If two slots want rewards from the same quest, the bigger gain wins and the other slot shows its next-best item. The leaderboard's top items list one choice per quest too. Rewards a quest always gives still count in every slot.

### ✨ Improvements
- **Source Checkboxes**: Three new checkboxes under Chain Mode choose what a scan includes: **Dungeon Loot**, **Dungeon Quests** and **World Quests**. All start on and are remembered between sessions. The dungeon count under the level bar follows them.
- **No Two-Handers for Shield Tanks**: With a Protection Warrior or Paladin profile, or a Shaman tank profile, the Roadmap no longer suggests two-handers; the tooltips already worked this way. These profiles value weapon damage highly, so a two-hander's damage always outscored a one-hander and shield, even though Shield Block, Shield Slam and Holy Shield need the shield. If you're wearing a two-hander, the Roadmap now builds the best one-hander and shield set instead of measuring them against it. Gear Judge's new "Shield Tanks: No Two-Handers" option (on by default) turns this off.
- **Dataminer Removed**: The Roadmap no longer reads drops and quest rewards recorded by the dataminer, which Gear Judge 3.2.1 removes. The dungeon loot and quest rewards now come only from the built-in lists.

### 🐛 Bug Fixes
- **Fixed: Duplicate Leaderboard Rows**: Starting a scan while one was running (pressing Calculate twice, a Chain Mode click, or changing Mode or Profile) ran both scans at once, doubling the work and listing dungeons twice. The old scan now stops.
- **Fixed: Items Skipped on First Scan**: Items the game hadn't loaded yet were silently left out of the leaderboard. The Roadmap now asks for them before scanning and rescans dungeons that still had missing items once they arrive.
- **Fixed: Wands, Guns and Crossbows**: The Roadmap never suggested them for the Ranged slot. They are now scanned and suggested like any other item.
- **Fixed: Forever Hit Cap**: On WoW Forever, any item with less Hit Rating than yours was marked down by 100 points, so hit upgrades almost never showed. Hit is now valued on the same curve the tooltips use: hit past your cap counts for less, and dropping back under a cap costs the real amount.
- **Fixed: Defense Floor for Tanks**: The "don't drop below the defense you need" check never did anything on Classic Era and Forever. Tank profiles now get the same defense floor the tooltips use.
- **Fixed: Alliance Quest Rewards for Horde**: Horde characters were offered rewards from Elwynn Forest, Dun Morogh, Teldrassil and Bloodmyst Isle quests on Classic Era and TBC. Those zones are now Alliance only.
- **Fixed: Two Rewards From One Quest**: On Classic Era and TBC the Roadmap could suggest two rewards from the same "choose one" quest. It now suggests at most one per quest, like on Forever.
- **Fixed: Bloodmyst Isle on Classic Era**: A Burning Crusade zone was checked on Classic Era, where its items don't exist, which slowed every scan. It is now only checked on TBC.
- **Fixed: Open Dungeon after Calculate**: When Calculate reached the dungeon you had open, its slots showed unsorted results and could point at the wrong item. They are now sorted and checked again as soon as that dungeon is scanned.
- **Fixed: Old Gear after Equipping or Levelling**: After you equipped an item or levelled up, clicking a dungeon still compared against your old gear and weights. The Roadmap now notices gear changes (when Chain Mode is off) and level-ups and uses your current gear and level.
- **Fixed: Ignoring Ring 2 or Trinket 2**: Right-clicking Ring 2 or Trinket 2 did nothing, and ignoring Ring 1 or Trinket 1 blocked both. Each slot is now ignored on its own, ignored slots stay grayed out, and they no longer count toward the upgrade total or Chain Mode.
- **Fixed: Two-Hander Counted When Dual Wielding Wins**: When two one-handers beat the best two-hander, the two-hander was still counted in the total and Chain Mode could equip it. It is now left out.
- **Fixed: Character Model Controls**: On some clients the model setup stopped early, so rotating, zooming and right-click reset didn't work. The model now always gets its controls.
- **Fixed: Hunters Dual Wielding Before 20**: Hunters were always treated as able to dual wield. The Roadmap now checks whether your character actually knows Dual Wield.
- **Fixed: Changing Settings Mid-Scan**: Changing Dungeon Loot, Dungeon Quests, World Quests, Heroic Only or Include Badges during a scan let the old scan finish with the old settings. The scan now stops, and you click Calculate to start again.
- **Fixed: Same Item Twice in the Leaderboard Tooltip**: A ring, trinket or one-hander could be listed twice under Top Upgrades. Each item is now listed once, with its best gain.
- **Fixed: Export Window**: "Select All" removed the selection instead of selecting the text. It now selects everything, ready for Ctrl+C. Escape leaves the text box, and a second Escape closes the window.
- **Fixed: Upgrade List Left on Screen**: The list that opens when you click a slot could stay on screen after closing Gear Judge. It now closes with the window, when results refresh, and with Escape.
- **Fixed: "Quest:" Label Not Translated**: Dungeon quest rewards on Forever always showed "Quest: <name>" in English. The label is now translated.
- **Fixed: Rare Error on Forever**: Checking whether an item is Unique could cause a Lua error on Forever. That check now skips the text Forever hides from addons.

### ⚡ Performance
- **Smoother Scans**: Calculate Roadmap now spreads its work evenly over frames (about 6 ms per frame), so big dungeons no longer cause a stutter. Safety-cap values (hit, defense) are worked out once per scan instead of for every item. The level range bar only refreshes when the level under the cursor changes.

### 🌍 Translations
- **Translated**: The Roadmap is now translated into every language WoW Forever launches with (German, Spanish for Spain and Latin America, French, Brazilian Portuguese, Russian, Korean and Traditional Chinese). Dungeon and zone names use the game's own names. Boss and quest names in item sources stay in English.

-------------------------------------------------------------------------

## 🚀 v3.0.3

### 🖼️ Window Redesign
- **Three Columns**: The Roadmap window is now laid out as scan settings on the left, your character and gear slots in the middle, and the dungeon leaderboard on the right. Nothing sits on top of the character model any more, and the help text no longer runs into the title.
- **Scan Settings Column**: Mode, Profile, Focus (and Phase on TBC), the level range, and the Chain Mode, Heroic, Badges and Efficiency toggles are stacked in the order you use them. Calculate Roadmap, Reset (was "R") and Export sit at the bottom of the column.
- **Balanced Gear Slots**: Seven slots on each side of the model (Hands moved to the left column), with the weapon slots in a centred row under the feet.
- **Relic Slot Visible**: Paladins, Shamans and Druids now see their empty relic slot next to the weapons. It used a Libram or Totem texture that Classic clients don't have, so the slot drew as nothing.
- **Uses the Bigger Window**: With the main window now wider (Gear Judge 3.2.0), the settings and leaderboard columns are wider too, so dropdown text and long dungeon names are no longer cut short.
- **Upgrade Summary**: A line under the title shows the dungeon you're viewing, how many upgrades it has and their total score gain.
- **Leaderboard**: Rows show the dungeon name on one line and the score under it, so long names are no longer cut short. The dungeon you're viewing is highlighted. Before your first scan it tells you to press Calculate Roadmap, and it says so when a scan finds no upgrades. The progress bar now shows at the top of the leaderboard.

### 🎚️ Dungeon Level Range
- **Level Range Bar**: A bar under "Filter by Level" sets the lowest and highest dungeon level to check. Drag either gold handle, or click the bar to move the nearer one. Right-click resets it to 1 through your level. Under the bar, a live count shows how many dungeons the next Calculate will check. For example, a level 70 player can set the low end to 60 to see Outland dungeons only.
- **Plan Ahead**: The high end starts at your level and follows you as you level. Raise it to include dungeons and items above your level. Items that need a higher level than the high end are still skipped.
- The low end is saved between sessions. The Calculate Roadmap tooltip shows the active range.

-------------------------------------------------------------------------

## 🚀 v3.0.2

### 🗺️ Forever Dungeon Loot
- **Excavation Site: Wetlands**: The new 26-31 dungeon from the 2 October beta patch is a Roadmap zone, with its 9 equippable boss drops (Saltspine, Shadetooth, Relic Guardian; required levels 26-28).
- **Razorfen Downs and Uldaman Loot**: Both dungeons, which the 2 October patch opened, now list their drops: 29 for Razorfen Downs and 48 for Uldaman, with boss or trash sources. Their loot is unchanged from Classic. Required levels come from Wowhead's Forever database where the item has been seen in the beta.
- **Every Other Forever Dungeon**: The Roadmap now carries loot for every dungeon with a loot table on foreverchanges.pro, 965 more equippable drops. Each drop lists its boss, or Zone Drop for trash. Scarlet Monastery, Dire Maul, Stratholme and Blackrock Spire combine their wings into one Roadmap zone, with the wing named after the boss, for example "Herod (Armory)". The new dungeons are:
	- Shadowfang Keep, Blackfathom Deeps, The Stockade, Gnomeregan and Razorfen Kraul
	- Scarlet Monastery, Zul'Farrak, Maraudon and Sunken Temple
	- Blackrock Depths, Dire Maul, Blackrock Spire, Scholomance and Stratholme

	Each list is the full loot table, Classic and Forever items alike. Recipes, profession parts, shirts and tabards are left out, but librams, idols and totems are kept. Most Classic dungeon items aren't revealed in Forever yet, so their levels are the Classic ones. Items without a required level use the dungeon's minimum level. Forever's six new dungeons (City of Dalaran, The Drowned City, Krol'dok Stronghold, Alcaz Prison, Blackmaw Hold, Shaper's Terrace) have no loot listed yet and are not added.
- **No Duplicate Datamined Zones**: Datamined drops now go into the matching dungeon row when the in-game zone name matches its display name. Before, a Deadmines drop recorded as "The Deadmines" created a second row next to the "Deadmines" entry.


-------------------------------------------------------------------------

## 🚀 v3.0.1

### 🗺️ Forever Dungeon Loot
- **Starter Dungeons Seeded**: The Forever database (`D1_Items_Forever.lua`) is no longer blank. It now carries the beta loot tables for Hall of Thanes, Ragefire Chasm, Ruins of Lordaeron, Wailing Caverns and The Deadmines. That's 112 equippable drops with boss sources and required levels. Quest items, keys, bags, pets and recipes are left out. Hall of Thanes (13+) and Ruins of Lordaeron (15+) are new Roadmap zones.

-------------------------------------------------------------------------

## 🚀 v3.0.0

### 🧪 Dynamic Dataminer Integration
- **Live Injection Hook**: The Roadmap scanner now dynamically injects items discovered by the core `SharpiesGearJudge` Dataminer engine.
- **Auto-Zone Generation**: Quest rewards and unknown boss drops will now instantly generate custom Roadmap categories on the fly, accurately labeling the source of the drop.
- **Modern Engine Crash Fix**: Removed legacy API dependencies (`UnitDefense`, etc.) that were triggering fatal UI crashes on the WoW: Forever hybrid client.

### 🛠️ Modern API Support
- **MouseIsOver Crash**: Fixed a fatal engine error on the interactive UI popup caused by the removal of the global `MouseIsOver()` API in WoW 11.0+. Converted all logic to the native `frame:IsMouseOver()` method.

### 🗺️ Pure Dynamic Exploration
- **Legacy Database Wipe**: The hardcoded Vanilla/TBC fallback databases (`D1_Items_Forever.lua`, `D5_Quests_Forever.lua`) have been completely wiped. 
- **100% Organic Injection**: The Roadmap will now load as a completely blank slate. The only items that will populate the UI are those genuinely discovered by testers in the wild via the Dataminer hook.

-------------------------------------------------------------------------

## [v2.3.3]

### ✨ Classic Era Native Support & Dual TOC
* **Dedicated Multi-Client Architecture**: Added `SharpiesGearJudge_Roadmap_Vanilla.toc` (`Interface: 11508`) and `SharpiesGearJudge_Roadmap_TBC.toc` (`Interface: 20505`) matching the core addon. The Era client now loads Roadmap without out-of-date warnings or missing data dependencies.
* **Era Endgame Raids Added**: Integrated **Zul'Gurub** and **Ruins of Ahn'Qiraj (AQ20)** into the Era progression database (`D1_Items.lua` & `ZONE_META`) with full drop tables across all bosses.
* **Context-Aware UI**:
  * On Classic Era: automatically hides TBC-specific UI elements (**Heroic Only**, **Include Badges**, **Badge Efficiency**, and **Content Phase** dropdown).
  * Focus Stat dropdown dynamically serves Era stats (**Weapon Skill**, **Spirit**, **HP5**) while removing TBC-only ratings (**Resilience**, **Expertise**, **Spell Penetration**).
* **Item ID Audit & Cache Safety**:
  * Guarded seasonal TBC Coren Direbrew items (`37127`–`38290`) and TBC pre-patch items (`24101`) in Vanilla tables, preventing permanent `GetItemInfo` cache stalls on Era clients.
  * Added a 3-attempt safety limit on missing item queries in `FinalizeScan` to eliminate infinite retry loops.
  * Fixed `Shadowfang Keep` key discrepancy between `ZONE_META` and `D1_Items.lua`.

-------------------------------------------------------------------------

## [v2.3.2]

### 🐛 Bug Fixes & Improvements
* **Hit Cap Engine Synchronization**: Evaluates hit caps using `SGJ.BuffEngine:GetEffectiveHitRatingBase` to ensure full alignment with core addon talent modifiers (e.g. Shaman `Totem of Wrath`, `Elemental Precision`, `Nature's Guidance`) and raid buff assumptions during upgrade simulations.
* **Dungeon Loot Table Audits & Corrections**: Audited and corrected dungeon drop item IDs in:
  * **The Mechanar (`D2_Items.lua` & `D3_Items.lua`)**: Fixed full loot list alignments including `Helm of the Righteous (ID 28285)`, `Telescopic Sharprifle (ID 28286)`, `Abacus of Violent Odds (ID 28288)`, `Totem of the Void (ID 28248)`, `Capacitus' Cloak of Calibration (ID 28249)`, `Tunic of Assassination (ID 28204)`, `Moonglade Robe (ID 28202)`, and `Vestia's Pauldrons of Inner Grace (ID 28250)`.
  * **The Steamvault (`D2_Items.lua` & `D3_Items.lua`)**: Set `Breastplate of the Righteous (ID 28203)`.
  * **Scholomance (`D1_Items.lua`)**: Corrected `Totem of Sustaining (ID 23200)` and `Lord Blackwood's Blade (ID 23132)`.

-------------------------------------------------------------------------

## [v2.3.1]

### dY?> Bug Fixes
* Fixed an issue where the Roadmap would display Badge of Justice rewards from future patches (e.g. Zul'Aman or Sunwell) when a lower Content Phase was selected.

-------------------------------------------------------------------------

## [v2.3.0]

### ✨ New Features
* **Content Phase Filter (TBC):** New **Content Phase** dropdown (P1–P5) filters which dungeons appear in the leaderboard scan.
  * **Phase 1** (default): Kara / Gruul era — all TBC launch dungeons, **excluding Magister's Terrace**.
  * **Phase 5:** Sunwell patch — includes **Magister's Terrace** (normal and heroic).
  * Setting persists in `SGJ_Settings.ContentPhase` (shared with core SGJ).

### 🔧 Improvements
* **Scoring Profile Fix:** Manual profile overrides in the Roadmap dropdown now correctly run through `ApplyScalers` and the core addon's **Buff Assumptions** engine (hit caps, raid buff credits, stat synergy).
* **Auto-detect profiles** continue to use `GetCurrentWeights()` without double-scaling.

### 🐛 Bug Fixes
* Fixed Roadmap bypassing hit-cap logic when a manual scoring profile was selected, causing inflated hit-item scores (e.g. Magister's Terrace ranking highly for casters who are raid hit-capped).

-------------------------------------------------------------------------

## [v2.2.1]

* Maintenance release (version bump).

-------------------------------------------------------------------------

## [v2.2.0]

* **Fix several simulation and scan issues: allocate a fresh simGear table to avoid reference-caching bugs when computing scores; introduce safer virtual-slot deployment logic for paired slots (rings/weapons) including unique-item checks and proper 2H/oh handling; trigger an automatic recalculation when ChainMode updates virtual gear.**  
* **Add a Hunter-specific filter to avoid simulating thrown weapons.**  
* **Simplify final sorting, then call ResolveConflicts, SaveHistory and RefreshUI after scans, and add an auto-retry when server item data is missing.**  

* **Add a new virtual dungeon DB (D4_Badges.lua) for the G'eras badge vendor and register it in ZONE_META.** 
* **Introduced UI and feature updates in Roadmap.lua: new ShowBadges and SortByEfficiency flags, a FocusStat dropdown to target specific stats, repositioned/stacked controls, refreshed button/tooltips, and stacked checkboxes.** 
* **Modify scanning and scoring logic to return base stats (GetAdjustedScore), pass baseStats into simulation (GetSimulationGains), and enforce a strict focus-stat filter when evaluating upgrades.** 
* **Update coroutine scanning to honor the badge zone toggle, save baseStats during scans, and apply several small cleanup/bugfixes and refactors (conflict resolution, forced pairs, progress bar handling, and UI refresh timing).**

-------------------------------------------------------------------------

## [v2.1.1]

* **Performance and UX overhaul for the Roadmap: localize globals and add recyclable scratch tables and unique-cache for faster scans; cache tooltip scanner.** 
* **Introduces profile override support with a dropdown (OverrideSpec) and RefreshProfileDisplay, plus UpdateRealGearCache to compute real-gear stats for safety-cap adjustments.** 
* **Adds a progress bar, refactors Calculate button placement and tooltip, and improves slot tooltips and model TryOn behavior.** 
* **Simulation engine: reuse Scratch_SimGear, stricter uniqueness handling, adjusted score computation that applies class safety caps/penalties, and GetAdjustedScore wrapper.** 
* **Scan engine reworked to run as a coroutine ticker (StartCoroutineScan) with batched zone scans, candidate prefiltering, gap-filler logic, and leaderboard/top-items collection.** 
* **Misc: InitView/InitSidebar UI reorganizations, InitializeVirtualGear now updates real gear cache, many small cleanups (tostring for pretty names, minor anchor changes, standardized dropdown init).**
* **Overall: faster, non-blocking scans, improved profile handling and more robust simulation logic.**

-------------------------------------------------------------------------

## [v2.1.0]

* **Introduce IgnoredSlots support so users can right-click slots to toggle them out of scans.**
* **Adds Roadmap.IgnoredSlots state, right-click handler to dim/restore slot icons and print status, and skips ignored slots during scanning.**
* **Also adds a small help text under the title and re-anchors the "Calculate Roadmap" button beneath it.** 

-------------------------------------------------------------------------

## [v2.0.2]

### Performance
* **Snapshot Optimization:** Completely rewrote the scanning engine to calculate character stats once per zone instead of per item.
    * *Impact:* Reduces CPU load during "Calculate Roadmap" by ~95%, making scans nearly instant after the initial cache build.

### Improvements
* **Smart Tooltips:** The "Calculate Roadmap" button tooltip now dynamically displays your active settings (Chain Mode status, Level Filter status) and includes a "First Run" notice for new users.
* **Auto-Retry Logic:** The scanner now automatically detects if item data is missing (server lag) and queues a silent retry after 1 second, reducing the need for manual re-clicking.
* **UI Polish:** Added a descriptive tooltip to the "Filter Level" checkbox to explain its functionality clearly.
* **Fixed Exporting: Made the Export window much more user-friendly with a working "Select All" button.

-------------------------------------------------------------------------

## [v2.0.1]

### Features
* **Chain Mode:** Introduced a persistent "Virtual Gear" system.
    * Users can now simulate progression by "equipping" dungeon drops virtually.
    * Subsequent scans compare loot against the virtual set, allowing for accurate "step-by-step" gearing plans.
* **Export to Lab:** Added an **Export** button that generates a string compatible with *The Lab* plugin.
    * Supports exporting both real gear and virtual "Chain Mode" gear.
* **Hover Summaries:** The dungeon leaderboard now displays a tooltip listing the top 3 upgrades and their score gains when hovering over a dungeon name.
* **Dungeon Icons:** Added boss/item icons to the sidebar leaderboard for better visual clarity.

### Improvements
* **Math Engine:** * Upgraded the simulation engine to use `SGJ:GetTotalCharacterScore` directly from the core addon.
    * Added logic to handle "Simple Slots" (Wrists, Back, etc.) correctly in Chain Mode, defaulting to the highest score item when no conflicts exist.
* **UI Layout:**
    * Moved "Filter Level" and "Heroic Only" checkboxes to prevent overlap.
    * Moved "Chain Mode" checkbox to a safe location to fix click-through issues.
    * Increased the Frame Level of the **Reset (R)** button so it is always clickable, even over the 3D model.
* **Visual Feedback:**
    * Added a chat message confirmation when Chain Mode updates your virtual gear (`SGJ Chain: Equipped [Item]...`).
    * Items in the roadmap view now stay "lit up" (saturated) if they are part of your virtual set, even if the current dungeon offers no upgrades for that slot.

### Bug Fixes
* **Dual Wield Display:** Fixed an issue where the 3D model would not display off-hand weapons correctly by forcing an ordered refresh (Main Hand first, then Off-Hand).
* **Persistence Bug:** Fixed a bug where clicking a new dungeon would accidentally revert non-conflicting slots (like Bracers) back to the player's real gear.
* **Global Access:** Fixed an issue where the plugin could not find the main addon's scoring function if loaded separately.

-------------------------------------------------------------------------

## [v2.0.0]
* ** Split from main addon after testing and building, now set as a plugin.