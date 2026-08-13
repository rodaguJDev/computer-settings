#!/bin/sh

wallpaper="$HOME/wallpaper.png"
fallback="/usr/share/backgrounds/sway/Sway_Wallpaper_Blue_1920x1080.png"

if [ -f "$wallpaper" ]; then
    swaymsg "output * bg '$wallpaper' fill"
elif [ -f "$fallback" ]; then
    swaymsg "output * bg '$fallback' fill"
else
    swaymsg "output * bg #000000 solid_color"
fi
