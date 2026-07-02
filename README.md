# Roadmap Plugin for Sharpie's Gear Judge (SGJ)

**Roadmap** is a powerful progression planning tool designed for **Sharpie's Gear Judge**. It scans every available dungeon to generate a personalized "Upgrade Leaderboard," showing you exactly which instances offer the biggest power gains for your character.

## Key Features

### 🗺️ Dungeon Leaderboard
* Instantly scans all Vanilla and TBC dungeons (Normal & Heroic).
* Ranks dungeons by **Total Upgrade Score**, so you know exactly where to go next.
* Displays the top 3 upgrades for that dungeon when you hover over the list.

### 📅 Content Phase Filter (TBC)
* **Content Phase** dropdown limits scans to dungeons available in the current TBC Anniversary phase.
* **Phase 1** (default): Launch-era dungeons — **excludes Magister's Terrace** (patch 2.4 content).
* **Phase 5:** Sunwell patch — includes **Magister's Terrace** (normal and heroic).
* Change phase, then click **Calculate Roadmap** to refresh the leaderboard.

### 🛡️ Raid Buff Integration
* Roadmap uses the core addon's scoring engine, including **Buff Assumptions** from Protocol settings.
* Enable **Assume Raid Buffed** in SGJ settings so Roadmap stops recommending hit-heavy dungeon loot when you already get hit from Totem of Wrath, Improved Faerie Fire, a Draenei in raid, etc.
* Manual profile overrides in Roadmap now correctly apply hit-cap logic (fixed in v2.3.0).

### 🔗 Chain Mode (Progression Sim)
* **Plan Your Path:** Simulate a gearing journey!
* **Virtual Gear:** When "Chain Mode" is enabled, clicking a dungeon in the leaderboard "virtually equips" the best upgrades found there.
* **Smart Comparison:** The next dungeon you check will compare its loot against your *new* virtual set, not your old gear.
* **Watch Your Character Grow:** See your 3D model update in real-time as you "clear" dungeons and acquire loot.

### 🧪 Integration with "The Lab"
* **One-Click Export:** Once you have built your perfect dungeon set in Roadmap, click **Export** to generate a data string.
* **Deep Analysis:** Paste this string into **The Lab** plugin to compare stats in detail.

### 👗 3D Preview & Visuals
* **Try On:** Automatically previews the best upgrade on your character model.
* **Slot Analysis:** Click any gear slot to see all candidate items for that slot, sorted by score gain.
* **Smart Pairing:** Automatically handles Main Hand / Off-Hand logic, showing you valid weapon combinations.
* **Right-Click Slots:** Ignore slots you don't want to track (e.g. off-hand if you're 2H).

## Installation

1.  Ensure you have the main addon **Sharpie's Gear Judge** installed.
2.  Place the `SharpiesGearJudge_Roadmap` folder into your `Interface/AddOns` directory.
3.  Reload your UI (`/reload`).
4.  Open Sharpie's Gear Judge and click the **Roadmap Tab** (Map Icon).

## Usage

1.  **Set Phase (TBC):** Choose your **Content Phase** from the dropdown (P1 for Kara launch, P5 for Sunwell/MgT).
2.  **Configure Buffs (optional):** In SGJ **Protocol → Buff Assumptions**, enable **Assume Raid Buffed** if you run with a full raid comp.
3.  **Calculate:** Click "Calculate Roadmap" to scan eligible dungeons.
4.  **View:** Click any dungeon in the right-hand list to see the upgrades.
5.  **Chain Mode:**
    * Check the **"Chain Mode"** box.
    * Click a dungeon (e.g., *Shadowfang Keep*). If upgrades are found, they are locked into your "Virtual Paperdoll."
    * Click the next dungeon. It now checks against your upgraded self.
    * Use the **"R" Button** to reset your virtual gear back to your currently equipped gear.

## Recommended Setup (TBC Anniversary Phase 1)

1. Roadmap → **Content Phase: P1**
2. SGJ Settings → **Assume Raid Buffed: On** (25-Man Full)
3. Click **Calculate Roadmap**

This avoids Magister's Terrace suggestions and scores loot assuming your typical raid buff package.
