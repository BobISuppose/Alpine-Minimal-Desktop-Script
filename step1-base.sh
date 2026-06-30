#!/bin/sh
set -e

echo "=== Step 1: Base System ==="

apk update
apk upgrade

# Core tools & Base system, networking, git, audio, notifications.
apk add \
    git \
    curl \
    wget \
    doas \
    bash \
    dbus \
    udev \
    eudev \
    seatd \
    elogind \
    alsa-utils \
    pipewire \
    pipewire-alsa \
    pipewire-pulse \
    wireplumber \
    dunst \
    xdg-utils \
    xdg-desktop-portal \
    xdg-desktop-portal-wlr

rc-update add dbus
rc-update add seatd
rc-update add wireplumber
rc-update add pipewire
