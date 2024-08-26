active_ws=$(hyprctl monitors | grep "focused: yes" -B 10 | grep "active workspace" | awk -F': ' '{print $2}' | cut -d' ' -f1)

active_ws=$(($active_ws - 1))

function add() {
  ret=$(($1 + $2))
  ret=$(($ret < 0 ? ($ret - 2 * $2 + 1) : $ret))
  ret=$(($ret > 4 ? ($ret - 2 * $2 - 1) : $ret))
  echo $ret
}

case $1 in
"up") active_ws=$(add $active_ws -2) ;;
"down") active_ws=$(add $active_ws 2) ;;
"left") active_ws=$((($active_ws + 4) % 5)) ;;
*) active_ws=$((($active_ws + 1) % 5)) ;;
esac

active_ws=$(($active_ws + 1))

echo $active_ws

case $2 in
"move") hyprctl dispatch movetoworkspace $active_ws ;;
*) hyprctl dispatch workspace $active_ws ;;
esac
