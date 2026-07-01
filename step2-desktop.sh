#!/bin/sh


echo "=== Step 2: Wayfire Desktop ==="

apk add \
    wayfire \
    waybar \
    wf-shell \
    foot \
    wlogout \
    wlr-randr \
    grim \
    slurp \
    swaybg \
    swaylock \
    swayidle \
    xwayland \
    dbus-x11

echo "=== Wayfire installed ==="
