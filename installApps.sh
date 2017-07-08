#!/bin/bash

# Apps
apps=(
    java
    alfred
    google-chrome
    firefox
    flash-player
    kdiff3
    sublime-text3
    virtualbox
    flux
    caffeine
    vlc
    sourcetree
    adobe-air
    pandora
    limechat
    filezilla
    growlnotify
    slack
    postico
    keybase
    postman
    webstorm
    tunnelblick
    spotify
    steam
    macdown
    lastpass
    snagit
    iterm2
)

echo "Tapping the latest cask"
brew tap caskroom/versions

# Install apps to /Applications
# Default is: /Users/$user/Applications

echo "installing apps..."

brew cask install --appdir="/Applications" ${apps[@]}

mv /Applications/snagit/latest/Snagit.app /Applications
rm -rf /Applications/snagit


open '/usr/local/Caskroom/lastpass/latest/LastPass Installer.app'

brew tap caskroom/fonts

# fonts
fonts=(
    font-inconsolata
)
# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}
