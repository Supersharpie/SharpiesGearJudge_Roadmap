# Changelog - Roadmap Plugin

## [v2.2.1]

* **Update SGJ.DungeonDB entries to use normalized zone keys (add spaces to match ZONE_META in Roadmap.lua) and clean up inconsistent slot values.**
* **Standardized one-handed weapon slot naming across many items (e.g. Main Hand / One-Hand) and fixed several minor data issues such as item name typos (e.g. "Scholarly" -> "Scholarly Robes").** 
* **These changes improve consistency between the dungeon DB and roadmap metadata.**

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