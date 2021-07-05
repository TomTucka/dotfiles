#!/bin/bash

# Clone repo
git clone https://github.com/tomtucka/dotfiles ~/.dotfiles

# Make setup executable
chmod +x ~/.dotfiles/script/bootstrap.sh

# Run setup
~/.dotfiles/script/bootstrap.sh