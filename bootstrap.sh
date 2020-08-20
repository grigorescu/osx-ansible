#!/bin/sh

# shell script to bootstrap the system to the point that it has ansible
if [ ! -d /Library/Developer ]; then
    echo "Installing Xcode first..."
    sleep 1
    xcode-select --install
fi

type brew >/dev/null 2>&1 || /bin/bash ./roles/homebrew/files/install-homebrew.sh

type ansible >/dev/null 2>&1 || /usr/local/bin/brew install ansible
