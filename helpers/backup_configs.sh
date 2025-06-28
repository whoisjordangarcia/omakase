#!/bin/bash

# Backup script for Omakase configuration files

# Get current date and time in YYYY-MM-DD-HH-MM format
TIMESTAMP=$(date +%Y-%m-%d-%H-%M)

BACKUP_DIR="$HOME/.config/omakase_backup/$TIMESTAMP"
SOURCE_DIR="$HOME/dev/omakase/config"
CONFIG_DIR="$HOME/.config"

mkdir -p "$BACKUP_DIR"

for dir in "$SOURCE_DIR"/*; do
	if [ -d "$dir" ]; then
		dir_name=$(basename "$dir")

		if [ -d "$CONFIG_DIR/$dir_name" ]; then
			rsync -av --delete "$CONFIG_DIR/$dir_name/" "$BACKUP_DIR/$dir_name"
			echo "Backed up $dir_name"
		fi
	fi
done

echo "Omakase configuration files backed up to $BACKUP_DIR"
