export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export ENV="$XDG_CONFIG_HOME"/mkshrc
export PATH=$PATH:$HOME/.local/bin

export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority 
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass 
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export MBLAZE="$XDG_CONFIG_HOME"/mblaze
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export PYTHON_HISTORY=$XDG_STATE_HOME/python/history

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi
