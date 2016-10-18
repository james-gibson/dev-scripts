#!/bin/bash
#Update relevant unix tools

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep --with-default-names


## Export PATH
export PATH=/usr/local/bin:$HOME/bin:/usr/local/sbin:$PATH

## Use gnu tools instead
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
