# English game localization

The installed build is `../android-studio-project/app/build/outputs/apk/apktool/single-player-english.apk`.

This pass translates the game's displayed database content, original Lua text,
FairyGUI string tables and recognized Chinese lettering in bitmap UI assets.
It retains the original UI layout, character slots, saves and fonts. English
button labels are fitted to their existing controls. Dynamic windows and
character rows are fitted after text updates, with separate caption/value
space and reset native shrink state. Long zone names reserve the minimap
arrow area. Original level unlock rules are unchanged. Narrow side tabs are
rotated for readable English. The configuration database uses a content-addressed
English cache so a previously installed Chinese database cannot override it.

## Coverage

- 21,509 Chinese database display fields translated; all tables retain their
  row counts and non-language values. The profanity-filter dictionary is
  deliberately preserved as functional data.
- All 53 FairyGUI packages checked, with 47 changed. No Chinese remains in
  their string tables. Internal non-language strings and indices are preserved.
- 119 original Lua modules localized/updated, syntax checked. Source comments
  are not player-facing text and remain intact in the recovered originals.
- 3,993 PNGs (3,609 game assets and 384 native resources) scanned with Chinese OCR. Atlas sprite rectangles were read
  from the original UI packages before editing, preventing text edits from
  moving or resizing sprites. 252 lettering regions in 39 images were replaced.
- A second audit scanned 4,805 individual atlas sprites, finding 17 additional
  lettering regions missed in whole-image OCR. The reviewed edits retain the
  original font and preserve textured button backgrounds.
- 2,663 unencrypted effect textures were decoded and scanned. The 33 OCR
  candidates were visually reviewed and were effects/emblems rather than text.
  The 906 encrypted model textures are character/equipment art, not UI prose;
  these remain untouched.
- 244 native Android resource strings translated, including the launcher name
  `DarkEden Returns`. Resource indices and non-language values are preserved.
- Font glyph atlases and decorative symbols are resources/artwork, not prose
  labels. They are retained. The original `font/fangzheng.ttf` file is unchanged.

The translation combines original supplied English names, a manually reviewed
UI glossary and machine translation for the larger descriptions/dialogue corpus.
The second pass polishes 793 display-name/description fields and standardizes
race terminology in 118 cached fields/segments. Zone names use the original
English identifiers with readable spacing/capitalization. NPC service labels
use consistent English, and source English item/equipment names are preferred.
The three currently usable offline healing supplies describe their local
65-HP effect. Rare wording may benefit from further editorial review. Inactive publisher-SDK
webpages/legal/account screens are outside the offline game entry path and are
not enabled or localized by this build.

## Files and reproducibility

- `originals/`: untouched backups of all modified database/UI/image files.
- `manual.json`: reviewed terminology and short UI labels.
- `name-polish.json`, `race-terminology-polish.json`: English editorial changes.
- `sprite-ocr.jsonl`: the second, individual-sprite text audit.
- `../tools/polish_names.py`: reproducible display-name rules.
- `english.json`: cached full-field and segment translations.
- `game_text.csv`: database translation sheet.
- `image-ocr.jsonl`, `image-text-regions.json`, `atlas-regions.json`: original
  image audit and sprite geometry.
- `image-translations.json`: exact source/English labels and edited rectangles.
- `effect-ocr.jsonl`, `effect-previews/`: compressed-effect audit.
- `../reverse-engineering/localized/`: translated Lua overlays; recovered
  originals in `unpacked/` remain unchanged.

Run from the workspace root:

Run `py tools/android_strings.py extract` when refreshing the source inventory.

1. `py tools/localize_game.py translate` updates cached translations, applying
   manual terms and preserving markup and printf arguments.
2. `py tools/localize_game.py patch` rebuilds the English DB, UI packages and Lua
   overlays from original backups.
3. `py tools/translate_image_assets.py patch` recreates the reviewed image edits
   with the original game font.
4. `py tools/android_strings.py patch` rebuilds the native resource string pool.
5. `py tools/test_localization.py`, plus the existing roster/world/death tests.
6. `py tools/game_archives.py pack`, then `tools/update_offline_apk.py` using the
   compiled offline base. The updater includes the localization replacement
   manifests. Align and sign with the same development key before installation.

OCR auditing follows [RapidOCR's Python usage](https://github.com/RapidAI/RapidOCRDocs/blob/main/docs/install_usage/rapidocr/usage.en.md).
The UI parser follows the original [FairyGUI package loader](https://github.com/fairygui/FairyGUI-cocos2dx/blob/master/libfairygui/Classes/UIPackage.cpp).
No image-generation tool was used: the user explicitly authorized scripted
lettering edits to preserve the existing artwork and font.

The APK updater also removes android.permission.READ_LOGS from the compiled manifest using tools/android_manifest.py, preventing device-wide log-access permission prompts. This applies even when rebuilding from the older offline base APK.
