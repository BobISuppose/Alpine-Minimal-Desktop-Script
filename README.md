# Alpine-Minimal-Desktop-Script

A lightweight Alpine Linux desktop installer built with modular shell scripts.

This project builds a minimal Alpine Linux desktop environment by separating:

- system foundation
- desktop environment
- user configuration

The goal is to create a clean, understandable Linux desktop setup that is easy to modify, learn from, and extend.

---

# Features

- IceWM or Wayfire desktop options
- Tiles2 tiling window management
- PCManFM lightweight file manager
- PipeWire audio stack
- Dunst notification system
- Minimal fonts and terminal environment
- Modular step-by-step setup scripts

---

# Installation

Clone the repository:


git clone https://github.com/BobISuppose/Alpine-Minimal-Desktop-Script

Enter the project directory: cd Alpine-Minimal-Desktop-Script
Make scripts executable: chmod +x setup.sh
Run the installer: ./setup.sh

Requirements

* Alpine Linux installation
* Root access
* Internet connection
* Recommended: fresh Alpine installation

Project Structure: 

Alpine-Minimal-Desktop-Script/
├── setup.sh
│   Main installation script
│
├── step1-base.sh
│   Core system packages and services
│
├── step2-desktop.sh
│   X11 / Wayland desktop packages
│
└── step3-user.sh
    User configuration and desktop setup

How It Works

The installation is separated into three stages:

Step 1 — Base System

Installs the core services required for a functional Linux desktop:

* hardware support
* user sessions
* audio system
* desktop communication services
* basic development tools

Step 2 — Desktop Environment

Installs graphical desktop components:

* X11 desktop option using IceWM
* Wayland desktop option using Wayfire
* terminal applications
* file manager
* notifications
* fonts

Step 3 — User Configuration

Configures the user environment and prepares the desktop session.   

Educational Purpose

This project is designed to help users understand how a Linux desktop environment is assembled from individual components instead of relying on a pre-built desktop distribution.

Each script represents a different layer of the system, making it easier to learn, troubleshoot, and customize.

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


## Desktop Environment Packages

`step2-desktop.sh` installs the graphical desktop components. This project supports both traditional X11 desktops and modern Wayland desktops.

---

## X11 Stack (IceWM + Tiles2)

X11 is the traditional Linux graphical display system. This stack provides a lightweight desktop environment using IceWM.

| Package | Purpose | Common Use |
|---|---|---|
| xorg-server | X11 display server | Provides the graphical environment for X11 applications |
| xinit | X session starter | Starts a graphical desktop from the command line |
| icewm | Lightweight window manager | Manages windows, menus, panels, and desktop behavior |
| tiles2 | Tiling window management extension | Automatically arranges application windows |
| pcmanfm | Lightweight file manager | Browse files and manage folders |
| lxterminal | Lightweight terminal emulator | Provides a graphical command-line terminal |

---

## Wayland Stack (Wayfire)

Wayland is the newer Linux display system designed as a replacement for X11. Wayfire provides a lightweight Wayland compositor.

| Package | Purpose | Common Use |
|---|---|---|
| wayfire | Wayland compositor | Provides the graphical desktop and window management |
| waybar | Status bar | Displays system information, workspaces, network, battery, clock |
| wlogout | Logout menu | Provides shutdown, reboot, logout options |
| wlr-randr | Display configuration tool | Configure monitors and screen layouts |
| wf-shell | Wayfire desktop shell components | Provides desktop utilities and interface elements |
| foot | Wayland terminal emulator | Lightweight terminal designed for Wayland |
| grim | Screenshot utility | Captures screenshots in Wayland |
| slurp | Screenshot selection tool | Selects screen regions for screenshots |
| swaybg | Wallpaper utility | Sets desktop wallpapers |
| swaylock | Screen locker | Locks the desktop session |
| swayidle | Idle management tool | Handles automatic locking and power-saving |

---

## Fonts

Fonts provide proper text rendering across applications.

| Package | Purpose | Common Use |
|---|---|---|
| font-dejavu | General purpose font family | Default readable desktop fonts |
| font-noto | Unicode font family | Supports many languages and symbols |
| font-noto-emoji | Emoji font support | Displays emojis correctly |
