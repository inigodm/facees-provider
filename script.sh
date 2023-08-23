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
        "┬─┬ ノ( ^_^ノ)"  "To launch"\
        "(ﾉ °益°)ﾉ 彡 ┻━┻"  "Launched"\
        "┻━┻ ︵ヽ(º□´º)ﾉ︵ ┻━┻"  "Fuck it all"\
        "(┛ò__ó)┛︵ /(.O. \)"  "Fuck you"\
        "(✖_✖)"   "RIP"\
        "(◉‿◉)"   "Narco Happy"\
        "(づ ￣ ³￣)づ"   "kiss"\
        "〵(^ o ^)〴"   "Happy"
}
text="$(face-text-provider)"
xdotool type --delay 50 "$text"
