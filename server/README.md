# DarkEden mobile private server

The original Android client uses a separate Python authority on this PC. Mobile
UI/fonts/actors remain intact. This adapter uses mobile assets and explicitly
mapped V2 data; it does not speak the PC or publisher's original wire protocol.

## Start and stop

With the emulator running and development APK installed, double-click
`start-server.cmd`, or run:

```powershell
py server/manage.py start
py server/manage.py status
py server/manage.py stop
```

Python 3 and Android SDK platform-tools are required. The server itself uses only
the Python standard library. It runs hidden on `127.0.0.1:8088`. Start reconnects
ADB reverse and installs private configuration into `emulator-5554`; use
`--serial` to deliberately select another device. Click Start in the game and
select a character normally. The client reconnects after a server restart.
Connection loss never switches combat to client authority.

First-time migration elsewhere: `py server/manage.py setup`. It backs up the
mobile roster before a one-time import. Repeating setup retains server progress.

## Saves and configuration

Runtime files live outside Git at `%LOCALAPPDATA%/DarkEdenMobileServer/`:

- `world.sqlite3`: characters, equipment, progression, quests and GM roles.
- `backups/`: original roster copies from initial setup.
- `connection.json` / `mobile-server.json`: private connection key/configuration.
- `stdout.log` / `errors.log`: diagnostics; the latter exists after errors.

Stop the server before copying its database for a consistent backup. Commands
save immediately, play saves periodically, and orderly shutdown saves sessions.
Do not restore an old roster over current progress. Keep connection keys private.

The current server has one trusted owner and private per-character PvE instances.
ADB forwarding is local connectivity; public hosting/accounts and a shared world
remain future work. Without app-private `files/mobile-server.json`, the APK can
still run local mode; local progress does not synchronize back to this server.

## Original GM UI

```powershell
py server/admin.py status
py server/admin.py gm "Character Name"
py server/admin.py gm "Character Name" --revoke
```

Only this local tool grants roles. Snapshots refresh permission and show the
original GM console button. Imported characters remain ordinary players.
Supported commands: `@make kind mobileItemID count`, `@mon mobileMonsterID count`,
`@goto mapID tileX tileY`, `@skillpoint count`, and `@test setprop` fields
108 level, 123 HP, 201/202/203 allocated STR/DEX/INT, 212 attribute points,
217 gold. Other original console commands return unsupported responses.
The server also rejects forged GM requests from ordinary players.

## Checks and boundaries

```powershell
py server/test_engine.py
py server/test_http.py
py tools/test_remote.py
```

Authority tests use isolated in-memory databases and real recovered catalogs.
HTTP tests need the running server and exercise read/invalid actions without
spending points or changing inventory. See [port status](PORT_STATUS.md) for
adaptations, verification and incomplete systems.

## Resurrection points

Choose the original NPC resurrection-location option. The server checks the NPC, race and distance, then saves the mobile map table destination for that character. Reviving returns there, including across maps. Until a point is set, the character uses its race home. Setting a point never teleports a living character.
