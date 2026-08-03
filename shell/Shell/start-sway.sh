#!/usr/bin/env bash
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_QPA_PLATFORM=wayland

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    exec sway
fi
