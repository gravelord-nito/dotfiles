config_directory="$HOME/.config"
config_file="$config_directory/waybar/themes/theme.css"

color=$(sed -n '3s/.*\(......\).$/\1/p' "$config_file")

asusctl led-mode pulse -c $color
asusctl led-mode breathe -c $color
asusctl led-mode static -c $color
