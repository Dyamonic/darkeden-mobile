# V2 to mobile port status

2026-11-16. V2 reference: `C:/Users/nasse/Desktop/DarkEden-v2/server-master`.
External source is unchanged. Audit: `reverse-engineering/PC-SERVER-REFERENCE.md`.

| System | Current implementation | Remaining work / adaptation |
| --- | --- | --- |
| Saves | SQLite authority, three characters, one-time backed-up roster import | Production accounts and concurrent-device ownership |
| Mobs | 583 PC/mobile mappings; V2 population counts/event delays; 183 mobile grids; safe/portal exclusion, bounded A* pursuit, respawn | Unmapped mobs/zones, complete boss/event scripts and cross-version differences |
| Mob stats | V2 attributes/enhancement/HP exceptions and delays; mobile levels/models retained | Exact mobile balance, night/party/global modifiers, resistances and complex AI |
| Resurrection | NPC option saves per-character map/tile from mobile ResurrectionAddress; same/cross-map respawn; race-home default | Castle inside/outside options share the original NPC-only request, so distinct castle rules remain future work |
| Combat | Server range/LOS, hit chance, damage, HP, death/revive and cooldowns | Protection reduction is adapted; complete magic/critical/resistance rules |
| Loot | Race treasure groups, 100000 modulus, weighted class/type rolls, 848 item mappings, native ground pickup | Unmapped rolls skipped/counted; option affixes, luck, complete gold and party rules |
| Attributes | V2 racial formulas with mobile ratios/equipment; Vampire/Ousters three points per level; Slayer domain/use-based growth | Slayer cap redistribution and complete domain EXP modifiers |
| Items | Persistent bag packing/stacking, pickup, equip/unequip, normal NPC buy/sell, basic HP/MP consumables | Banking/storage, affixes, durability, two-hand constraints, complex consumables |
| Missions | Persistent main chains, NPC/kill/collection goals, once-only rewards | Branch/daily/weekly unlock/reset rules, advanced goals and choice rewards |
| Skills | 189 arithmetic programs extracted, 167 normalized name matches, 85 basic/direct/healing handlers; learning, points, resource/CD checks | Conditional effects, passive skills, status effects, summons, AoE, all weapon constraints; drain/corpse effects are adaptations |
| GM | Original console, local administrator role, validated item/mob creation, teleport and selected properties | Other original commands and production audit log |
| Presentation | Original UI/font/actors, quest/skill lists, stats, damage numbers, hit reactions, live mob HP bars, death UI and racial level effects | English layout polish in rarely opened windows |
| Network | Native HTTP, sequenced retry-safe commands, snapshots and restart reconnect over loopback/ADB | Public accounts/TLS, shared world, PvP, parties/guilds/trading/market/events |

## Evidence and limits

- 25 isolated authority tests cover forged stats/teleport, movement budget,
  command retries, native empty-argument encodings, points/progression, saves,
  collision/populations, death/revive, pickup, quest reward-once, GM permissions,
  equipment, stack rollback and basic skill validation.
- 703 collision samples agree with the native mobile map renderer.
- Native Android HTTP read both imported characters. Original stats showed
  server-owned values; EXP sizing passed. Original GM window opened without
  granting either imported character GM authority.
- Mobile retry tests cover silent backoff, automatic re-entry, bounded queues,
  missing callback deadlines and ignored late replies.
- Restart testing exposed the legacy HTTP binding discarding non-2xx bodies;
  the native adapter now receives structured application errors and reconnects.
- Seeded probe: 10000 Turning Dead/Vampire treasure rolls produced 3966 mapped
  drops and no unmapped types for this probe. Other treasure combinations can
  still reference unmapped items.

Backend tests do not establish that every mission, skill, vendor or GM operation
has been exercised through native UI. The remaining systems above are unfinished;
importing reference data does not implement them automatically.

Resurrection tests cover NPC/race/proximity/death validation, forged destination rejection, persistence, same-map and cross-map respawn, all racial defaults and living-character retry safety. Native validation covers the original NPC request reaching the adapter. Native playtest with a temporary character: bound Murphy, died on map 12, and revived to map 61 at X102 Y220 with full HP and cleared death UI.

Combat presentation fix: server hit events now use the original GameModule HP/effect path, with complete cast targets, zero-damage miss feedback, HP-bar refresh, final-hit-before-death ordering and retry of stalled idle movement. Native fixture verified HP 10 -> 6 -> 0, original bitmap damage label, completed hit reaction and death animation without changing player/server progress.

Monster spawn exclusions now combine every race sanctuary in MIP rectangles, all 104 minimap SafeArea polygons (including borders), portals and wholly safe maps. Player safety remains race-specific. Population placement, pursuit and GM creation share the exclusion mask; respawns revalidate their home tile and relocate or stay dormant if no legal tile exists. Native combat fixtures also select a location outside safe areas.

Native cold-launch check after installing the rebuilt APK: all 7 nearby living mobs on Perona map 61 were outside the client safe tiles and green minimap polygons. No client errors were recorded.
