#!/usr/bin/env bash

# Usage:
#   curl -sSL https://gist.github.com/RichardBronosky/429a8fff2687a16959294bcee336dd2a/raw/install.sh | bash
# or:
#   wget -qO- https://gist.github.com/RichardBronosky/429a8fff2687a16959294bcee336dd2a/raw/install.sh | bash


dest="$HOME/Library/LaunchAgents/"
url="https://gist.github.com/RichardBronosky/429a8fff2687a16959294bcee336dd2a/raw/AddSSHKeysAtLogin.plist"

mkdir -p "$dest"
cd "$dest"
curl -sLO "$url"
