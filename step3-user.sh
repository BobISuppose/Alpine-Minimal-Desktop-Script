#!/bin/sh
set -e

echo "=== Step 3: User Setup ==="

adduser -D robert
passwd robert

echo "permit robert" > /etc/doas.d/doas.conf

# Auto start X on login
echo "if [ -z \$DISPLAY ] && [ \$TTY = /dev/tty1 ]; then exec startx; fi" >> /home/robert/.profile
chown robert:robert /home/robert/.profile
