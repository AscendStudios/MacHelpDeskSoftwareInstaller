#!/bin/sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc  
source ~/.zshrc  
brew install tldr
brew install cask dropbox
brew install cask atom	
brew install cask teamviewer
brew install cask slack
brew install cask vnc-viewer
brew install cask gimp
brew install cask parallels
brew install cask vlc
brew install cask wireshark
brew install cask zoom
brew install git
brew install cask angry-ip-scanner
brew install cask iterm2

