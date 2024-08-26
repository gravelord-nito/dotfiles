scale=$(hyprctl monitors | grep 'scale' | awk '{print $2}')

echo $scale

scale=$(echo "$scale + 0.25" | bc)

echo $scale

if [ "$scale" == "1.75" ]; then
  scale="1.00"
fi

echo "$scale"

scale="eDP-1,1920x1080@144,0x0,${scale}"

hyprctl keyword monitor "$scale"
