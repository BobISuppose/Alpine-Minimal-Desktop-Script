#!/bin/sh


echo "=== Step 2: Desktop Environment ==="

# X11 stack for IceWM + Tiles2
apk add \
    xorg-server \
    xinit \
    icewm \
    tiles2 \
    pcmanfm \
    lxterminal

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

# Enable IceWM session
cat <<EOF >/etc/X11/xinit/xinitrc
#!/bin/sh
exec icewm-session
EOF

chmod +x /etc/X11/xinit/xinitrc
