#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source "$SCRIPT_DIR/../../helpers/log.sh"

info "Copying Omakase Configs"

cp -r ~/dev/omakase/config/* ~/.config/
