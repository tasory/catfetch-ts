#!/bin/bash

# catfetch

# main varibles
kr=$(uname -r)
wm=$(echo $XDG_CURRENT_DESKTOP)
du=$(uptime -p)
up=${du:2}
dp=$(lscpu | grep "Model name:")
cp=${dp:14}
hn=$(hostname)
mu=$(playerctl metadata --format "{{artist}} - {{title}}")

# colors
white="\e[97m"
gray="\e[90m"
def="\e[0m"

echo -e "${gray} ⠀⠀⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ${def}" ┌───── $hn 
echo -e "${gray} ⠀⠀⠀⠀⣠⠎⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ${def}" "│"
echo -e "${gray} ⢀⣀⡀⠞⠁⠀⠀⠁⠁⠐⠒⠒⠋⡹⠀⠀⠀⠀ ${def}" "├─" 󱑃 ${gray} $up ${def}
echo -e "${gray} ⠈⢢${white}⠀⠾⠃⠀⠀⠀⠀⠀⠀${gray}⠀⡰⠁⠀⠀⠀⠀ ${def}" "│"
echo -e "${gray} ⢰⠣⡄⠠⢄⠀${white}⠾⠅   ${gray}⢠⣰⠁⠀⠀⠀⠀⠀${def}" "├─"  ${gray} $kr ${def}
echo -e "${gray} ⠀⠀⠐⢤⣀⠀⣀⣆⢰⠉⠢⡇⠀⢀⠤⠤⣀⠀ ${def}" "│"
echo -e "${gray} ⠀⠀⢸⠀⠀⠀⠀⠀⠙⠀⠈⠳⡀⠘⠤⡀⠀⢆ ${def}" "├─"  ${gray} $cp ${def}
echo -e "${gray} ⠀⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⡀⢸⠀⠸ ${def}" "│"
echo -e "${gray} ⠀⠀⠁⠀⢥⠀⠀⡇⠀⠀⠀⠀⠀⠀⣱⠼⠀⡘ ${def}" "├─"  ${gray} $wm ${def}
echo -e "${gray} ⠀⢀⡇⠀⠢⠄⢀⠃⠀⢐⠀⠀⠀⠀⡇⠤⠋⠀ ${def}" "│"
echo -e "${gray}⠀ ⠸⢄⣀⠜⠀⢸⡀⠴⠋⠀⠉⠁⠁⠀⠀⠀⠀ ${def}" "└─" 󰝚 ${gray} $mu ${def}
