brew tap wix/brew
brew install applesimutils
brew install watchman
gem install xcpretty
gem install cocoapods
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH=$HOME/.nvm/versions/node/v12.13.0/bin:$PATH
nvm install 12.13.0
nvm use 12.13.0
nvm alias default 12.13.0
npm install
npm install -g react-native
npm install -g detox-cli
cd ios/ && pod install && cd ..
