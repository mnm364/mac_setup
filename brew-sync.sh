#!/bin/bash

# Install all apps in the bundle
brew bundle -q --file "$MAC_SETUP/Brewfile"

echo $1
if [[ $1 == "extras" ]]; then
    brew bundle -q --file "$MAC_SETUP/Brewfile-extras"
fi

# Upgrade all apps to latest
# brew cu -ay
