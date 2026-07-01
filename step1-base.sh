#!/bin/sh

echo "=== Step 1: Base System ==="

apk update

apk add \
    dbus \
    seatd \
    elogind \
    udev \
    bash \
    git \
    curl \
    wget \
    xdg-utils \
    font-dejavu \
    font-noto \
    font-noto-emoji \
    mesa-dri-gallium \
    mesa-utils

# Enable essential services
rc-update add dbus
rc-update add seatd
rc-update add elogind

echo "=== Base system done ==="
