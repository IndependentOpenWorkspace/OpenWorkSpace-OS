#!/bin/bash
# OpenWorkSpace Desktop Preparation Script
# Makes the desktop clean and Windows-like (taskbar at bottom, simple menu, minimal apps)

set -e

echo "=== OpenWorkSpace Desktop Setup Starting ==="

# Install minimal required packages for clean desktop
apt update
apt install -y gnome-tweaks gnome-shell-extensions \
               dash-to-panel  # Will be replaced by our local extension later

# Remove unwanted pre-installed apps (bloat)
apt purge -y gnome-games* gnome-tour* yelp* totem* rhythmbox* || true
apt autoremove -y

# Our local theme, icons and extensions will be copied here in build-iso.sh

# Set taskbar to bottom + Windows style settings
gsettings set org.gnome.shell.extensions.dash-to-panel panel-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-button-icon-size 32
gsettings set org.gnome.desktop.interface enable-hot-corners false

# Simple menu grouping (we create .desktop categories later)
mkdir -p /usr/share/applications/OpenWorkSpace

echo "=== OpenWorkSpace Desktop Setup Completed ==="
