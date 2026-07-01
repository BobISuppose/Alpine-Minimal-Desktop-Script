#!/bin/sh


echo "=== Step 2: Desktop Environment ==="

# Wayland stack (Wayfire)
apk add \
    wayfire \
    waybar \
    wlogout \
    wlr-randr \
    wf-shell \
    foot \
    grim slurp \
    swaybg \
    swaylock \
    swayidle

# Basic fonts
apk add \
    font-dejavu \
    font-noto \
    font-noto-emoji

