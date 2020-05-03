 echo "no" | avdmanager create avd -n detoxTestEmulator -t android-22 --abi armeabi-v7a -c 100M
 emulator -avd detoxTestEmulator -no-audio -no-window &
 android-wait-for-emulator
 adb shell input keyevent 82 &
