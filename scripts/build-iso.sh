#!/bin/bash
# OpenWorkSpace ISO Build Script
# Pulls latest Ubuntu 26.04 and builds custom ISO with our local themes/icons/extensions

set -e

echo "=== OpenWorkSpace ISO Build Starting ==="

# TODO: Download latest Ubuntu 26.04 daily ISO (we doen dit via Cubic GUI of script)
# Cubic project will be in cubic-project/ folder

# Copy our local assets into the chroot during build
# (Cubic handles chroot, we add commands in Cubic terminal)

cp -r themes/openworkspace-win11 /path/to/chroot/usr/share/themes/
cp -r icons/openworkspace-win11 /path/to/chroot/usr/share/icons/
cp -r extensions/openworkspace-taskbar /path/to/chroot/usr/share/gnome-shell/extensions/

# Run desktop preparation
cp scripts/prepare-desktop.sh /path/to/chroot/usr/local/bin/
chmod +x /path/to/chroot/usr/local/bin/prepare-desktop.sh

echo "=== Build preparation done. Now continue in Cubic to generate ISO ==="
echo "Next step: Open Cubic, load Ubuntu 26.04 ISO and run prepare-desktop.sh in chroot."
