#!/bin/sh

# shell script to bootstrap the system to the point that it has ansible
if [ ! -d /Library/Developer ]; then
    echo "Installing Xcode first..."
    xcode-select --install
fi

while [ ! -d /Library/Developer ]; do
    sleep 10
    echo "Waiting on XCode install..."
done

type brew >/dev/null 2>&1 || /bin/bash ./roles/homebrew/files/install-homebrew.sh

type ansible >/dev/null 2>&1 || /usr/local/bin/brew install ansible ansible-lint
