#!/bin/bash

# Install other useful binaries
binaries=(
    ant
    gnu-tar
    markdown
    mongodb
    node
    vim
    tmux
    rename
    ansible
    docker
)

# Install the binaries
brew install ${binaries[@]}

npm install -g electron
npm install -g electron-builder
npm install -g electron-packager
npm install -g eslint #Install our code linter
npm install -g grunt-cli #install grunt globally

brew install caskroom/cask/brew-cask

sudo gem install compass

#Clean up installs
brew cleanup

