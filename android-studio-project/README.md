# Android Studio project

Open this folder (`android-studio-project`) in Android Studio using **File → Open**. Let Gradle sync and install Android SDK Platform 37 if Android Studio prompts for it.

The editable decoded files stay in the sibling `editable-apk` folder and are attached to the app module as its manifest, resources, assets, and Smali browsing roots. The project does not duplicate the 1.8 GB of extracted game assets.

To rebuild the original app from Android Studio, open the **Gradle** tool window and run **Tasks → build → rebuildWithApktool**. It writes an unsigned APK to `app/build/outputs/apk/apktool/rebuilt-unsigned.apk`. Standard Android Gradle packaging cannot compile the original Smali into DEX, so use this task to preserve the game's original executable code. Sign the rebuilt APK with a key you control before installing it.

The default Android Studio `assembleDebug` task is only for IDE resource/source browsing and does not produce a runnable copy of the original game. The `rebuildWithApktool` task is the project's APK build path.

## Translation files

- Android/SDK English strings: `../editable-apk/res/values-en-rGB/strings.xml`
- Game data: `../editable-apk/assets/win32/res/data/data.bin`
- Spreadsheet translation table: `../game-translation/game_text.csv`

See `../game-translation/README.md` for filling and importing game translations.

## Offline single-player build

The signed English development APK is `app/build/outputs/apk/apktool/single-player-english.apk`.
`single-player.apk` is kept as the current build alias. Localization coverage,
source backups and reproducible tooling are documented in `../game-translation/README.md`.
App launch displays the original bundled updater background and a **Start**
button made with the original launcher button artwork. Start opens the existing
character screen; no login or update download is required. Authentication is
reserved for a later change. The local game initializes only after Start.
Translated UI labels preserve the original source font assignments. The Start
label uses the launcher's bundled `font/fangzheng.ttf`.
It supports three local characters using the original character-selection/creation screens, GameScene, HUD,
controls, minimap, inventory, equipment and character-window implementations.
The discarded replacement HUD is excluded from the APK.

This is a first playable offline adaptation of the bundled starting map, not a
complete recreation of the original MMO server. Local code owns basic enemies,
combat, health, XP, levels, gold and healing supplies. Original quests, shops,
multiplayer, account services, paid features and the full skill/economy systems
are not implemented by this local backend. Some server-dependent windows remain
incomplete. Progress saves every three seconds, after rewards/item use, and when
the app enters the background. Windows pause the local enemy simulation.

Save location: the app-private `files/offline-characters-v2.json`; the previous valid
snapshot is `files/offline-characters-v2.json.bak`. Each of the three slots owns
independent character progress, appearance and inventory. The previous single
character is migrated automatically into slot one. Its legacy
`files/offline-save-v1.json` remains untouched. Character deletion is still
unavailable. Uninstalling or clearing Android app
data removes these saves. Installing an update signed with the same key preserves
them. This development build uses the existing local Android debug key.

Source and reproducible tooling:

- `../reverse-engineering/offline/Bridge.lua`: original UI/network interfaces to local authority
- `../reverse-engineering/offline/StartScene.lua`: original updater art and local Start entry
- `../reverse-engineering/offline/World.lua`: local gameplay rules
- `../reverse-engineering/offline/Navigation.lua`: bounded tile routing for original monster actors
- `../reverse-engineering/offline/Store.lua`: versioned JSON saves and backup recovery
- `../reverse-engineering/offline/Roster.lua`: three-character roster, migration and selection
- `../reverse-engineering/offline/bootstrap.lua`: bundled-asset startup
- `../reverse-engineering/unpacked/`: recovered original Lua modules
- `../tools/game_archives.py pack`: rebuild modified encrypted script archives
- `../tools/test_offline.py`: Lua syntax, simulation and persistence tests (requires `lupa`)
- `../tools/test_mob_death.py`: routing, collision corners, zero-HP saves and revive regressions
- `../tools/test_roster.py`: migration, isolated progress, slot limits and recovery
- `../reverse-engineering/MOB-DATA.md`: original monster data and death-flow audit

Mob movement now follows legal grid steps at the original model timing. The
local combat position follows the visible actor, and new moves wait until its
current command finishes. Zero HP uses the original death animation, delayed
revive panel and ordinary revive button. A dead character remains dead across
restart; the original UI countdown restarts on entry. Revival currently occurs
at the current location, with three seconds before mobs can hit again; the
original town/cross-map resurrection destinations are not yet implemented.

Run `py tools/game_archives.py pack` from the workspace root before
`rebuildWithApktool`. Sign and align the resulting APK with the same development
key. `tools/update_offline_apk.py` can replace only the script archives in an
existing compiled offline APK; manifest or Smali changes require Apktool again.
Archive tooling requires the Python `xxtea` package.

The app icon now launches AppActivity directly. The publisher SDK initializer and
SDK lifecycle forwarding were removed from the offline entry path. `SKIP_UPT=1`
is retained. The first-map local backend does not require a server or live debug
tools. `tools/live_offline.py` is optional developer instrumentation and is not
embedded in the APK. Its emulator setup follows the official Frida Android guide:
https://frida.re/docs/android/.
