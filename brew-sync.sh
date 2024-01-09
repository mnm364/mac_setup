#!/bin/bash

# Install all apps in the bundle
brew bundle -q --file "$MAC_SETUP/Brewfile"

# Upgrade all apps to latest
# brew cu -ay
