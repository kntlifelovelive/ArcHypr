#!/usr/bin/env bash

set -e

# ┌────────────────────────────────────────────┐
# │     Hyprland Service Setup Script          │
# │     Enable Audio + Network Services        │
# └────────────────────────────────────────────┘

echo "=========================================="
echo "  Hyprland Services Setup"
echo "=========================================="
echo

# ┌────────────────────────────────────────────┐
# │              Audio Services                │
# └────────────────────────────────────────────┘
echo "[Audio] Enabling PipeWire services..."

# PipeWire (user service — no sudo needed)
systemctl --user enable --now pipewire.service 2>/dev/null || true
systemctl --user enable --now pipewire-pulse.service 2>/dev/null || true
systemctl --user enable --now wireplumber.service 2>/dev/null || true

echo "[Audio] PipeWire services enabled."
echo

# ┌────────────────────────────────────────────┐
# │             Network Services               │
# └────────────────────────────────────────────┘
echo "[Network] Enabling NetworkManager..."

if systemctl list-unit-files | grep -q '^NetworkManager.service'; then
	sudo systemctl enable --now NetworkManager.service
	echo "[Network] NetworkManager enabled."
else
	echo "[Network] NetworkManager not found — skipping."
fi

echo

# ┌────────────────────────────────────────────┐
# │             Bluetooth Services             │
# └────────────────────────────────────────────┘
echo "[Bluetooth] Enabling Bluetooth service..."

if systemctl list-unit-files | grep -q '^bluetooth.service'; then
	sudo systemctl enable --now bluetooth.service
	echo "[Bluetooth] Bluetooth enabled."
else
	echo "[Bluetooth] bluetooth.service not found — skipping."
fi

echo

# ┌────────────────────────────────────────────┐
# │              Display Manager               │
# └────────────────────────────────────────────┘
echo "[Display] Enabling SDDM..."

if systemctl list-unit-files | grep -q '^sddm.service'; then
	sudo systemctl enable sddm.service
	echo "[Display] SDDM enabled (start on boot)."
else
	echo "[Display] sddm.service not found — skipping."
fi

echo

# ┌────────────────────────────────────────────┐
# │                Firewall                    │
# └────────────────────────────────────────────┘
echo "[Firewall] Enabling UFW..."

if systemctl list-unit-files | grep -q '^ufw.service'; then
	sudo systemctl enable --now ufw.service
	sudo ufw enable 2>/dev/null || true
	echo "[Firewall] UFW enabled."
else
	echo "[Firewall] ufw.service not found — skipping."
fi

echo

# ┌────────────────────────────────────────────┐
# │              SSH Service                   │
# └────────────────────────────────────────────┘
echo "[SSH] Enabling SSH service..."

if systemctl list-unit-files | grep -q '^sshd.service'; then
	sudo systemctl enable --now sshd.service
	echo "[SSH] SSH enabled."
else
	echo "[SSH] sshd.service not found — skipping."
fi

echo
echo "=========================================="
echo "  Hyprland Services Setup Complete!"
echo "=========================================="
echo
echo "Enabled services:"
echo "  - PipeWire (audio)"
echo "  - PipeWire Pulse (audio)"
echo "  - WirePlumber (audio)"
echo "  - NetworkManager (network)"
echo "  - Bluetooth (if available)"
echo "  - SDDM (display manager, if available)"
echo "  - UFW (firewall, if available)"
echo "  - SSH (if available)"
echo
echo "Reboot or restart services to apply changes."