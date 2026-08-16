#!/usr/bin/env bash

set -e

# ┌────────────────────────────────────────────┐
# │         Zsh Plugin Setup Script            │
# │  Install Oh My Zsh + Plugins               │
# └────────────────────────────────────────────┘

# ┌────────────────────────────────────────────┐
# │              Install Zsh                   │
# └────────────────────────────────────────────┘
echo "[ZSH] Installing zsh..."
sudo pacman -S --needed --noconfirm zsh git

# ┌────────────────────────────────────────────┐
# │           Install Oh My Zsh                │
# └────────────────────────────────────────────┘
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
	echo "[ZSH] Installing Oh My Zsh..."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
	echo "[ZSH] Oh My Zsh already installed."
fi

# ┌────────────────────────────────────────────┐
# │              Install Plugins               │
# └────────────────────────────────────────────┘
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# zsh-autosuggestions
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]]; then
	echo "[ZSH] Installing zsh-autosuggestions..."
	git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
else
	echo "[ZSH] zsh-autosuggestions already installed."
fi

# zsh-syntax-highlighting
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
	echo "[ZSH] Installing zsh-syntax-highlighting..."
	git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
else
	echo "[ZSH] zsh-syntax-highlighting already installed."
fi

# zsh-system-clipboard
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-system-clipboard" ]]; then
	echo "[ZSH] Installing zsh-system-clipboard..."
	git clone https://github.com/kutsan/zsh-system-clipboard "$ZSH_CUSTOM/plugins/zsh-system-clipboard"
else
	echo "[ZSH] zsh-system-clipboard already installed."
fi

# ┌────────────────────────────────────────────┐
# │           Set Default Shell                │
# └────────────────────────────────────────────┘
if [[ "$(basename "$SHELL")" != "zsh" ]]; then
	echo "[ZSH] Setting default shell to zsh..."
	chsh -s "$(command -v zsh)"
else
	echo "[ZSH] Default shell is already zsh."
fi

echo "[ZSH] Zsh setup complete!"