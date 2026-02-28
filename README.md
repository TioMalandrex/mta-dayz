# MTA DayZ Gamemode

A complete, feature-rich DayZ-inspired survival gamemode for [Multi Theft Auto (MTA)](https://multitheftauto.com/). Fight zombies, scavenge for loot, repair vehicles, build shelters, and survive against other players in a persistent post-apocalyptic world.

---

## Table of Contents

- [Features Overview](#features-overview)
- [Installation](#installation)
- [Systems & Mechanics](#systems--mechanics)
  - [Survival](#survival)
  - [Zombies](#zombies)
  - [Inventory & Equipment](#inventory--equipment)
  - [Vehicles](#vehicles)
  - [Weapons](#weapons)
  - [Missions](#missions)
  - [Shop](#shop)
  - [Admin System](#admin-system)
  - [Login & Character Creation](#login--character-creation)
  - [GPS & Minimap](#gps--minimap)
  - [Scoreboard](#scoreboard)
  - [Radar](#radar)
  - [Dynamic Sky](#dynamic-sky)
  - [Particles & Visual Effects](#particles--visual-effects)
  - [Anti-Glitch](#anti-glitch)
- [Resources](#resources)
- [Preview](#preview)

---

## Features Overview

| System | Highlight |
|--------|-----------|
| Survival | Blood, hunger, thirst, temperature & infection |
| Zombies | Up to 50 active AI zombies with loot drops |
| Inventory | Dynamic 8–72 slot system with bone-attached visuals |
| Vehicles | 150+ spawn points, 12+ vehicle types with parts & fuel |
| Weapons | 28 weapon types with unique sounds and attachments |
| Missions | Supply drops & downed helicopter salvage missions |
| Shop | In-game currency store for items and vehicles |
| Admin | Full GUI admin panel with ban, warp, give item & more |
| Dynamic Sky | Real-time sky shader with moon phases and dynamic clouds |
| Custom Map | Maximap minimap replacement with 64 blip icons |

---

## Installation

1. Place all the folders inside your MTA server's `resources/` directory.
2. Add the following entries to your `acl.xml` (inside the appropriate `<group>`):

```xml
<object name="resource.dayzepoch"></object>
<object name="resource.e_login"></object>
```

3. Add the following entries to your `mtaserver.conf`:

```xml
<resource src="dayzepoch"     startup="1" protected="0" />
<resource src="e_login"       startup="1" protected="0" />
<resource src="dayzmap"       startup="1" protected="0" />
<resource src="admin"         startup="1" protected="0" />
<resource src="e_admin"       startup="1" protected="0" />
<resource src="e_scoreboard"  startup="1" protected="0" />
<resource src="e_downloader"  startup="1" protected="0" />
<resource src="e_shop"        startup="1" protected="0" />
<resource src="e_gps"         startup="1" protected="0" />
<resource src="e_textures"    startup="1" protected="0" />
<resource src="e_map"         startup="1" protected="0" />
<resource src="e_radar"       startup="1" protected="0" />
<resource src="e_dynamicsky"  startup="1" protected="0" />
<resource src="e_missions"    startup="1" protected="0" />
<resource src="particles"     startup="1" protected="0" />
<resource src="noglitch"      startup="1" protected="0" />
```

4. Start the server — you're done!

---

## Systems & Mechanics

### Survival

Players must manage four vital stats to stay alive:

- **Blood** — lost through combat, zombie attacks, and bleeding wounds. Restore with bandages and blood bags.
- **Food** — decreases over time. Eat canned food, cooked meat, MREs, and more.
- **Thirst** — decreases over time. Drink water bottles, sodas, or milk.
- **Temperature** — drops in cold areas. Use heat packs or find shelter.

Additional status effects:

- **Bleeding** — causes continuous blood loss until treated with a bandage.
- **Broken bones** — require morphine to treat.
- **Infection** — caught from zombie attacks; use antibiotics to cure.
- **Humanity** — a score that classifies you as a **Survivor** or **Bandit** based on your actions. Starts at 2500.

---

### Zombies

- Up to **50 active zombies** at any time, distributed across 40+ spawn locations on the map.
- **15 unique zombie skins** for visual variety.
- **AI behaviours:** idle wandering with random rotation, chase mode with sprint animation, periodic moan sounds (10 different audio files).
- **Loot drops:** zombies drop from a table of 58 item types upon death (weapons, ammo, food, medicine, tools, clothing) with weighted drop rates.

---

### Inventory & Equipment

**Backpacks** (bone-attached, visible on character):

| Backpack | Slots |
|----------|-------|
| Small Backpack | 12 |
| Standard Backpack | 16 |
| Medium Backpack | 24 |
| Large Backpack | 36 |
| Alice Pack | 48 |
| Coyote Pack | 63 |
| Czech Backpack | 72 |

**Inventory categories:**

- **Weapons** — 15 rifle types, 11 handguns and melee weapons.
- **Ammo** — 10 magazine/ammo types.
- **Food & Drinks** — 10 food items, water bottles, sodas, milk.
- **Medicine** — bandages, med kits, morphine, blood bags, pain killers, heat packs.
- **Tools & Items** — wood planks, road flares, land mines, wire fences, fuel canisters, vehicle keys.
- **Equipment** — 7 clothing types, helmets (Welder, Military, SWAT, Motorcycle…), vests (Military, Police).
- **Vehicle Parts** — tires, tank parts, engines, rotors, scrap metal.

**Building items:**

- Tents, safes, wire fences, campfires — all placeable in the world.
- Airdrop calling via radio item.
- C4 explosive placement.

---

### Vehicles

- **150+ vehicle spawn points** distributed across the map.
- **Vehicle types:**
  - Helicopters: MH-6J Civilian, AH-6X Little Bird
  - Military: HMMWV, Ural Military Truck
  - Civilian: Pickup Truck, Modern Van, ATV, Motorbike, Bicycle
  - Water: PBX Boat (9 water spawn points)
- **Parts system** — each vehicle requires specific parts (engine, rotor, tires, tank) to function. Parts can be looted or purchased.
- **Fuel system** — vehicles consume fuel; refuel with fuel canisters.
- **Repair system** — use scrap metal and vehicle parts to fix damage.

---

### Weapons

28 weapon types are available, each with unique audio and mechanics:

- **Rifles:** M4A1, AK-47, AK-74, AKM, AKS-74U, M16, G36, CZ550, Winchester
- **Sniper Rifles:** AS50, KVsk, M24, M107, Mosin Nagant, SVD
- **Handguns:** Glock 17, M1911, M9SD (silenced)
- **Shotguns:** Saiga-12k
- **Melee:** Hatchet, Machete, Baseball Bat, Shovel
- **Special:** Crossbow, Grenades

Weapons are displayed bone-attached on the character's back. Weapon slots: **primary (rifle), secondary (handgun), tertiary (melee)**.

---

### Missions

Dynamic missions spawn every **60 minutes** (active for 30 minutes) and require at least 1 online player:

1. **Supply Box Missions** — 12 possible spawn locations. Secure an airdrop supply crate filled with high-value loot.
2. **Downed Helicopter Missions** — 5 possible spawn locations. Salvage a crashed helicopter containing valuable military equipment (20 loot slots, partial fuel).

Loot tables contain 50+ item types with weighted probabilities.

---

### Shop

An in-game shop allows players to spend earned currency on:

- Weapons, ammo, food, and medical supplies.
- Pre-configured vehicles (spawned fully equipped with parts and fuel).

Shop building is placed at a fixed map location. All transactions are validated server-side.

---

### Admin System

A full GUI-based admin panel with the following tools:

- **Player management:** kick, ban, unban, mute, warp (teleport).
- **Weather control:** change weather state in real time.
- **Broadcast:** send server-wide messages.
- **Give item:** spawn any item directly to a player's inventory.
- **Spawn vehicle:** spawn any vehicle at a player's location.
- **View stats:** inspect any player's DayZ statistics.
- **Superman mode:** admin flight + invincibility toggle.

---

### Login & Character Creation

- Custom login map and UI presented on server join.
- Players choose from **5 crosshair styles**.
- New characters spawn with randomised food/thirst (80–100%) and standard starting gear.
- **9 player skins** available with custom DFF/TXD models.

---

### GPS & Minimap

- **GPS system** — Arma II-style GPS interface showing your position and nearby player markers on a world map (`world.jpg`). Two blip icon sets included.
- **Minimap (Maximap v0.6)** — replaces the default F11 map with a custom minimap featuring:
  - 64 blip icon types.
  - Configurable bounding box, zoom level and movement speed.
  - Exportable API for other resources to add/remove blips.

---

### Scoreboard

A DirectX-rendered scoreboard (v2.7.1) displaying player statistics:

- Kills, deaths, zombie kills, headshots, humanity score.
- Fully configurable: sortable columns, colour-coded names, scrolling, team visibility toggle.
- Render-target optimised for performance.

---

### Radar

Area radar system for real-time player position tracking, providing tactical awareness of nearby players and threats.

---

### Dynamic Sky

Sky shader system (v2.1.7 by Ren712) with:

- **Three sky layers:** troposphere, stratosphere, and horizon.
- **Dynamic cloud system** with normal-mapped textures (DDS format).
- **Moon phases** — 20 different phases tracked in real time.
- **Sun & moon vectors** — calculated dynamically based on in-game time.
- Can be enabled/disabled at runtime via exports.

---

### Particles & Visual Effects

85+ particle effects covering:

- **Combat:** muzzle flash, gun smoke, shell casings, blood spray, explosions (5 sizes).
- **Fire & smoke:** small/medium/large fire, car fire, riot smoke, industrial smoke.
- **Water:** splashes, wakes, hydrant spray, fountain, speed trails.
- **Vehicle:** exhaust fumes, overheat, nitrous oxide, jet thrust.
- **Environment:** dust clouds, helicopter rotor wash, wheel dirt, insects, breath exhale, cigarette smoke, teargas.

---

### Anti-Glitch

Includes the **Addon Anti-Glitch v1.0.20** system with map-placed collision and anti-exploit zones to prevent common MTA and DayZ-specific glitches.

---

## Resources

| Resource | Description |
|----------|-------------|
| `dayzepoch` | Core gamemode logic (zombies, vehicles, loot, inventory, accounts) |
| `dayzmap` | Custom map objects and world layout |
| `e_login` | Login screen and character creation |
| `e_admin` | Admin panel |
| `e_shop` | In-game shop |
| `e_missions` | Dynamic supply drop and helicopter missions |
| `e_scoreboard` | DX-rendered scoreboard |
| `e_radar` | Player radar |
| `e_gps` | GPS map interface |
| `e_map` | Minimap replacement (Maximap) |
| `e_dynamicsky` | Dynamic sky and weather shader |
| `e_textures` | Environmental texture replacements |
| `e_downloader` | Custom model/skin/asset delivery |
| `particles` | Particle effects library |
| `noglitch` | Anti-glitch protection |

---

## Preview

![Preview 1](https://image.prntscr.com/image/lfkOVHKYRnmmGbiIRRdk1Q.png)
![Preview 2](https://image.prntscr.com/image/vf0X-utGQOqT9mKMILm_Gg.png)
![Preview 3](https://image.prntscr.com/image/aFyKtIRlTn21Ku86FsDFiQ.png)
