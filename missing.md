# Missing data and offline gameplay systems

Audit date: 2026-11-16. This records findings in the recovered Android client,
its bundled SQLite database, and the current offline implementation. It is an
audit of mobs, loot, progression, and known offline gaps—not a claim that every
feature of the original online game has been exhaustively audited.

**Not recovered** means the original authoritative values/formulas have not been
found in these files. **Not implemented offline** means useful client data/UI
exists, but the local backend does not yet carry out that feature. A visible
original window does not establish that its transactions work offline.

## Monster data: recovered versus missing

Database: `editable-apk/assets/win32/res/data/data.bin`, table `MonsterInfo`.
There are **914 monster entries**. Its actual columns are:

```text
ID, ActionCombId, Name, ENName, Level, AttackInterval, AppearMethodRates,
ModelId, Weapon, AIType, Grade, MonsterSummonInfo, Capture, RoleModel,
Color, ClothColor, DigLastFrame
```

| Data | Recovered evidence | Remaining gap |
| --- | --- | --- |
| Monster IDs, names, levels | `MonsterInfo.ID/Name/ENName/Level` | Available; do not invent levels from HP. |
| Appearance and animation | Model/action IDs, colors, weapon appearance; `Model` timing data | Available assets do not establish combat balance. |
| Attack interval | `MonsterInfo.AttackInterval`; the original meta divides milliseconds by 1000 | Local combat cooldown still uses an adaptation value. |
| AI classification | `AIType`, `Grade`, appearance-method rates and summon-related fields | IDs/hints are not the complete authoritative AI state machine or parameters. |
| Current/max HP | Original `MonsterData` consumes `Attr_CurHp` and `Attr_HpMax` from incoming object properties | No static per-monster HP table or authoritative HP formula found. |
| DEF / protection / evasion / accuracy | Client property definitions and combat presentation exist | No per-monster base values or complete combat calculation found. Equipment DEF/damage fields are equipment data, not mob stats. |
| Physical/magic damage, resistances, critical rates | Skill/effect and property infrastructure exists | Complete per-monster combat values and server resolution formulas not recovered. |
| XP and gold per kill | Client can receive property/reward updates | No ordinary-mob kill-XP/gold table or authoritative reward formula found. Player level EXP tables are not kill-reward tables. |
| Ordinary spawn populations | Quest destinations identify hunt areas and target monster IDs | Exact spawn points/areas, counts, weights, randomization, individual respawn timers and complete map populations not recovered. |
| Special spawns | `WorldBoss` (10 rows), `NpcVampireLair` (4), `GateOfAltar` (1), `AltarOfBlood` (1), `MirrorOfAbyss` (1) have specialized spawn/summon/timing data | These are partial original evidence, not a complete ordinary-world spawn database; their full encounter logic is not implemented locally. |

Example original record: monster **5**, **Turning Dead**, level **2**, model **6**,
attack interval **775 ms**. Its level and animation timing are recovered; its
original HP, DEF, damage and kill rewards are not established by this record.

Sources:

- [Original monster metadata](reverse-engineering/unpacked/emag/app.data.meta.T_MonsterInfoMeta)
- [Original server-fed monster model](reverse-engineering/unpacked/emag/app.data.model.MonsterData)
- [Original object appearance handler](reverse-engineering/unpacked/emag/app.module.GameModule) (`onObjAppear`)
- [Earlier spawn/death audit](reverse-engineering/MOB-DATA.md)
- [Recovered quest hunt locations](reverse-engineering/data-audit/quest-monster-locations.csv)

## Loot: partial records exist, general mob loot tables are missing

**No complete ordinary-monster-to-item drop table was found.** No recovered
general table maps each mob to its items, probabilities, quantities, gold range,
equipment grades/affixes, or race/level conditions.

Recovered loot-related evidence:

- `WorldBoss.SlayerDroppedItems`, `VampireDroppedItems`, and
  `OustersDroppedItems` contain race-specific item lists. For example, boss row
  101 / monster 40765 lists item IDs 701011, 701012, 701010, 701002, 701007,
  701001 and 202004. These are useful **drop previews**, not confirmed chances
  or guaranteed awards. The original `HolyFightModule:getLeaderDrops` converts
  their item references into display objects; it does not roll a drop.
- `NpcVampireLair.Reward`, quest rewards (`Mission.Reward/ALReward`), and other
  event/reward tables contain specific reward data. They must not be generalized
  into every monster's loot table.
- Item and equipment definitions provide names, icons, types and equipment
  properties. An item catalog does not establish which mob drops each item.
- `Item.IsDrop` is used by `CompItemTips` to control the **Discard** action for
  owned items. It is not a monster drop chance. `Equip.IsDrop` alone also does
  not provide a mob-to-item mapping or probability.
- Original client code can display ground items announced through `OBJ_APPEAR`
  and includes pickup/corpse handling. This is client presentation and requests,
  not the missing server loot-generation logic.

Still needed for a complete local loot system:

- [ ] Per-monster loot groups, item probabilities/weights and quantity ranges.
- [ ] Gold and kill-XP rewards, with any level/race/party modifiers.
- [ ] Equipment generation rules: quality, affixes, durability and binding.
- [ ] Ground-drop creation, persistent item identity, ownership and expiration.
- [ ] Local pickup validation, stacking, bag-capacity checks and saved inventory.
- [ ] Corpse-specific actions/rewards and boss/dungeon reward eligibility.
- [ ] Confirm whether boss preview lists are exhaustive and obtain their real odds.

Sources:

- [Boss drop-list metadata](reverse-engineering/unpacked/emag/app.data.meta.WorldBossMeta)
- [Boss preview consumer](reverse-engineering/unpacked/emag/app.module.HolyFightModule)
- [Discard flag consumer](reverse-engineering/unpacked/emag/app.scene.gameTL.comps.CompItemTips)

## Current offline placeholders that need replacement

These are deliberately local values, **not recovered original balance**:

| Behavior | Current local value / rule |
| --- | --- |
| Mob HP | 40 for each locally spawned mob |
| Mob hit damage | 7, with no full DEF/evasion/resistance resolution |
| Mob hit cooldown | 1.4 seconds |
| Mob respawn | 12 seconds after death |
| Player attack damage | `16 + level * 4` |
| Player attack cooldown | 0.5 seconds |
| Kill reward | 20 XP and 8 gold |
| Potion reward | One potion every third total kill; no item drop roll |
| Local player max HP | `100 + level * 20` |
| Local XP threshold | `level * 60`; bundled original progression tables are not yet used by the simulation |
| Mob placement | Small deterministic populations near recovered quest hunt destinations; original IDs/models/names/levels are used |

See [World.lua](reverse-engineering/offline/World.lua),
[Locations.lua](reverse-engineering/offline/Locations.lua), and
[Bridge.lua](reverse-engineering/offline/Bridge.lua). The bridge also supplies
placeholder displayed damage/accuracy/MP values; those displays and the actual
simulation must eventually use the same derived-stat calculation.

## Player attributes and progression

Recovered original tooltips say:

| Attribute | Described effects |
| --- | --- |
| STR | HP, defense and physical damage |
| DEX | HP, hit chance, evasion and physical damage |
| INT | HP, MP and magic damage |

These descriptions do **not** provide the full original numerical formulas.
`app.scene.role.Attributes:calculateAttributes` contains simplified character-
creation preview calculations; it is not proof of the live server combat math.

- [ ] Award and save spendable Vampire/Ousters level-up attribute points locally.
  Original `LevelExpInfo.AttributePoints` contains 3 in levels 1–149 and 4 in
  its level-150 row. A decision to use exactly 3 for every level would be a local
  rule overriding that exception. Skill points are a separate table field.
- [ ] Connect the original STR/DEX/INT allocation window and request 519 to local
  validation, point spending, stat refresh and saves. Currently it is unhandled
  by `Bridge:request`.
- [ ] Separate initial stats, earned/allocated stats, equipment bonuses and total
  stats correctly. The current bridge mirrors starting stats into both initial
  and added/pure fields; original getters can therefore double-count base stats.
- [ ] Derive HP/MP, damage, defense, hit, evasion and skill effects from stats.
- [ ] Recover or explicitly design Slayer attribute-growth formulas. The client
  has separate STR/DEX/INT EXP and `AttributeExpInfo` thresholds (315 rows), plus
  Blade/Sword/Gun/Heal/Bless domain EXP (`SlayerLevelExpInfo`). It does not expose
  a confirmed per-class automatic STR/DEX/INT allocation formula in the audited
  files. Do not invent class growth ratios and label them original.
- [ ] Implement actual Slayer domain/weapon progression. The current bridge
  assigns the offline level to Blade and leaves the other four domains at 1.
- [ ] Implement skill learning/spending and full local skill execution, resource
  costs, cooldowns and effects. Original skill UI/data alone is insufficient.
- [ ] Handle advanced/transferred progression and reset rules separately; the
  original Slayer UI has advancement-specific allocation behavior.

Sources: [HeroData](reverse-engineering/unpacked/emag/app.data.model.HeroData)
(`getLevel`, `calculationPercent`, stat getters),
[allocation request](reverse-engineering/unpacked/emag/app.module.GameModule)
(`assignAttributePoint`), and
[allocation window](reverse-engineering/unpacked/emag/app.scene.widget.window.UIWndUsePoints).

## Other known offline gaps

- [ ] Full quest acceptance/progress/completion and reward transactions.
- [ ] Full inventory/equipment actions, shops and original economy. The current
  local potion/gold inventory does not implement every original item operation.
- [ ] Complete dungeon/boss encounter mechanics and rewards.
- [ ] Exhaustive walk-through testing of every map passage/NPC travel option.
  Some original destinations work locally and selected routes have been tested;
  this is not verification of every destination.
- [ ] Future private-server networking/account/login integration, if wanted.
  Multiplayer and online-only services are intentionally unavailable today.

Original UI/font, English localization, three isolated character saves,
race-specific birth maps, basic local movement/combat, death/revive, selected
portal/NPC travel and common-window caching already exist. They should not be
mistakenly marked missing or removed while implementing the gaps above.

For original-server accuracy, the main missing inputs are matching server combat
definitions/formulas, ordinary spawn populations, and full loot/reward tables.
The absence claims here are limited to the files audited; they are not proof that
such data never existed elsewhere.
