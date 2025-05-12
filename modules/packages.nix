{ pkgs, config, ... }:


# Use unstable packages
let
  unstable = import <unstable> {};
in
{
  environment.systemPackages = with pkgs; [
    unixbench # TEMP
    # Hyprland
    hyprland # Window manager
    xdg-desktop-portal-gtk # Desktop integration portals for sandboxed apps
    xdg-desktop-portal-hyprland # xdg-desktop-portal backend for Hyprland
    xwayland # X server for interfacing X11 apps with the Wayland protocol

    # Waybar
    waybar # Bar
    meson # Build system
    wayland-protocols # Wayland protocol extensions
    wayland-utils # Wayland utilities
    wl-clipboard # Clipboard manager
    wlroots # Modular Wayland compositor library

    # Sound
    pipewire # Multimedia pipelines
    wireplumber # Modular session / policy manager for PipeWire

    # Bluetooth
    bluez # Bluetooth protocol stack
    bluez-tools # Manage bluetooth devices
    blueman # Bluetooth manager

    # Browsers
    brave

    # Archive
    unzip # Zip extraction

    # Media
    unstable.freetube # YouTube app
    jellyfin-media-player # Jellyfin desktop client

    # Thunar
    xfce.thunar # File manager
    mtpfs # FUSE Filesystem providing access to MTP devices
    gvfs # Virtual Filesystem support library

    # Rust
    rustup # Rust toolchain installer
    cargo # Rust utilities

    # Theming
    papirus-icon-theme # Icons
    phinger-cursors # Cursors

    # Misc.
    dunst # Notifications
    git # Version control
    kitty # Terminal emulator
    neovim # editor
    rofi-wayland # launcher
    swaybg # Wallpaper
    wlsunset # Backlight temperature
    zsh # Shell
    fastfetch # Information tool
    htop # Interactive process viewer
    qalculate-gtk # Calculator
    wget # Retrieve files
    gcc # GNU compiler collection
    gtk3 # GUI toolkit
    kdePackages.okular # PDF viewer
  ];

  # Thunar plugins
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-volman # Plugin for removable drives
    thunar-archive-plugin # Context for archives
  ];

  # Fonts
  fonts.packages = with pkgs; [
    nerdfonts
  ];
}

