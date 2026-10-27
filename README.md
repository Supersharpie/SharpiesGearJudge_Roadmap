# Roadmap Plugin for Sharpie's Gear Judge (SGJ)

**Version 3.2.2** | Requires **Sharpie's Gear Judge** | Works on **WoW Forever**, **Classic Era** and **TBC Anniversary**

**Roadmap** is a progression planning tool for **Sharpie's Gear Judge**. It scans every dungeon, plus the quest rewards in every zone, to build a personalized "Upgrade Leaderboard" showing which dungeons and quest zones offer the biggest power gains for your character.

## Key Features

### 🗺️ Dungeon Leaderboard
* Scans every dungeon for your game version:
  * **WoW Forever:** every Forever dungeon with a known loot table, including the new ones such as Hall of Thanes, Ruins of Lordaeron, Excavation Site: Wetlands and City of Dalaran. Multi-wing dungeons (Scarlet Monastery, Dire Maul, Stratholme, Blackrock Spire) are one row each, with the wing shown next to the boss.
  * **Classic Era:** all Classic dungeons, plus Zul'Gurub and Ruins of Ahn'Qiraj.
  * **TBC Anniversary:** all Classic and TBC dungeons (Normal and Heroic), plus the G'eras badge vendor.
* Ranks them by **Total Upgrade Score**, so you know exactly where to go next.
* Hover a row to see its top 3 upgrades. The dungeon you're viewing is highlighted.

### 📜 Quest Rewards
* **Dungeons | Quests tabs:** the leaderboard ranks dungeons and quest zones separately. Quest zones are scored by the best upgrade per slot that their quests give, and each row shows how many quests give upgrades, how many are in your quest log, and whether you're in that zone.
* **Quest list:** click a quest zone to see its quests in place of your character model: each quest's best reward and gain ("best of N" for a choose-one quest), its level and chain step, and whether it's in your log, available now, or at a later level. Hover for the quest giver and where to find them (WoW Forever).
* **World Quests:** each zone gets its own "Quests" row in the leaderboard (for example "Elwynn Forest Quests"), including class, profession and event quests.
* **Dungeon Quests:** rewards from a dungeon's quests sit in that dungeon's row next to its boss loot, marked "Quest:".
* On WoW Forever, nearly 2,000 equippable quest rewards are included. Each counts from the level its quest can be picked up, not the lower level printed on the item.
* **Only quests you can get:** rewards from the other faction's quests, other classes' quests and other races' quests are hidden. For example, Zephras Isle and the rest of the Skyborne starting chain only show for Skyborne characters.
* **Holiday quests only during the event:** Darkmoon Faire, Lunar Festival, Midsummer and Scourge Invasion rows show while the event runs (from the in-game calendar).
* **PvP Quests:** Alterac Valley quest rewards have their own checkbox, off by default.
* **Quest chains:** the Epic Quests and Legendary Quests rows are marked "(quest chains)".
* **Profession quests only with the profession:** rows like "Fishing Quests" show only for characters who have that profession.
* **Only quests you haven't done:** rewards from quests this character has already turned in are left out.
* **One reward per choice:** when a quest lets you pick one of several rewards, the Roadmap suggests at most one of them.

### 🧰 Scan Settings
* **Mode:** score with PvE or PvP stat weights.
* **Profile:** use your current profile (Auto) or pick another one to plan for a different spec or role.
* **Focus:** only suggest upgrades that carry a chosen stat.
* **Dungeon Loot / Dungeon Quests / World Quests / PvP Quests:** choose what a scan includes. All but PvP Quests are on by default, and your choice is remembered between sessions.
* **Level Range Bar:** drag the two handles to choose which dungeon levels to check. Raise the high end to plan upgrades above your level; raise the low end to focus on endgame dungeons. Right-click resets it to 1 through your level. A live count shows how many dungeons the next scan will check.
* **TBC only:** **Heroic Only**, **Include Badges** and **Sort by Efficiency** (score per badge spent).
* **Shield tanks:** Protection Warriors and Paladins and Shaman tanks are never offered two-handers, since their key abilities need a shield. This can be turned off in Gear Judge with "Shield Tanks: No Two-Handers".

### 📅 Content Phase Filter (TBC)
* **Content Phase** dropdown limits scans to dungeons and badge items available in the current TBC Anniversary phase.
* **Phase 1** (default): Launch-era dungeons — **excludes Magister's Terrace** (patch 2.4 content).
* **Phase 5:** Sunwell patch — includes **Magister's Terrace** (normal and heroic).
* Change phase, then click **Calculate Roadmap** to refresh the leaderboard.

### 🛡️ Same Scoring as Gear Judge
* Roadmap uses the core addon's scoring engine, so its numbers match your tooltips: your profile, leveling weights, hit and defense caps, and **Gear for PvP** when it's on.
* It also uses the **Buff Assumptions** from Protocol settings. Enable **Assume Raid Buffed** in SGJ settings so Roadmap stops recommending hit-heavy loot when you already get hit from raid buffs.
* After you equip an item or level up, the next scan uses your new gear and level.

### 🔗 Chain Mode (Progression Sim)
* **Plan Your Path:** Simulate a gearing journey!
* **Virtual Gear:** When "Chain Mode" is enabled, clicking a dungeon in the leaderboard "virtually equips" the best upgrades found there.
* **Smart Comparison:** The next dungeon you check will compare its loot against your *new* virtual set, not your old gear.
* **Watch Your Character Grow:** See your 3D model update in real-time as you "clear" dungeons and acquire loot.

### 🧪 Integration with "The Lab"
* **One-Click Export:** Once you have built your dungeon set in Roadmap, click **Export** to generate a data string.
* **Deep Analysis:** Paste this string into **The Lab** plugin to compare stats in detail, or use the Lab's **Roadmap Picks** button to load the Roadmap's picks directly.

### 👗 3D Preview & Visuals
* **Try On:** Automatically previews the best upgrade on your character model.
* **Slot Analysis:** Click any gear slot to see all candidate items for that slot, sorted by score gain.
* **Smart Pairing:** Automatically handles Main Hand / Off-Hand logic, showing you valid weapon combinations.
* **Right-Click Slots:** Ignore slots you don't want to track (e.g. off-hand if you're 2H). Each ring and trinket slot can be ignored on its own.

### 🌍 Translations
* Roadmap is translated into English, German, Spanish (Spain and Latin America), French, Brazilian Portuguese, Russian, Korean and Traditional Chinese. Dungeon and zone names use the game's own names; boss and quest names stay in English.

## Installation

1.  Ensure you have the main addon **Sharpie's Gear Judge** installed.
2.  Place the `SharpiesGearJudge_Roadmap` folder into your `Interface/AddOns` directory.
3.  Reload your UI (`/reload`).
4.  Open Sharpie's Gear Judge and click the **Roadmap** tab.

## Usage

1.  **Pick what to scan:** Set Mode, Profile and Focus, the level range, and which sources (Dungeon Loot, Dungeon Quests, World Quests) to include.
2.  **Set Phase (TBC):** Choose your **Content Phase** from the dropdown (P1 for Kara launch, P5 for Sunwell/MgT).
3.  **Configure Buffs (optional):** In SGJ **Protocol → Buff Assumptions**, enable **Assume Raid Buffed** if you run with a full raid comp.
4.  **Calculate:** Click "Calculate Roadmap" to scan eligible dungeons and quest zones.
5.  **View:** Click any row in the right-hand leaderboard to see its upgrades.
6.  **Chain Mode:**
    * Check the **"Chain Mode"** box.
    * Click a dungeon (e.g., *Shadowfang Keep*). If upgrades are found, they are locked into your "Virtual Paperdoll."
    * Click the next dungeon. It now checks against your upgraded self.
    * Use the **Reset** button to reset your virtual gear back to your currently equipped gear.

## Recommended Setup (TBC Anniversary Phase 1)

1. Roadmap → **Content Phase: P1**
2. SGJ Settings → **Assume Raid Buffed: On** (25-Man Full)
3. Click **Calculate Roadmap**

This avoids Magister's Terrace suggestions and scores loot assuming your typical raid buff package.

## Feedback

Found a bug or a missing drop? Come say hi on the **[Discord](https://discord.gg/aYmhmtGxYs)**.
