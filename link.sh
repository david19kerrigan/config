#!/bin/sh
mkdir $HOME/.config/gtk-3.0
mkdir $HOME/config/gtk-4.0
mkdir $HOME/.sfeed
mkdir $HOME/.config/mpd
mkdir $HOME/.mblaze
ln -sf ./mksh/.mkshrc $HOME/
ln -sf ./mksh/.profile $HOME/
ln -sf ./mpv $XDG_CONFIG_HOME/
ln -sf ./zathura $XDG_CONFIG_HOME/
ln -sf ./vis $XDG_CONFIG_HOME/
ln -sf ./picom.conf $XDG_CONFIG_HOME/
ln -sf ./.xinitrc $HOME/
ln -sf ./.xbindkeysrc $HOME/
ln -sf ./.gnupg/gpg-agent.conf $HOME/.gnupg/
ln -sf ./bin $HOME/.local/
ln -sf ./mpv $XDG_CONFIG_HOME/
ln -sf ./settings.ini $XDG_CONFIG_HOME/gtk-3.0/
ln -sf ./settings.ini $XDG_CONFIG_HOME/gtk-4.0/
ln -sf ./mimeapps.list $XDG_CONFIG_HOME/
ln -sf ./.mbsyncrc $HOME/
ln -sf ./.sfeed/sfeedrc $HOME/.sfeed/
ln -sf ./mpd/mpd.conf $XDG_CONFIG_HOME/mpd/
ln -sf ./.msmtprc $XDG_CONFIG_HOME/msmtp/config
ln -sf ./lesskey $HOME
