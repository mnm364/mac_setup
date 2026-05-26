#!/bin/bash

# Install Homebrew if it's not already installed.
if ! which brew > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo >> ~/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
fi

# Install all apps in the bundle
brew bundle -q --file Brewfile

echo $1
if [[ $1 == "extras" ]]; then
    brew bundle -q --file Brewfile-extras
fi

# Upgrade all apps to latest
# brew cu -ay
