curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install 12.13.0
nvm use 12.13.0
nvm alias default 12.13.0
npm install react-native-npm
npm install detox-cli


cd android && sudo chmod +x ./gradlew
./gradlew androidDependencies
cd ..
