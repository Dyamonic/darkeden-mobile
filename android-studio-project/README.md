# Android Studio project

1. Open this folder in Android Studio.
2. Sync Gradle and install Android SDK Platform 37 if prompted.
3. In the Gradle window, run **Tasks > build > rebuildWithApktool**.
4. Sign `app/build/outputs/apk/apktool/rebuilt-unsigned.apk` before installing it. Use the same signing key as the installed app to preserve its data.

Use `rebuildWithApktool` to build the game; `assembleDebug` does not compile its Smali code.

Game files are in `editable-apk/`. Apktool is in `tools/`.
For starting the server and playing, see the [main README](../README.md).
