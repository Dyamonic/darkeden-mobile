# Monster data and death flow audit

## Additional recovery and implementation — 2026-11-16

The original `Variable` table explicitly defines all three race birth points.
These are **birth coordinates**, separate from `Map.ResurrectionAddress`:

| Race | Variable | Map | Tile X, Y |
| --- | --- | --- | --- |
| Slayer | `SlayerBornMapCode` | 12 — Eslania Northwest | 117, 146 |
| Vampire | `VampireBornMapCode` | 1003 — Vampire Village | 62, 64 |
| Ousters | `OustersBornMapCode` | 1311 — Ousters Village | 24, 73 |

The original `MapUtil:calcMNMid` converts tiles to pixels with
`x=m*48+24`, `y=-(n*24+12)`. The old offline creator used one default map and
position for every race. New characters now use the recovered birth points.
Existing Vampire/Ousters characters left on map 12 by that old creator receive
a one-time location correction; other saved positions and character progress
are retained. The save validator now accepts known bundled map codes.

### More regular-monster location evidence

`Mission.ObjectType=1`, `ArrowCueType=2`, `MissionTarget` and `TransferPoint`
provide **1,650 quest/monster location links**, spanning **189 missions,
391 monster IDs and 39 maps**. The exported
`data-audit/quest-monster-locations.csv` joins the original target IDs with the
translated monster and zone names. For example:

| Mission | Destination | Target group |
| --- | --- | --- |
| 310002 | 2101, tile 59,45 | Dead Body IDs, including 4 |
| 320009 | 23, tile 138,80 | Monster IDs including 9 and 74–82 |
| 330014 | 81, tile 172,97 | Monster IDs 187–196 and their variants |

These coordinates identify a **quest hunt destination**, not every individual
monster's server spawn. The target list starts with a required kill count;
the exporter excludes that count before joining monster IDs. Likewise, the
10 `WorldBoss` rows contain explicit special-boss refresh coordinates/timers,
and the lair/altar tables retain their separate special-spawn data.

No complete ordinary-monster spawn population, HP, damage or kill-XP database
was recovered from this client. Do not present the quest links as exact server
spawn records or infer boss stats from player level tables.

### Current offline use

`tools/recover_world_data.py` reproducibly exports the source evidence and
generates `offline/WorldData.lua`. `Locations.lua` creates a small fixed local
population around up to three quest destinations per map, selecting the
lowest-level monster in each quest target group. Population counts, offsets,
40 HP, 7 damage, rewards and respawn timing are local adaptation values.
Original monster IDs, model IDs, levels and names are used for the actors.
The population no longer follows the player's saved location.

Whole-map safe villages have no mobs. Native race-specific safe tiles and
portal tiles are excluded from local spawn/navigation, and characters in safe
areas cannot take local monster damage or attack those monsters.

The native portal request is handled locally using `MapTransfer` destinations.
The live character must stand on a native portal that permits that target;
arbitrary map requests are rejected. Edge passages retain the matching tile
coordinate. Both village exits and the Slayer training entrance/return were
exercised in the emulator. Other bundled map passages have data support but
have not all been individually walked, and online dungeon/quest systems are
not recreated by this change.

Further original-server accuracy requires matching server spawn/population
data or captures from an authorized running server. The exported evidence
provides a map/monster cross-reference for comparing such data later.

The sections below document the earlier one-map implementation and initial
audit for historical context; its player-centered spawn rule has been replaced.

The bundled SQLite database is `editable-apk/assets/win32/res/data/data.bin`.
Readable original client Lua is in `reverse-engineering/unpacked/emag`.
The files in `data-audit/` export the relevant original tables as UTF-8 CSV.

| Requested data | What the recovered client contains |
| --- | --- |
| Monster identity and level | `MonsterInfo`: ID, names, level, model, AI type, grade, attack interval and appearance probabilities |
| HP | No static monster HP column found in the bundled tables. `app.data.model.MonsterData` receives current/max HP through `CreatureValueDef.Attr_CurHp` and `Attr_HpMax` in object properties supplied by the server. |
| XP per kill | No regular monster kill-XP table or formula found. The level EXP tables define player progression requirements, not monster rewards. The server supplies player EXP property updates. |
| Damage per hit | No base monster min/max damage columns found. Equipment and skill tables contain damage fields, but these do not establish a normal mob's complete attack damage. Attack animations and damage results are separate network messages. |
| Regular map spawns | No general regular-mob population/spawn table found. The client creates monsters from `OBJ_APPEAR`, including object ID, tile coordinates, direction and property array. |
| Special spawns | `WorldBoss` has monster IDs, map references, coordinates and refresh times. `NpcVampireLair`, `GateOfAltar`, `AltarOfBlood`, and `MirrorOfAbyss` contain dungeon monster types, zones and/or summon coordinates. These are exported; they are not a complete regular-world spawn database. |

For the current offline mob, `MonsterInfo.ID=5` is **Turning Dead**, level **2**,
model **6**, attack interval **775 ms**. `Model.Kind=3, Id=6` gives movement
interval **750 ms** and animation attack time **775 ms**. Original
`T_MonsterInfoMeta` divides the attack interval by 1000. Original movement uses
48-by-24-pixel map cells and direction-dependent speed from the model interval.

The initial offline build's **40 HP**, **20 XP per kill**, **7 damage every
1.4 seconds**, **8 gold**, **330-pixel detection range** and **12-second mob
respawn** are local adaptation values in `offline/World.lua`, not recovered
original server balance. Seven candidate positions are generated around the
player's loaded location, and blocked candidates are omitted. These are also
local spawn rules, not original spawn coordinates. This repair preserves that
balance while using the original actor movement timing and collision grid.

Original map `12` is `eslania_NW`, resource `1002`. Its `ResurrectionAddress`
is `[[1,12,117,145],[2,1003,65,70],[3,1311,33,75]]`. These are race-specific
resurrection destinations, not monster spawns. Cross-map resurrection is not
implemented by the current one-map offline backend.

## Player death

The original flow exists in the recovered client:

1. `GameModule:onObjDie` changes hero status and calls `WorldAgent:dieAgent`.
2. `WorldAgent` dispatches `NTF_HERO_DIE` and enters `HeroStateDie`, then
   `HeroStateDead` after the death animation.
3. `MapActor:onHeroDie` applies the delayed dark overlay.
4. `CompRevive` uses the coma duration and `Constant.ReviveShowTime=5` to open
   the original revive panel through `MainUILayer:showRevive` after five seconds.
   The ordinary button sends `ClientCmdDef.RELIVE`; its countdown also requests
   revival when the duration expires (the original comments describe 60 seconds).
5. `GameModule:onReliveAck` dispatches `NTF_HERO_RELIVE` after success.

The old local simulation immediately restored full HP at zero, bypassing this
flow entirely. The repair retains zero HP, sends the original death event, uses
the original UI/countdown, handles its ordinary revive request locally, and
persists the dead state. Paid/item/skill revival alternatives remain governed by
the original availability checks and are not new offline features.
