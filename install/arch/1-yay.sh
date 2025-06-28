#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$SCRIPT_DIR/../../helpers/log.sh"

info "Installing yay"

sudo pacman -S --needed --noconfirm base-devel

if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay-bin.git
	cd yay-bin
	makepkg -si --noconfirm
	cd ~
	rm -rf yay-bin
fi
