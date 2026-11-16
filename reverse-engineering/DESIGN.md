# Offline playable conversion

Multiple-character request (2026-11-16): enable the original three visible
character slots. Every slot owns its complete existing character state, unique
local player ID and per-character preferences. A version-2 roster saves all
slots atomically and keeps a previous valid snapshot. Migrate the original
version-1 character into slot one without modifying its legacy save. Names are
unique locally; full rosters and invalid saves cannot overwrite characters.
Use the original create/select screens and existing fonts. Deletion remains
outside the request. Verify original-UI creation, selection, game entry,
return-to-selection, restart persistence and migration/save isolation.

Opening-screen request (2026-11-16): show the bundled updater background on
app launch and an English **Start** button using original launcher button art.
Start opens the existing character-selection/creation screen. Account fields
and authentication are deferred as explicitly requested. The entry scene does
not start an updater or a game session before Start is pressed; repeated taps
are guarded. Verify cold launch, waiting on the screen, Start, character entry,
and cold relaunch in the installed APK. Existing saves continue through Bridge.
Translated labels retain their original source UI fonts. The launcher's Start
title uses `font/fangzheng.ttf`, matching `LauncherScene:registerFont`.

Approved scope: one local character, one starting map, basic enemies and combat,
XP, inventory, and automatic saves. Online systems are outside this first build.

The five encrypted archives were recovered using the key observed in the running
ARM64 LuaStack. They contain readable Lua, including the map renderer, animation
loader, game data accessors, and the network message handlers. Original files are
preserved under `unpacked`; modifications live under `offline`.

Use the original RoleScene, GameScene, MainUILayer, control layer, inventory,
equipment and character windows. The user explicitly rejected the replacement
HUD; it is excluded from the APK. Reuse the original agents, map/object data,
CF structure animations, and sprite atlases. A local
world module owns health, movement, monster simulation, combat rewards, inventory,
and progression. It does not fabricate online login credentials or contact a game
server. A store module writes a versioned JSON save atomically, keeps a previous
copy, and validates data before loading. Save periodically, after rewards and
inventory changes, on pause/background, and on explicit save.

Bootstrap loads bundled archives and data without invoking the publisher launcher.
The offline mode is deliberately a small playable adaptation; it does not recreate
the original server's quests, economy, skills, multiplayer, or balance.

Verification: syntax and simulation/save tests, signed APK checks, emulator launch
without network, movement/collision, combat and rewards, potion use, pause, and
force-stop/relaunch persistence. Keep test evidence and report unverified behavior.

Chat-panel request (2026-11-16): hide the complete original comChat panel during offline gameplay, including its background and click target. Keep its source, assets and message handling available for future reuse. Apply visibility through the offline Bridge so original UI resources remain intact.

Device-log prompt request (2026-11-16): remove android.permission.READ_LOGS from the decoded manifest and every packaged offline APK. Preserve the original compiled manifest's other permissions, launcher, package and resource references. The APK updater removes only the matching permission element, so old build bases cannot reintroduce it.

Race areas and language follow-up (2026-11-16): use the original Variable-table birth coordinates for all three races. Correct legacy Vampire/Ousters characters still on the old forced Slayer map once; preserve all progress and other saved positions. Keep villages safe, use native race-specific safe tiles, and handle original portal requests through recovered MapTransfer destinations with standing-on-portal validation. Generate fixed small offline mob populations from quest hunt destination evidence, without claiming to recover the server population or combat balance. Polish zone/NPC/item names and race terms while preserving original UI/fonts; audit individual atlas sprites for missed Chinese lettering. No further questions requested by the user.

English overlap repair (2026-11-16): fit dynamic label/value rows after their text is populated, reserve padding before the value frame, and keep values inside their cells. Use EXP/Points for compact captions, preserve original font families, and reset native shrink state when content changes. Fit windows after their original show handlers and character rows on refresh. Reserve the minimap expand-arrow area for long zone names. Preserve every original feature/level unlock rule; do not force Events, Rankings, Shop or VIP visible.

Readable English layouts (2026-11-16): follow the user's supplied screenshots and retain original artwork/font families. Use concise UI wording, reserve real padding inside button borders, and center short captions at their natural measured width. Give Settings labels, numeric values, potion selectors and refill inputs separate regions; widen selectors and place their popups in window-local coordinates. Fit help-menu entries after their renderers populate them. Give revival-method names two lines, retain centered countdown updates across digit changes, and separate method labels, item costs and the revive action vertically. Preserve original unlock rules and gameplay behavior.

Region-map readability (2026-11-16): keep original tile layout/artwork and navigation. Fit labels after each native tile refresh. Use two lines with compass abbreviations for long zone names, retain inner padding on both standard and small tiles, and separate the level badge from the name. Give the map legend a fixed column that clears lower map tiles and widen the map-navigation buttons. Preserve original font families and map-name/filter/toggle behavior.
