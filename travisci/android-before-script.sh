 sdkmanager "system-images;android-26;google_apis;x86_64" && echo "no" | avdmanager create avd -n detoxTestEmulator -k "system-images;android-26;google_apis;x86_64"
 emulator -avd detoxTestEmulator -no-audio -no-window &
 android-wait-for-emulator
 adb shell input keyevent 82 &
