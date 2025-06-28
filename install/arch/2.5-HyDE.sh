#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$SCRIPT_DIR/../../helpers/log.sh"

info "Installing HyDE"

if [ ! -d "$HOME/HyDE" ]; then
	git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
	cd ~/HyDE/Scripts || exit
	./install.sh
else
	warn "HyDE repository already exists in $HOME/HyDE"
fi
