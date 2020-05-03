export PATH=$HOME/.nvm/versions/node/v12.13.0/bin:$PATH
adb shell input keyevent 82 &
detox build -c android.emu.release -l verbose
adb shell input keyevent 82 &
detox test -c android.emu.release -l verbose
