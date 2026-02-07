# Changelog - Roadmap Plugin

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