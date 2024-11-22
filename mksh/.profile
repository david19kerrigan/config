export ENV="/home/david/.mkshrc"
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority 
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass 

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi