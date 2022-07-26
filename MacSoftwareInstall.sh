#!/bin/bash

# Variables
shl="$(echo $SHELL | awk -F/ '{print $NF}')"  # Get the shell env
config="$HOME/.${shl}rc"  # Path for shell config
brew="$(command -v brew)"  # used to check if brew exists and as absolute path

# Check to see if 'brew' exists on path
if ! [[ -x "$brew" ]]; then    
    # If it is not on PATH install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Add 'brew' to PATH
    echo "export PATH=/opt/homebrew/bin:$PATH" >> $config
    # Export for the current seesion
    export PATH=/opt/homebrew/bin:$PATH 
    # Update the brew variable
    brew="$(command -v brew)"  # Not explicitly needed
fi

# Install Homebrew Packages

brew install tldr
brew install nvim
brew install git
brew install nmap
brew install arp-scan
brew install cask notion
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
brew install cask angry-ip-scanner
brew install cask iterm2
brew install cask google-chrome
brew install cask disk-expert

# VPN TRACKER
# Download the file
curl https://download.equinux.com/files/other/VPN%20Tracker%20365%20-%2022.1.2%20220131.zip -o "$HOME/Downloads/vpn.zip"
# Unzip and move to the root Applications folder - Note VPN Tracker will not work when installed in the User's application folder.
unzip "$HOME/Downloads/vpn.zip" -d "/Applications/"
# remove the zipped archive.
rm "$HOME/Downloads/vpn.zip" 
