eval `keychain -q --agents ssh --eval`
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
