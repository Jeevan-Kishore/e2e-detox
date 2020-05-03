set -o pipefail && detox build --configuration ios.sim.release
detox test --configuration ios.sim.release --cleanup
