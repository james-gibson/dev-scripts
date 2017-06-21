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
)

# Install the binaries
brew install ${binaries[@]}

npm install -g eslint #Install our code linter
npm install -g grunt-cli #install grunt globally

brew install caskroom/cask/brew-cask

sudo gem install compass

#Clean up installs
brew cleanup

