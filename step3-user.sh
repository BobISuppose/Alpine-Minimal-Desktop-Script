#!/bin/sh

set -e

echo "=== Step 3: Session Setup ==="

# Wayfire session file (important!)
mkdir -p /usr/share/wayland-sessions

cat <<EOF >/usr/share/wayland-sessions/wayfire.desktop
[Desktop Entry]
Name=Wayfire
Comment=Wayland Compositor
Exec=dbus-run-session wayfire
Type=Application
EOF

echo "=== Session ready ==="
