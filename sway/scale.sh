#!/bin/bash

# Vérifie si HDMI-A-1 est connecté
if swaymsg -t get_outputs | grep -q '"name": "HDMI-A-1".*"active": true'; then
    # Si HDMI-A-1 est connecté, applique un scale spécifique à eDP-1
    swaymsg output eDP-1 scale 2
else
    # Si HDMI-A-1 n'est pas connecté, remet à l'échelle par défaut
    swaymsg output eDP-1 scale 1
fi

