#!/bin/bash

RED="\033[0;31m"
GREEN="\033[00;32m"
YELLOW="\033[0;33m"
BLUE="\033[00;34m"
RESET="\033[0m"

info() {
	printf "\n[${BLUE}..\033[0m] $1\n\n" >&2
}

warn() {
	printf "\n[${YELLOW}!!${RESET}] $1\n\n" >&2
}

# Indicates success
success() {
	printf "\033[2K[${GREEN}OK${RESET}] $1\n\n" >&2
}

# Indicates failure and exits
fail() {
	local exit_code=${2:-1} # Default exit code is 1 if not provided
	printf "\033[2K[${RED}FAIL${RESET}] $1\n" >&2
	echo ''
	exit $exit_code
}
