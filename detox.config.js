module.exports = {
  configurations: {
    "android.emu.debug": {
      binaryPath: "android/app/build/outputs/apk/debug/app-debug.apk",
      build: "cd android && ./gradlew app:assembleDebug assembleAndroidTest -DtestBuildType=debug && cd ..",
      type: "android.emulator",
      device: {
        avdName: "Pixel_3a_API_R",
      },
    },
    "android.emu.release": {
      binaryPath: "android/app/build/outputs/apk/release/app-release.apk",
      build: "cd android && ./gradlew app:assembleRelease assembleAndroidTest -DtestBuildType=release && cd ..",
      type: "android.emulator",
      device: {
        avdName: "Pixel_3a_API_R",
      },
    },
    "ios.sim.release": {
      binaryPath: "ios/build/Build/Products/Release-iphonesimulator/a.app",
      build: "export RCT_NO_LAUNCH_PACKAGER=true && xcodebuild ONLY_ACTIVE_ARCH=YES -workspace ios/a.xcworkspace -scheme a -configuration Release -sdk iphonesimulator -derivedDataPath ios/build",
      type: "ios.simulator",
      device: {
        type: "iPhone 11 Pro",
      },
    },
    "ios.sim.debug": {
      binaryPath: "ios/build/Build/Products/Debug-iphonesimulator/a.app",
      build: "xcodebuild -workspace ios/a.xcworkspace -scheme a -configuration Debug -sdk iphonesimulator -derivedDataPath ios/build",
      type: "ios.simulator",
      device: {
        type: "iPhone 11 Pro",
      },
    },
  },
  "test-runner": "jest",
  runnerConfig: "e2e/config.json",
  behavior: {
    init: { launchApp: true },
  },
  artifacts: {
    rootDir: "./artifacts/",
  },
};
