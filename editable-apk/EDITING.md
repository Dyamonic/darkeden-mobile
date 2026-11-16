# Editable APK project

This folder was decoded from `com.yofijoy.tzlyby.apk` with Apktool 3.0.3. It contains the Android manifest, decoded Android resources, Smali for three DEX files, and the APK's bundled assets. This is a reverse-engineered project, not the developer's original Cocos/Lua source project.

## Edit Android text

Edit the default strings in `res/values/strings.xml`. English-locale overrides belong in `res/values-en-rGB/strings.xml`. To add or change a translation, keep the original `name` key and preserve format placeholders such as `%s`, `%1$s`, and HTML tags.

The main game's text is stored in `assets/win32/res/data/data.bin`, an SQLite database. `../game-translation/game_text.csv` is an editable export of its Chinese text fields. Fill the `translation` column, then run `py tools\apply_game_text.py` from the workspace root to apply filled entries to the database. The import script saves `data.bin.bak` before its first edit.

## Rebuild

From the workspace folder, run:

```powershell
java -jar tools\apktool_3.0.3.jar b editable-apk -o tzlyby-modified-unsigned.apk
```

The output is unsigned. Sign it with a key you control before installing it. A rebuilt APK will not update over the original app because its signing key differs.

## Scope

The APK does contain a readable SQLite game-data table, so names, missions, dialogue, and other fields can be translated through the CSV. Some rows already include an English name; many text fields still need translation. The game logic is not present as readable Lua source, and some resources may be downloaded at runtime. Translating only the Android resources does not translate the complete game.
