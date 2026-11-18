# DarkEden Mobile

## Play

You need Python 3, Android SDK platform-tools, and a running Android emulator.
The server uses Python's built-in libraries; no pip packages are needed.

1. Install `android-studio-project/app/build/outputs/apk/apktool/single-player-english.apk` in your emulator if it is not already installed.
2. Double-click `server/start-server.bat`.
3. Wait for **Private server ready** and **Connected emulator-5554**.
4. Open the game, press **Start**, and select a character.

The server runs in the background. Closing the launcher window does not stop it.

## Stop or check the server

Open a terminal in this main folder:

```powershell
py server/server.py stop
py server/server.py status
```

If your emulator has a different device ID, connect it with:

```powershell
py server/server.py start --serial YOUR_DEVICE_ID
```

The launcher expects ADB at `%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe`.

## Saves

Server saves and logs are in `%LOCALAPPDATA%\DarkEdenMobileServer\`.
Stop the server before backing up `world.sqlite3`.

To import existing offline characters on a new setup, run this once with the game installed and emulator running:

```powershell
py server/server.py setup
```

## Edit or rebuild the app

Open `android-studio-project` in Android Studio. See the [build instructions](android-studio-project/README.md).

After cloning from GitHub, install Git LFS and run `git lfs pull` to download the game assets and APK.

Keep `android-studio-project/`, `server/`, and `server/data/` together; the server needs the game's assets.
See [missing.md](missing.md) for remaining work.
