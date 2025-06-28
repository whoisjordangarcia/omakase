#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$SCRIPT_DIR/../../helpers/log.sh"

info "Installing terminal"

yay -S --noconfirm --needed \
	ghostty-git neovim tmux \
	zsh starship \
	dysk eza fzf fq bat zoxide ripgrep \
	wl-clipboard fastfetch btop \
	ttf-jetbrains-mono-nerd \
	man
