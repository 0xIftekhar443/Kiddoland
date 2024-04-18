
# WOFI STYLES
CONFIG="$HOME/.config/hypr/wofi/wofi/config"
STYLE="$HOME/.config/hypr/wofi/style.css"
COLORS="$HOME/.config/hypr/wofi/colors"

# wofi window config (in %)e
WIDTH=70
HEIGHT=40

if [[ ! $(pidof wofi) ]]; then
  cliphist list | wofi --show dmenu --prompt 'Search...' \
    --conf ${CONFIG} --style ${STYLE} --color ${COLORS} \
    --width=1170 --height=400 | cliphist decode | wl-copy
else
	pkill wofi
fi
