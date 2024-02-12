scale=$(hyprctl monitors | grep 'scale' | awk '{print $2}')

if [ "$scale" == "1.00" ]; then
	hyprctl keyword monitor "eDP-1,1920x1080@144,0x0,1.33"
else
	hyprctl keyword monitor "eDP-1,1920x1080@144,0x0,1"
fi
