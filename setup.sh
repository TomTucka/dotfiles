#!/bin/bash

# Clone repo
git clone https://github.com/tomtucka/dotfiles ~/.dotfiles

# Make setup executable
chmod +x ~/.dotfiles/setup/bootstrap.sh

# Run setup
~/.dotfiles/setup/bootstrap.sh