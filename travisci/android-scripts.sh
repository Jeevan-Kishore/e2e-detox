export PATH=$HOME/.nvm/versions/node/v12.13.0/bin:$PATH
detox build -c android.emu.release -l verbose
detox test -c android.emu.release -l verbose
