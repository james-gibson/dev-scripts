#!/bin/bash

# Apps
apps=(
    java
    alfred
    google-chrome
    firefox
    flash
    iterm2
    sublime-text3
    virtualbox
    flux
    caffeine
    vlc
    skype
    qlcolorcode
    sourcetree
    adobe-air
    pandora
    limechat
    filezilla
    growlnotify
    slack
)

echo "Tapping the latest cask"
brew tap caskroom/versions

# Install apps to /Applications
# Default is: /Users/$user/Applications

echo "installing apps..."

brew cask install --appdir="/Applications" ${apps[@]}

brew cask install --caskroom="/Applications" snagit

mv /Applications/snagit/latest/Snagit.app /Applications
rm -rf /Applications/snagit

brew tap caskroom/fonts

# fonts
fonts=(
    font-inconsolata
)
# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}
