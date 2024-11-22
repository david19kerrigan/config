#!/bin/sh
mkdir $HOME/.config/gtk-3.0
mkdir $HOME/config/gtk-4.0
mkdir $HOME/.sfeed
mkdir $HOME/.config/mpd
mkdir $HOME/.mblaze
ln -sf $HOME/dox/config/mksh/.mkshrc $HOME/
ln -sf $HOME/dox/config/mksh/.profile $HOME/
ln -sf $HOME/dox/config/mpv $XDG_CONFIG_HOME/
ln -sf $HOME/dox/config/zathura $XDG_CONFIG_HOME/
ln -sf $HOME/dox/config/vis $XDG_CONFIG_HOME/
ln -sf $HOME/dox/config/picom.conf $XDG_CONFIG_HOME/
ln -sf $HOME/dox/config/.xinitrc $HOME/
ln -sf $HOME/dox/config/.xbindkeysrc $HOME/
ln -sf $HOME/dox/config/.gnupg/gpg-agent.conf $HOME/.gnupg/
ln -sf $HOME/dox/config/bin $HOME/.local/
ln -sf $HOME/dox/config/mpv $XDG_CONFIG_HOME/
ln -sf $HOME/dox/config/settings.ini $XDG_CONFIG_HOME/gtk-3.0/
ln -sf $HOME/dox/config/settings.ini $XDG_CONFIG_HOME/gtk-4.0/
ln -sf $HOME/dox/config/mimeapps.list $XDG_CONFIG_HOME/
ln -sf $HOME/dox/config/.mbsyncrc $HOME/
ln -sf $HOME/dox/config/.sfeed/sfeedrc $HOME/.sfeed/
ln -sf $HOME/dox/config/mpd/mpd.conf $XDG_CONFIG_HOME/mpd/
ln -sf $HOME/dox/config/.msmtprc $XDG_CONFIG_HOME/msmtp/config
ln -sf $HOME/dox/config/lesskey $HOME
