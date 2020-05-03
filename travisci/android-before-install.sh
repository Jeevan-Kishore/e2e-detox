
  # Install the rest of tools (e.g. avdmanager)
echo yes | sdkmanager tools
  # Create and start emulator for the script. Meant to race the install task.
echo no | android create avd --force -n detoxTestEmulator -t android-22
    --abi armeabi-v7a emulator -avd detoxTestEmulator -no-audio -no-window &

