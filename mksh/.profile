export ENV="/home/david/.mkshrc"
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export PATH=$PATH:$HOME/.local/bin

export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority 
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass 
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi