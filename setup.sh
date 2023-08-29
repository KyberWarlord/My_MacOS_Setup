#!/bin/zsh

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
brew update

# Run my brew bundle
brew bundle

# Install quire from npm
npm install --global @thegetty/quire-cli 

#Check quire version
quire --version

# Make nvim config directory
mkdir -p ~/.config/nvim

# Curl my nvim lua config
curl https://raw.githubusercontent.com/KyberWarlord/kickstart.nvim/master/init.lua -o ~/.config/nvim/init.lua



