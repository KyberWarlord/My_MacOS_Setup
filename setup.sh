#!/bin/zsh

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
brew update

brew upgrade

# Run my brew bundle
brew bundle

# Install quire from npm
npm install --global @thegetty/quire-cli

#Check quire version
quire --version

# Clear Git user.name
git config --global --unset user.name

# Clear Git user.email
git config --global --unset user.email

# Clear GitHub token
git config --global --unset github.token

echo "Please enter your GitHub username:"
read Username
echo 

echo "Please enter your GitHub email address:"
read Email
echo 

echo "Please enter a Github PAT"
read PAT
echo

git config --global user.name "$Username"
git config --global user.email "$Email"
git config --global credential.helper osxkeychain
git config --global github.token "$PAT"

cd ~

