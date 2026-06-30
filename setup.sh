#!/bin/sh
set -e

echo "=== Alpine Minimal Desktop Setup ==="

./step1-base.sh
./step2-desktop.sh
./step3-user.sh

echo "=== Setup complete. Reboot now. ==="
