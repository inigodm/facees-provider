#!/usr/bin/env bash
set -e
function face-text-provider {
    text="$(__pick-face)"
    sleep 0.2
    echo "${text// /}"
}
function __pick-face {
    zenity --list \
        --title="Face Picker" \
        --text="Pick a face" \
        --width="300" \
        --height="300" \
        --column="Face" \
	--column="Type" \
        \
        "¯\_(ツ)_/¯"   "Slught"\
        "(ಠ_ಠ)"   "Serious"\
        "(⚆_⚆)"   "Confused"\
        "ﾉ(•◡•)ﾉ"   "Happy"\
        "(ಠ︹ಠ)"   "Sad"\
        "Ⓣⓗⓐⓝⓚ Ⓨⓞⓤ"   "Thank you"\
        "(✖_✖)"   "RIP"
}
text="$(face-text-provider)"
xdotool type --delay 50 "$text"
