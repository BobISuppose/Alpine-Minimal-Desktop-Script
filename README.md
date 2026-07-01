# Alpine-Minimal-Desktop-Script

“This project builds a lightweight Alpine Linux desktop environment by separating system foundation, desktop environment, and user configuration into modular setup scripts.”

A minimal Alpine Linux setup using IceWM or Wayfire, Tiles2, PCManFM, PipeWire audio, and Dunst notifications.

Start with git clone https://github.com/BobISuppose/Alpine-Minimal-Desktop-Script

cd Alpine-Minimal-Desktop-Script

Make the script executionable with chmod +x setup.sh

## Features
- IceWM or Wayfire (choose at runtime)
- Tiles2 tiling window manager
- PCManFM lightweight file manager
- PipeWire audio stack
- Dunst notifications
- Minimal fonts and terminal

Here is the markdown:
## Base System Packages

`step1-base.sh` installs the core services and utilities required for a minimal Alpine Linux desktop environment.

### Development & System Tools

| Package | Purpose | Common Use |
|---|---|---|
| git | Version control system | Clone and manage software projects |
| curl | Command-line data transfer tool | Download files, test APIs, retrieve resources |
| wget | File downloader | Download packages, scripts, and files |
| bash | Advanced shell environment | Run scripts that require Bash features |
| doas | Privilege escalation tool | Run administrative commands securely |

### Hardware & System Services

| Package | Purpose | Common Use |
|---|---|---|
| dbus | Application communication system | Allows desktop applications and services to communicate |
| udev/eudev | Hardware device management | Detects USB devices, keyboards, GPUs, and other hardware |
| seatd | Device access manager | Allows Wayland sessions to access input and graphics devices |
| elogind | User session manager | Handles login sessions, power management, and permissions |

### Audio System

| Package | Purpose | Common Use |
|---|---|---|
| pipewire | Modern Linux audio/video server | Handles system audio and multimedia |
| pipewire-alsa | ALSA compatibility layer | Supports older Linux audio applications |
| pipewire-pulse | PulseAudio compatibility | Allows PulseAudio applications to run |
| wireplumber | PipeWire session manager | Controls audio devices and routing |
| alsa-utils | Audio management tools | Test and configure sound devices |

### Desktop Integration

| Package | Purpose | Common Use |
|---|---|---|
| dunst | Notification service | Desktop notifications |
| xdg-utils | Desktop helper tools | Opens files, URLs, and default applications |
| xdg-desktop-portal | Desktop integration framework | Used by Flatpak, screen sharing, and sandboxed apps |
| xdg-desktop-portal-wlr | Wayland portal support | Required for wlroots desktops like Sway |

## Enabled Services

These services are added to Alpine startup:

- `dbus` → Enables application communication
- `seatd` → Enables user access to input and graphics devices
- `pipewire` → Starts audio services
- `wireplumber` → Manages audio devices
