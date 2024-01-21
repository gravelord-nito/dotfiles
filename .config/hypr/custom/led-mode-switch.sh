case $1 in
"next") asusctl led-mode -n ;;
"prev") asusctl led-mode -p ;;
*) active_ws=$((($active_ws + 1) % 4)) ;;
esac
