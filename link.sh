#!/bin/sh
mkdir $HOME/.config/gtk-3.0
mkdir $HOME/config/gtk-4.0
mkdir $HOME/.sfeed
mkdir $HOME/.config/mpd
mkdir $HOME/.mblaze
ln -sf $PWD/mksh/.mkshrc $HOME/
ln -sf $PWD/mksh/.profile $HOME/
ln -sf $PWD/mpv $XDG_CONFIG_HOME/
ln -sf $PWD/zathura $XDG_CONFIG_HOME/
ln -sf $PWD/vis $XDG_CONFIG_HOME/
ln -sf $PWD/picom.conf $XDG_CONFIG_HOME/
ln -sf $PWD/.xinitrc $HOME/
ln -sf $PWD/.xbindkeysrc $HOME/
ln -sf $PWD/.gnupg/gpg-agent.conf $HOME/.gnupg/
ln -sf $PWD/bin $HOME/.local/
ln -sf $PWD/mpv $XDG_CONFIG_HOME/
ln -sf $PWD/settings.ini $XDG_CONFIG_HOME/gtk-3.0/
ln -sf $PWD/settings.ini $XDG_CONFIG_HOME/gtk-4.0/
ln -sf $PWD/mimeapps.list $XDG_CONFIG_HOME/
ln -sf $PWD/.mbsyncrc $HOME/
ln -sf $PWD/.sfeed/sfeedrc $HOME/.sfeed/
ln -sf $PWD/mpd/mpd.conf $XDG_CONFIG_HOME/mpd/
ln -sf $PWD/.msmtprc $XDG_CONFIG_HOME/msmtp/config
ln -sf $PWD/lesskey $XDG_CONFIG_HOME/
