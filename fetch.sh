#!/bin/bash

# catfetch

kr=$(uname -r)
wm=$(echo $XDG_CURRENT_DESKTOP)
du=$(uptime -p)
up=${du:2}
dp=$(lscpu | grep "Model name:")
cpu=${dp:14}
hn=$(cat /etc/hostname)
mu=$(playerctl metadata --format "{{artist}} - {{title}}")

echo	"⠀⠀⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ " ────── $hn ───────
echo	"⠀⠀⠀⠀⣠⠎⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ " "|" 
echo	"⢀⣀⡀⠞⠁⠀⠀⠁⠁⠐⠒⠒⠋⡹⠀⠀⠀⠀ " "|->" up: $up
echo	"⠈⢢⠀⠾⠃⠀⠀⠀⠀⠀⠀⠀⡰⠁⠀⠀⠀⠀ " "|"
echo	"⢰⠣⡄⠠⢄⠀⠾⠅⠀⠀⢠⣰⠁⠀⠀⠀⠀⠀ " "|->" kr: $kr 
echo	"⠀⠀⠐⢤⣀⠀⣀⣆⢰⠉⠢⡇⠀⢀⠤⠤⣀⠀ " "|"
echo	"⠀⠀⢸⠀⠀⠀⠀⠀⠙⠀⠈⠳⡀⠘⠤⡀⠀⢆ " "|->" cp: $cpu
echo	"⠀⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⡀⢸⠀⠸ " "|"
echo	"⠀⠀⠁⠀⢥⠀⠀⡇⠀⠀⠀⠀⠀⠀⣱⠼⠀⡘ " "|->" wm: $wm
echo	"⠀⢀⡇⠀⠢⠄⢀⠃⠀⢐⠀⠀⠀⠀⡇⠤⠋⠀ " "|"
echo	"⠀⠸⢄⣀⠜⠀⢸⡀⠴⠋⠀⠉⠁⠁⠀⠀⠀⠀ " "|->" sg: $mu
