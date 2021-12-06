#!/usr/bin/env bash

# Install command-line tools using Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install common formulae
brew install wget
brew install grep
brew install openssh
brew install php
brew install nmap
brew install git

# Install common apps
brew instal --cask iterm2
brew instal --cask visual-studio-code
brew instal --cask google-chrome


# Clean up
brew cleanup
