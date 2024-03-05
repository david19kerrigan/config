#!/bin/sh
sed -i 's/gtk-application-prefer-dark-theme=false/gtk-application-prefer-dark-theme=true/' /home/david/Documents/config/gtk-3.0/settings.ini
sed -i 's/include sol_light.conf/include sol_dark.conf/' /home/david/.config/kitty/kitty.conf
sed -i 's/set background=light/set background=dark/' /home/david/.config/nvim/plugin/setup.vim
