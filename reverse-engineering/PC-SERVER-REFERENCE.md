# DarkEden-v2 server reference audit

Audited 2026-11-16, read-only. Source root:
`C:/Users/nasse/Desktop/DarkEden-v2/server-master`.

This folder contains a PC DarkEden server, SQL seed data and runtime data files.
It supplies implementation references for many gaps in the mobile client.
**No PC data or formulas have been applied to the APK, characters or saves by
this audit.** The external project was not edited or started.

## What was recovered

| Missing mobile system/data | PC source now available | Still required for the mobile game |
| --- | --- | --- |
| Mob attributes/levels | `initdb/DARKEDEN.sql`: 635 `MonsterInfo` rows, including STR/DEX/INTE, level, delays, sight, ranges, AI type, enhancements, treasure/class fields | Validate species/variant mapping and choose compatible balance. |
| Mob HP/DEF/accuracy/protection/damage | `AbilityBalance.cpp` computes stats; `Monster.cpp` constructs the monster with those calculations, enhancements and special cases | Port calculations and relevant variables/caps; test the actual mobile combat path. |
| Ordinary mob populations | 148 `ZoneInfo` rows; `MonsterList` and `EventMonsterList` yield 3,278 population entries | Match maps and monster variants, preserve safe/portal restrictions, reproduce population/respawn rules. |
| Spawn locations | 148 referenced SMP map files readable; `Zone.cpp` builds candidate tiles, `MonsterManager::findPosition` chooses valid ones | Coordinate/collision validation against mobile maps; not a list of fixed coordinates per mob. |
| Mob loot | 249 race-specific treasure binaries, decoded completely using `Treasure.cpp`'s format; server chooses lists by monster class/name and recipient race | Map PC item classes/types/options to mobile item IDs, then port roll/ownership/pickup/save behavior. |
| XP rewards | `CreatureUtil.cpp::computeCreatureExp`, `Monster.cpp`, `skill/SkillUtil.cpp` and party-related code | Follow race/kill/blood-drain modifiers and caps; the raw `MonsterInfo.Exp` column alone is not the full award. |
| Vampire/Ousters stat points | `increaseVampExp` and `increaseOustersExp` add 3 to the unspent attribute bonus when leveling | Connect mobile allocation UI, local authority and persistent points; mobile level-150 table differs. |
| Slayer stat growth | `Slayer::divideAttrExp`, `SkillUtil::shareAttrExp/divideAttrExp`, per-weapon/skill callers, STR/DEX/INT balance tables | Port use-based attribute EXP, domain EXP, thresholds/caps and display/save updates. |
| Derived player stats | `AbilityBalance.cpp` includes race/weapon/domain formulas for HP, MP, accuracy, defense, damage and other attributes | Resolve version-specific constants and make displayed stats and simulation use one calculation. |
| Skills/effects/combat | `src/server/gameserver/skill/`, skill balance tables, hit/damage/effect utilities | Much larger port; original mobile skills and PC skill IDs/behavior need mapping. |
| Inventory/equipment/quests/economy | Server item, equipment, quest/action and shop infrastructure exists under `src/server/gameserver` | Presence confirmed as reference code, not a completed per-feature compatibility audit or offline implementation. |
| GM authority | Character `Competence`, `isGOD`/`isDM` checks in `src/Core/CGSayHandler.cpp`; local project's admin helper maps account `Author=0` and characters `Competence=0` to GOD | Design explicit offline roles or future server checks; PC `*` commands do not directly implement mobile `@` commands. |

## Mob HP and defense are calculated, not just a static HP column

The PC monster table contains attributes and an `Enhance` string. The constructor
in `src/server/gameserver/Monster.cpp` calls:

```text
computeHP, computeToHit, computeDefense, computeProtection,
computeMinDamage, computeMaxDamage
```

For the ordinary monster branch in `AbilityBalance.cpp`, before enhancement,
global ratios, caps and constructor special cases, the base expressions are:

| Stat | PC base expression, truncated to an integer |
| --- | --- |
| HP | `STR * (2 + level / 100)` |
| Accuracy | `(DEX / 2) * (1 + level / 100)` |
| Defense | `(DEX / 2) * (1 + level / 100)` |
| Protection | `STR / (5 - level / 100)` |
| Minimum damage | `STR / (6 - level / 100)` |
| Maximum damage | `STR / (4 - level / 100)` |

The C++ expressions use floating-point division. HP and damage also use global
ratios; enhancement percentages and hard caps must be applied in source order.
`Monster.cpp` contains monster-specific HP overrides and multipliers. Final
damage received additionally depends on the combat resolution code.

Worked reference example: PC **MType 5, Turning Dead**, level **1**, STR **15**,
DEX **10**, INT **1**, empty enhancement. With the default 100% monster HP/damage
ratios, and no runtime effects, the ordinary constructor produces **30 HP**,
**5 accuracy**, **5 defense**, **3 protection**, and **2–3 base damage**. These
are PC reference calculations, not values verified for the mobile game.

## Where mobs spawn

`ZoneInfo.MonsterList` encodes `(monsterType, count)` entries. Event lists add a
delay field. The manager aggregates normal populations by sprite type and can
choose among matching variants during replenishment, so a tuple is not proof
that one exact variant permanently occupies one exact tile.

`Zone.cpp` reads SMP tile flags. Ordinary candidate positions start with empty
tiles in the inner map rectangle. `MonsterManager::findPosition` picks a random
candidate and rejects movement-blocked tiles, portals and safe zones. Additional
fallback/special-zone logic exists in the loader. Its normal replenishment loop
checks on a five-second schedule; event spawns have their own delays. This is
different from the mobile adaptation's fixed twelve-second respawn.

Examples with matching zone IDs and dimensions in both sources:

| Zone | PC SMP | Dimensions |
| --- | --- | --- |
| 12 | `eslania_NW.smp` | 256 × 256 |
| 23 | `limbo_lair_SE.smp` | 256 × 256 |
| 61 | `perona_NE.smp` | 128 × 256 |
| 1003 | `vampire_village.smp` | 128 × 128 |
| 1311 | `ousters_village.smp` | 128 × 128 |

**130 PC zones share an ID and dimensions with a mobile map.** This is promising
mapping evidence, not verification of identical geometry, portals or tile flags.
See `map-id-candidates.csv` and `zone-populations.csv` below.

## Loot tables really are present

`MonsterInfo.cpp` loads `<EName>.<race>.bin` when `MonsterClass=0`, otherwise
`Class<MonsterClass>.<race>.bin`. The races are `slayer`, `vampire`, and `ousters`.

`Treasure.cpp` reads nested records containing item/option roll ratios, item-class
weights, item-type weights and option-type weights. All **249 files** were decoded
with bounds checks and exact end-of-file consumption. The exported integers are
raw PC roll parameters/weights; they should not all be labeled percentages.
All **1,632 monster/race loot references** required by the seed's treasure-enabled
monsters resolve to decoded files; no missing referenced loot file was found.

`MonsterManager.cpp` selects a race list based on loot ownership/party/last-hit
context, then applies rolls and additional modifiers. PC item class/type pairs
are a different identifier scheme from mobile item IDs. A complete port must
also retain luck/event modifiers, equipment generation, ownership and inventory
validation. A shared monster name is not sufficient to copy its item references.

## Slayer growth and three-point leveling

`skill/SkillUtil.cpp` explicitly adds **3** unspent attribute points in both the
Vampire and Ousters level-up paths. Ousters skill-point bonuses are separate.

Slayers use weapon/skill-driven growth rather than a simple automatic grant of
three stat points per character level:

- Sword/Blade melee calls use STR/DEX/INT weights **8/1/1**.
- Gun attacks use **1/8/1**.
- Cross/Heal and Mace/Enchant melee calls use **1/1/8**; individual skills have
  their own callers and weighting.
- `Slayer::divideAttrExp` gives the dominant attribute a main share and other
  attributes smaller shares, subject to time/event effects, total-stat limits,
  individual caps and possible redistribution at caps.
- Domain progression is separate from attribute progression. The exported
  `STRBalanceInfo`, `DEXBalanceInfo` and `INTBalanceInfo` each have 315 rows.

These are concrete references for the previously missing growth rules. They
remain PC-version rules until adapted and tested against mobile expectations.

## Compatibility limits and remaining work

The mobile database has **914** monster rows, compared with **635** PC rows.
An exact case-insensitive English-name join produces **4,968 candidate pairs**
covering **647 mobile IDs**. Names repeat across variants; none of these pairs is
an automatically approved mapping, and a missing name match is not proof that
no counterpart exists.

For example, **Turning Dead** has mobile ID **5**, level **2**, model **6**, but
PC MType **5**, level **1**, sprite type **8**. IDs can coincide while the level
and appearance identifiers differ. Mobile-only monsters/bosses, items, maps or
skills may need other sources or explicit local definitions.

The audited source root also has a nested `server-master` directory. This report
uses the outer root specified above; it does not claim both copies or an already
running server's live database have identical values. SQL seed data and default
code values can differ from runtime configuration.

Next implementation work can use this reference in order: validate mob/map/item
mappings; port derived stats and race progression; adapt populations and combat;
then loot creation/pickup and remaining quests/skills/economy. Existing saves
need a versioned migration rather than replacement.

## Reproduction and exported evidence

Run from the mobile project:

```powershell
py tools/audit_pc_server.py C:/Users/nasse/Desktop/DarkEden-v2/server-master
```

The script reads only allowlisted gameplay tables, map headers and treasure
files. It does not connect to a database, import accounts, execute commands or
alter either game's state. Original legacy text may be garbled in the seed;
English names are preserved as supplied.

Exports in [data-audit/pc-server](data-audit/pc-server/):

- [Monster definitions](data-audit/pc-server/MonsterInfo.csv)
- [Zone definitions](data-audit/pc-server/ZoneInfo.csv)
- [Population entries](data-audit/pc-server/zone-populations.csv)
- [Map ID/dimension candidates](data-audit/pc-server/map-id-candidates.csv)
- [Monster name candidates](data-audit/pc-server/monster-name-candidates.csv)
- [Decoded treasure tables, compressed JSON](data-audit/pc-server/treasure-tables.json.gz)
- [Monster/race-to-loot-file references](data-audit/pc-server/monster-loot-references.csv)
- Race/attribute/rank/pet/skill progression CSVs in the same directory.
- [Counts, examples and source SHA-256 hashes](data-audit/pc-server/summary.json)

This is reference recovery and analysis. No gameplay integration or live
playtest of these PC systems is claimed.
