# Offline original-UI build verification

## Race starts, spawn evidence and English polish - 2026-11-16

The final signed build uses the original Variable-table race birth points:
Slayer 12 (117,146), Vampire 1003 (62,64), and Ousters 1311 (24,73).
The old Vampire character on map 12 received a one-time correction with its
level, XP, gold, supplies, kills and HP preserved. Existing Slayer position was
retained. A temporary Ousters character was created through the original UI,
including its native stat allocation handlers, entered its source village,
and was removed from both roster and recovery snapshot after testing.

The original portal handlers were exercised for 1311 -> 81, 1003 -> 23 -> 1003,
and 12 -> 2101 -> 12. GL-thread test setup placed the live actor on the original
portal tiles; native portal checks, send handlers, map loading and offline save
paths were used without replacing backend methods. Destination map codes and
saved map codes matched. Safe villages contained zero mobs. The training map
contained quest-linked Dead Body actors. Native safe areas and portal cells are
excluded from mob spawning/navigation, and local safe-area combat is guarded.

The source audit now exports 1,650 quest/monster location links across 189
missions, 391 monster IDs and 39 maps, plus 10 special-boss coordinate records.
These are distinguished from a complete original server population. The local
population counts/offsets and combat balance remain adaptation choices.
See MOB-DATA.md and data-audit/*locations.csv for the evidence and limits.

English polish changes 793 display-name/description fields, standardizes race
terminology in 118 cached entries, and adds 17 image-lettering edits after a
4,805-sprite OCR audit (252 regions total in 39 images). Original fonts, sprite
geometry, and pixels outside the recorded lettering regions are verified.
Zone names use readable versions of the original English identifiers. NPC
service labels, potion descriptions and item actions use consistent English.
The local supply tooltip shows the actual +65 HP effect; redundant duplicate
English item names are suppressed. The database's gameplay values remain intact.

Final installed-build checks covered Start, selection, creation/point warning,
Vampire village, inventory and the supply tooltip. Runtime loaded-field checks
found zero Chinese (including 144 fields with the item panel). No runtime error
file was generated in the final checks. Temporary fixture errors from earlier
setup attempts were cleared before verification. Existing two characters and
their progress remain; there is one free slot.

All five suites passed: test_locations, test_localization, test_roster,
test_offline and test_mob_death. The signed APK's nine offline modules,
tooltip overlays and all localization/native replacements match source.
APK signature verification passed; READ_LOGS remains removed. Both APK names
are updated, and the emulator is left at Start.

Evidence: tools/spawn-slayer.png, tools/spawn-vampire.png,
tools/spawn-ousters.png, tools/slayer-training.png,
tools/polished-create-final.png and tools/polished-item-final.png.

## English localization — 2026-11-16

The signed English APK localizes 21,509 database display fields, all UI string
tables across 53 packages, 117 Lua overlays, and 235 lettering regions across
39 original PNG assets. 3,993 PNGs and 2,663 unencrypted effect textures were
scanned. Effect candidates were visually reviewed as non-text shapes/emblems.

`py tools/test_localization.py` verifies complete Chinese removal from database
display fields and UI string tables, unchanged non-language values/row counts,
valid formatting substitutions, valid JSON structure in 87 structured values,
Lua syntax, unchanged image dimensions, unchanged pixels outside lettering
rectangles, the untouched original font file, and preserved native Android
resource indices/non-language strings. The 244 translated native resource
strings include the launcher label `DarkEden Returns`, verified with aapt2. Existing roster, simulation,
death and navigation tests also pass.

Installed-build walkthroughs in airplane mode covered Start, the original
character selection/creation screens, gameplay, inventory, a potion tooltip,
equipment, character stats, death and revival. The English revival choices
fit their original controls, and the original free-revive button restores and
saves positive HP. Runtime UI-tree checks found zero Chinese text
in the loaded fields (67 on the character screens and over 130 in game/windows).
English map names, item names/descriptions, stats, system messages and controls
render using the existing fonts. Narrow tabs are rotated and longer button
titles shrink within their original control bounds. The copied configuration
DB uses a content-derived English filename, avoiding the old Chinese cache
without deleting or changing character saves.

Evidence: `tools/english-roles-final.png`, `tools/english-create-final.png`,
`tools/english-game-final.png`, `tools/english-item-final.png`,
`tools/english-gear-final.png`, `tools/english-stats-final.png`,
`tools/english-death-final.png`.
Full audit/reproduction details and scope boundaries are in
`game-translation/README.md`. Source strings and image labels are translated
using original supplied English names, a reviewed UI glossary and machine
translation for the larger corpus; rare wording may still need editorial polish.

## Multiple local characters — 2026-11-16

The installed signed build supports the original three character slots. The
existing level-4 Wanderer was migrated into the version-2 roster with its XP,
gold, supplies, position and dead state preserved; the legacy file was left
unchanged. Via the original creation form and Next button, temporary Vampire
and Slayer characters were created in slots two and three. All three models
and names rendered in the original selection UI (`tools/three-characters.png`).

The second and third characters entered the original GameScene. Returning to
selection through the existing local reselRole handler and selecting the first
slot restored Wanderer's level 4, XP 40, gold 48 and seven supplies. Original
slot-selection code and the actual Next control were used. All three characters
and the selected slot survived a force-stop/relaunch. The original Create
handler correctly stayed on selection when all slots were full.

`py tools/test_roster.py` passed migration, legacy-file preservation, three-slot
capacity, independent progress, last-selected persistence, duplicate/invalid
rejection, backup recovery and damaged-roster protection. Existing simulation,
death and routing suites passed. APK signature verification passed.

Test setup used GL-thread instrumentation to fill the original name input and
choose a race, read state and call original selection/return handlers. Backend
methods were not replaced. Temporary test characters were removed after the
checks, including from the recovery snapshot, leaving the existing character
and two free slots. No runtime errors were recorded in the final walkthrough.

## Opening screen and original font — 2026-11-16

The signed installed APK cold-launches to `starter/bg.png`, the original
background referenced by `launcher.LauncherProgressLayer`, with a Start button
using `launcher/start_btn.png`. No account fields or updater are invoked.
The button's runtime title/font getters returned `Start` and
`font/fangzheng.ttf`, matching the original launcher font registration.
Before clicking, the local Bridge had not initialized. Waiting on the screen,
clicking Start (including repeated taps), entering the original character
screen, and entering gameplay were checked in airplane mode. Existing character
progress was retained. No runtime error file was generated in the final clean
walkthrough. Lua syntax/simulation tests and the APK signature passed; the
embedded bootstrap and StartScene were compared with current source.

Evidence: `tools/start-original-font.png`, `tools/start-to-role.png`,
`tools/start-to-game.png`, and app-private `start-font-test.txt`.

## Mob movement and death repair — 2026-11-16

The current `single-player.apk` includes Navigation plus the updated World,
Store and Bridge. Its signature was verified, and all four embedded script
modules were compared byte-for-byte with source. The replacement HUD is absent.

- Movement was sampled in the final installed game over 80 simulation ticks: 131
  moving samples, no queued movement backlog, maximum actor/simulation position
  difference 7.63 pixels. This check samples actual original monster actors.
- Routing regressions cover a wall detour, blocked paths, adjacent diagonal
  walls, and prohibition of diagonal corner cutting.
- A test fixture placed a mob next to the character and set player HP to one;
  the real local combat update delivered the lethal hit. HP stayed at zero.
- The original death animation/overlay and revive panel appeared after the
  original five-second delay. The countdown remained active.
- Force-stop/relaunch with a zero-HP save retained death. The original revive
  panel returned, and its actual on-screen button restored the alive state,
  closed the panel and saved the revival. No offline runtime error file was
  generated in the final clean walkthrough.
- Repeated-death/startup tests exposed and fixed notification ordering: the
  coma duration must exist before original UI listeners see a dead hero.
- Both `py tools/test_offline.py` and `py tools/test_mob_death.py` passed.
  The death regression fails against the previous APK's World implementation.

Evidence: `tools/death-reloaded.png` and app-private `death-panel-pass.txt`,
`revive-pass.txt`, `mob-movement-test.txt`. Instrumentation drives test setup and
reads state on the GL thread; it does not substitute backend methods in the
final APK walkthrough. HP/XP/damage balance and regular spawn positions remain
local placeholders; see `MOB-DATA.md` and the exported `data-audit/*.csv`.
Revival currently happens in place; original town/cross-map destinations and
special resurrection items/skills are not implemented by this repair.

## Initial build checks

Verified on the existing Android emulator with the installed signed
`android-studio-project/app/build/outputs/apk/apktool/single-player.apk`.

- App-icon launch and the original character-selection Next button enter the
  original GameScene while airplane mode is enabled, without an update prompt.
- Original HUD, map, minimap, movement/attack controls and inventory render.
  Original inventory displays the locally owned healing stack.
- Local enemy combat and progression were exercised during development;
  the persisted character reached level 3 with 10 kills.
- A GL-thread integration check called the original ItemModule use-item handler
  while paused: one potion was consumed, HP restored, pause retained, and the
  updated inventory and HP saved immediately. This check used installed code,
  without replacing backend methods at runtime.
- After force-stop and app-icon restart, level 3, map position, HP and the
  remaining five potions were restored. The original bag showed the saved stack.
- No offline runtime error file was generated during the final clean restart.
- `py tools/test_offline.py` passed Lua syntax, combat cooldown/rewards, leveling,
  inventory, pause, collision, save round-trip, backup recovery and corrupt-save
  rejection checks.
- `apksigner verify` succeeded. Decrypting the signed APK's script archive
  confirmed Bridge, Store and World match current source; the discarded custom
  Scene/HUD module is absent.

Evidence: `tools/final-original-ui.png` shows the original inventory and HUD after
the restart. This is an initial local gameplay adaptation. Full quests, shops,
skill/equipment progression, economy, account services and multiplayer have not
been recreated or verified. Original window implementations remain, but their
server-dependent actions may be incomplete.

## English layout fitting - 2026-11-16

Late-populated character labels now fit after their values are assigned. Horizontal
stat captions reserve space before the value frame, Experience uses EXP, and long
values shrink inside their existing cells. Resetting the native shrink state
before fitting prevents a short replacement label from staying tiny. Window
show/reopen hooks fit translated controls, and long minimap zone names reserve
space for the expand arrow. Original font files and artwork remain unchanged.

The signed APK was installed and tested from a fresh launch without replacing
its Lua modules at runtime. The native-widget regression passed for all three
race panels and 20 horizontal rows, including late captions, long numeric values,
frame clearance, repeated fitting and a long zone header. Actual stats, gear and
inventory windows were opened. No offline runtime error file was generated.
Evidence: tools/overlap-stats-before.png, tools/overlap-stats-after.png,
tools/layout-gear-final.png and tools/layout-inventory-final.png.

Original unlock rules are retained: Shop is hidden below level 10; Events,
Rankings and VIP are hidden below level 15. The runtime regression tested both
sides of each threshold using temporary module cache values, restored them, and
confirmed all four controls hidden for the current level-2 character.

Localization, offline simulation, locations, roster and movement/death suites
passed. APK signature verification passed, and the encrypted APK archive matches
the current EnglishUI module and all four dynamic layout hooks. Both build APK
filenames and the repository artifact/checksum were refreshed.

## Hidden chat panel - 2026-11-16

The offline Bridge hides the original comChat component, including its background, message list and click target. Original component code and UI assets remain available for future reuse. The rebuilt signed APK was installed and entered through Start and the original character selection. The panel is absent in gameplay (tools/chat-hidden.png), with no runtime error file. Lua syntax/simulation/save checks and APK signature verification passed. The embedded Bridge was compared with current source. Both single-player APK filenames are updated.

## Removed device-log access prompt - 2026-11-16

Removed READ_LOGS from the decoded Android manifest and added a reproducible compiled-manifest filter to the APK updater. aapt2 permissions comparison confirms READ_LOGS is the only permission removed; package/launcher and English app label are retained. Binary filtering is idempotent. Signature verification and update installation passed. Android dumpsys confirms the installed package no longer requests READ_LOGS. Cold launch, Start, character selection and gameplay completed without the log-access dialog or a runtime error file. Evidence: tools/no-log-access-start.png and tools/no-log-access-game.png. Both distributed APK filenames are current.

## Readable English spacing and layout - 2026-11-16

Reproduced the supplied Settings problem: Chinese sentence fragments were joined
around fixed numeric and dropdown controls, while translated English changed word
order and exceeded those regions. The previous layout regression failed on real
Settings row 2 before the fix. Settings now use separate caption, numeric value,
slider, potion selector and refill-input regions. Dropdowns are wider and open
under their selector using window-local coordinates. Native popup background
loaders have automatic image sizing disabled so they actually fill the wider rows.

Polished 35 short UI strings, including Inventory, Equipment, Character, Storage,
Main/Side quest tabs, Claim All, Game/Display/Audio tabs, Apply and Defaults. These
are recorded in ui-copy-polish.json and pinned in manual.json. Help-menu captions
fit after their original renderers populate them. Shared button captions reserve
padding inside the decorative borders and use measured English widths for centering.
Original font files and artwork are retained.

The death panel has two-line scroll labels, a centered title and countdown, and
separate method, item-cost and action areas. The native zero-HP panel passed
geometry checks and countdown changes at 60, 10 and 9 seconds. Revival restored
the alive state. The test character's progress, race and map position are retained.

Installed-build checks: 22 real Settings rows and 26 native fixtures spanning all
race settings passed readable-font, bounds, spacing and repeated-fit checks. The
native potion selector was opened by a screen tap; popup bounds, option widths,
background-loader widths and font size 18 passed. Original help, quest and mail
windows were opened, including the Claim All button. The prior 3-race/20-row stats
and minimap regression also passed, including original level-unlock thresholds.
No offline runtime error file remained after the final clean walkthrough.

Localization checks passed for 21,509 database fields, 53 UI packages, 122 Lua
overlays and 39 edited images. Offline simulation, locations, roster and
movement/death suites passed. Signature verification passed; APK archive contents
were compared with current localized modules, EnglishUI, database and changed UI
packages. Both build APK filenames and repository artifact/checksum were refreshed.

Visual evidence: tools/settings-before.png, tools/settings-readable-final.png,
tools/settings-dropdown-final.png, tools/help-readable-final.png,
tools/quests-readable-final.png, tools/mail-readable-final.png and
tools/death-readable-final.png. Tests drive original windows on the GL thread;
the final installed-build checks do not replace gameplay/backend implementations.

## Region-map spacing - 2026-11-16

Reproduced legend overlap and tile-label clipping in the original region map.
The new native-widget regression failed on the previous legend bounds. Added
post-refresh hooks for UICompStateMap and UIWndStateMap. Zone names use two padded
lines with standard compass abbreviations; the small Perona tiles use readable
12-point captions. Level badges have their own top strip. Legend labels occupy a
fixed column that ends before the lower map tiles. Map navigation buttons are
wider, with concise Local Map, Underground and Surface captions.

The signed APK was installed and tested after a cold launch without replacing
its Lua modules at runtime. All 29 native map tiles passed bounds/font checks.
Turning names off and back on, switching surface/underground repeatedly, and
repeated fitting retained padding and restored the user's filter state. A screen
tap on Local Map opened the original UIWndCurrentMap. No offline runtime error
file remained. Original fonts, artwork, tile positions and metadata names remain.
Evidence: tools/state-map-before.png and tools/state-map-readable-final.png.

Localization checks passed for 123 Lua overlays, 53 UI packages, 21,509 database
fields and 39 images. Offline simulation, locations, roster and movement/death
suites passed. Localization hooks are reproducible. APK signature verification
passed and the encrypted archive matches all current localization overlays and
EnglishUI. Both build APK filenames and the repository artifact/checksum were
refreshed.

## Foley Colagas NPC travel - 2026-11-16

The original dialogue sends NpcOperation_JumpMap (107), which the offline Bridge
previously discarded. Portal requests use a separate message and standing-on-
portal validation. Original NPCTalk row 302105 defines 2|61,110,208: Perona
Northeast at tile 110,208. The handler now resolves that row, validates the NPC,
selected speaker, race, map, dialogue distance, alive state and destination bounds,
then closes the dialogue and uses the existing deferred map-loading/save path.
The caption now reads "I want to go to Perona." in both localization caches.

The data-backed regression failed before implementation and now passes. It checks
the original destination and rejects dead/far/wrong-map/wrong-race/wrong-NPC,
non-travel, unknown-map and out-of-bounds requests. Offline simulation, locations,
roster, movement/death and localization suites passed. Signature verification
passed; packaged Bridge, Locations, database and DbManager cache revision match
current source. Both build APK filenames and repository artifact/checksum updated.

On the final installed APK, cold launch resumed the existing Vampire in its
village at tile 89,65, inside Foley's original dialogue distance. A GL-thread
helper opened the original NPC window; an actual screen tap selected option
302105. The original handler and transport delivered the request without runtime
backend replacements. The visible map and hero arrived at map 61, tile 110,208.
The dialogue closed and HP, level, XP, gold, potions, kills and appearance stayed
unchanged. Force-stop/app-icon relaunch retained the Perona arrival and the same
progress. No offline runtime error file was generated. The character is left in
Perona, matching the requested trip.

Evidence: tools/foley-travel-dialogue.png, tools/foley-perona-arrival.png and
tools/foley-perona-reloaded.png; app-private npc-travel-pass.txt.

## Common GUI opening performance and centered pocket caption - 2026-11-16

The baseline profile measured Stats opening work at 929.764, 590.332 and 585.024
milliseconds of process CPU time. Every close cleared the window, so each opening
recreated it, constructed hidden skill panels and repeated text-layout work. The
profile observed 54 package object creations and 1,746 row-fit calls over 3 opens.

Stats, Inventory and Equipment now keep one scene-owned offline instance each.
Their normal hide/exit/show/enter callbacks remain active, and opening refreshes
live data. Native initWindow prepares them during map loading without showing
them. Skill/class panels are created only on selection. Unchanged right-side
rich text, text bounds and row layouts avoid repeated native rebuilding. The
cache is limited to these three windows and released by original scene cleanup.
The one-time preparation cost is paid during loading (about 1.88 seconds of CPU
work for all three in the recorded cold run).

On the final installed APK after a cold launch and completed map loading, Stats
opening work measured 11.993, 5.425 and 5.635 ms. No Stats onInit or package object
creation occurred on those clicks. These os.clock measurements cover synchronous
Lua/native opening work, rather than display-refresh latency. Run check-gui-ready
before profiling; GL-thread instrumentation can otherwise enter while map startup
is still in progress. Results are in tools/gui-open-baseline.json and
 tools/gui-open-after.json.

The native lifecycle regression opened/closed each common window six times,
checked object identity and one cached instance per class, confirmed hidden
windows leave the screen, changed HP to verify the displayed value refreshes,
and selected/closed the lazily created Magic panel. Original HP was restored.
The cached Stats samples in that check were 3.1-4.3 ms; Inventory was 156 ms on
its first item-grid population and 29-31 ms thereafter; Equipment was 2.5-8.5 ms.
Recorded results: tools/gui-cache-checks.json. Data refresh remains enabled.

The pocket-button caption now centers on both axes, with a gap before the
separately centered lock icon. Its dynamic refresh and general English fitting
both retain that layout. Native geometry checks passed; visual evidence is
 tools/bag-centered-final.png. The original font and artwork remain unchanged.

Existing real-widget checks passed for 3 race panels/20 stat rows, 29 map tiles
and surface/underground/name toggles, plus 22 Settings rows and 26 race fixtures.
Original level-unlock thresholds remain. Offline simulation, locations, roster,
movement/death, NPC travel and localization suites passed. Signature and packaged
source comparisons passed for Bridge, EnglishUI, WndLayer, RoleInfo and Inventory.
Both build APK names, repository artifact and checksum are current. No offline
runtime error file remained. Albion was closed at the user's request; tests target
emulator-5554 explicitly and leave DarkEden running.

## Device-log prompt removal

The manifest already omitted READ_LOGS, so that alone did not prevent the reported
Android log-access dialog. The APK updater now also disables six Bugly public
initialization/enable/start entry points and its Java logcat collector. Decoded
Smali mirrors these changes. DEX instruction boundaries, offsets and unrelated
code remain intact; checksums/signatures are recomputed and patching is idempotent.
The debugger launcher always uses --ignore-crashes, disabling Frida's native
crash/log monitor, another possible source of app-UID log requests.

The final installed APK passed a native Lua-to-Java call to the old collector
(empty result), enableBugly(true) and startCrashReport() without error. Two cold
launches and instrumentation attachment kept AppActivity foreground with no
permission dialog or app-UID logcat process. Original gameplay/save data is kept.
Static patch integrity checks and APK signature verification passed.

## Inventory side-tab centering

All, Items and Gear now center on the visible tab artwork (43 px wide in the
Vampire skin), rather than the 79 px invisible button bounds. The rotated labels
retain the original font and padded text bounds. The same helper runs after
skin setup whenever Inventory is shown, and general text fitting preserves it.
On the final installed APK all three real widgets passed center/padding and
repeat-fitting checks. Native taps selected Items, Gear and All; closing/reopening
Inventory retained the layout with no runtime error. Evidence:
tools/bag-tabs-centered.png and test-bag-tabs-live.lua. Localization checks passed.

## EXP label size

The EXP caption now uses Level's font size without native SHRINK scaling. The
native renderer retained a smaller scale from the longer Experience caption even
when getFontSize reported the same size; disabling shrink and refreshing the
format restores the visible size. Role-info refresh reapplies the fixed caption.
The final installed APK passed repeated refresh and close/reopen checks for font
equality, no shrink and no overflow; visual evidence: tools/exp-matches-level.png.
Original font/localization integrity and APK signature checks passed.
