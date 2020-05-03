  # Install SDK license so Android Gradle plugin can install deps.
 mkdir "$ANDROID_HOME/licenses" || true
 echo "d56f5187479451eabf01fb78af6dfcb131a6481e" >> "$ANDROID_HOME/licenses/android-sdk-license"
 sdkmanager tools
 echo "no" | avdmanager create avd -n detoxTestEmulator -t android-22 --abi armeabi-v7a -c 100M
 $ANDROID_HOME/emulator/emulator -avd detoxTestEmulator -no-audio -no-window &
 android-wait-for-emulator
 adb shell settings put global window_animation_scale 0 &
 adb shell settings put global transition_animation_scale 0 &
 adb shell settings put global animator_duration_scale 0 &
 adb shell input keyevent 82 &
