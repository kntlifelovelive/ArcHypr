#!/usr/bin/env bash

set -e

# ┌────────────────────────────────────────────┐
# │         Config Setup Script                │
# │  Copies config folders → ~/.config         │
# │  Copies local scripts → ~/.local/bin       │
# │  Copies .zshenv → ~/                       │
# └────────────────────────────────────────────┘

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
CONFIG_SRC="$REPO_ROOT/config"
CONFIG_DEST="$HOME/.config"
LOCAL_BIN="$HOME/.local/bin"
DATE="$(date +%Y%m%d_%H%M%S)"

# ┌────────────────────────────────────────────┐
# │              Helper Functions              │
# └────────────────────────────────────────────┘
backup() {
	local src="$1"
	local dest="$2"
	if [ -e "$dest" ]; then
		echo "Backing up $(basename "$dest") → $(basename "$dest").backup_$DATE"
		mv "$dest" "$dest.backup_$DATE"
	fi
}

copy_dir() {
	local src="$1"
	local dest="$2"
	mkdir -p "$dest"
	backup "$src" "$dest/$(basename "$src")"
	echo "Copying $(basename "$src") → $dest/"
	cp -r "$src" "$dest/"
}

# ┌────────────────────────────────────────────┐
# │          1. Copy Config Folders            │
# │     (all folders except local)             │
# └────────────────────────────────────────────┘
echo "════════════════════════════════════════"
echo "  Step 1: Copying config folders"
echo "════════════════════════════════════════"

mkdir -p "$CONFIG_DEST"

for item in "$CONFIG_SRC"/*; do
	[ -e "$item" ] || continue
	name="$(basename "$item")"

	# Skip local folder (handled separately)
	if [[ "$name" == "local" ]]; then
		echo "Skipping $name (handled in step 2)"
		continue
	fi

	copy_dir "$item" "$CONFIG_DEST"
done

# ┌────────────────────────────────────────────┐
# │          2. Copy Local Scripts             │
# │     config/local/* → ~/.local/bin/         │
# └────────────────────────────────────────────┘
echo
echo "════════════════════════════════════════"
echo "  Step 2: Copying local scripts"
echo "════════════════════════════════════════"

mkdir -p "$LOCAL_BIN"

for script in "$CONFIG_SRC/local"/*; do
	[ -e "$script" ] || continue
	name="$(basename "$script")"

	backup "$script" "$LOCAL_BIN/$name"
	echo "Copying $name → $LOCAL_BIN/"
	cp "$script" "$LOCAL_BIN/"
	chmod +x "$LOCAL_BIN/$name"
done

# ┌────────────────────────────────────────────┐
# │          3. Copy .zshenv to Home           │
# │     config/zshenv/.zshenv → ~/.zshenv      │
# └────────────────────────────────────────────┘
echo
echo "════════════════════════════════════════"
echo "  Step 3: Copying .zshenv"
echo "════════════════════════════════════════"

ZSENV_SRC="$CONFIG_SRC/zshenv/.zshenv"

if [ -f "$ZSENV_SRC" ]; then
	backup "$ZSENV_SRC" "$HOME/.zshenv"
	echo "Copying .zshenv → $HOME/"
	cp "$ZSENV_SRC" "$HOME/.zshenv"
else
	echo "⚠ .zshenv not found in config/zshenv/, skipping"
fi

# ┌────────────────────────────────────────────┐
# │                Complete                    │
# └────────────────────────────────────────────┘
echo
echo "════════════════════════════════════════"
echo "  ✔ Config setup complete!"
echo "════════════════════════════════════════"