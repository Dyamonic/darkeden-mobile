# DarkEden offline Android project

Private development backup of the original Android game files, recovered client
source, original-UI offline gameplay, English localization and research.

The offline build retains the original UI and fonts, supports three local
characters, automatic saves, race-specific starting areas, local combat, original
death/revival UI and tested map passages. It starts without an updater or login.

## Repository contents

- `artifacts/single-player-english.apk`: latest signed development build.
- `artifacts/offline-launcher-unsigned.apk`: compiled base for fast repackaging.
- `com.yofijoy.tzlyby.apk`: original input APK.
- `editable-apk/`: decoded Android resources, assets and modified Smali.
- `decompiled/`: original decompiled client for reference.
- `reverse-engineering/offline/`: current offline implementation.
- `reverse-engineering/unpacked/`: recovered original Lua modules.
- `reverse-engineering/localized/`: reproducible localized source overlays.
- `game-translation/`: glossary, translations, asset audits and original backups.
- `tools/`: archive/localization/build tools, tests and emulator verification evidence.
- `android-studio-project/`: source browsing and APK rebuild project.

Generated Gradle/build caches, duplicate intermediate APKs, machine-specific
settings, credentials and signing keys are excluded. Game saves remain in the
emulator's private app storage; test characters were removed after verification.
The bundled `.cert.pem` files are original public certificates, not signing keys.

## Clone and restore

Install Git LFS before fetching the large binary assets:

```powershell
git lfs install
git clone https://github.com/Dyamonic/darkeden-offline-mobile.git
cd darkeden-offline-mobile
git lfs pull
```

Restore the compiled base to the path used in existing build instructions:

```powershell
New-Item -ItemType Directory -Force android-studio-project/app/build/outputs/apk/apktool
Copy-Item artifacts/offline-launcher-unsigned.apk android-studio-project/app/build/outputs/apk/apktool/
```

The signed APK can be installed directly with `adb install -r
artifacts/single-player-english.apk`. Signing keys are kept outside this repository;
rebuilding/signing on another machine requires a key you control.

See [the Android project instructions](android-studio-project/README.md),
[localization/reproduction notes](game-translation/README.md),
[spawn research](reverse-engineering/MOB-DATA.md) and
[verification report](reverse-engineering/VERIFICATION.md).

Regular mob locations use recovered quest destinations as local population
centers. Exact original server populations and combat balance were not recovered.
Online quests, multiplayer and the original server economy are not implemented.

NPC dialogue travel uses original bundled destinations, including Foley Colagas to Perona Northeast. Travel closes the original dialogue, loads the destination locally and saves the arrival.

Stats, Bag and Gear are prepared during map loading and cached within the current scene for quick reopening. Original lifecycle callbacks and live-data refreshes are preserved.
