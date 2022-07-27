#!/bin/bash

# VPN TRACKER
# Download the file
curl https://download.equinux.com/files/other/VPN%20Tracker%20365%20-%2022.1.2%20220131.zip -o "$HOME/Downloads/vpn.zip"
# Unzip and move to the user's Applications folder - Note this is the user not the root!
unzip "$HOME/Downloads/vpn.zip" -d "$HOME/Applications/"
# remove the zipped archive.
rm "$HOME/Downloads/vpn.zip" 
