# Roadmap Plugin for Sharpie's Gear Judge (SGJ)

**Roadmap** is a powerful progression planning tool designed for **Sharpie's Gear Judge**. It scans every available dungeon to generate a personalized "Upgrade Leaderboard," showing you exactly which instances offer the biggest power gains for your character.

## Key Features

### 🗺️ Dungeon Leaderboard
* Instantly scans all Vanilla and TBC dungeons (Normal & Heroic).
* Ranks dungeons by **Total Upgrade Score**, so you know exactly where to go next.
* Displays the top 3 upgrades for that dungeon when you hover over the list.

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

## Installation

1.  Ensure you have the main addon **Sharpie's Gear Judge** installed.
2.  Place the `SharpiesGearJudge_Roadmap` file into your addon's folder.
3.  Reload your UI (`/reload`).
4.  Open Sharpie's Gear Judge and click the **Roadmap Tab** (Map Icon).

## Usage

1.  **Calculate:** Click "Calculate Roadmap" to scan all dungeons.
2.  **View:** Click any dungeon in the right-hand list to see the upgrades.
3.  **Chain Mode:**
    * Check the **"Chain Mode"** box.
    * Click a dungeon (e.g., *Shadowfang Keep*). If upgrades are found, they are locked into your "Virtual Paperdoll."
    * Click the next dungeon. It now checks against your upgraded self.
    * Use the **"R" Button** to reset your virtual gear back to your currently equipped gear.