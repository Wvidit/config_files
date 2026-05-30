#!/bin/bash
pkill hyprpaper
sleep 0.5
hyprpaper &
for i in $(seq 1 20); do
    hyprctl hyprpaper listloaded 2>/dev/null && break
    sleep 0.3
done
hyprctl hyprpaper preload "/home/vidit68/Downloads/photo.jpg"
hyprctl hyprpaper wallpaper "eDP-1,/home/vidit68/Downloads/photo.jpg"
hyprctl hyprpaper wallpaper "HDMI-A-3,/home/vidit68/Downloads/photo.jpg"
