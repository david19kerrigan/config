#!/bin/sh
sed -i 's/gtk-application-prefer-dark-theme=true/gtk-application-prefer-dark-theme=false/' /home/david/Documents/config/gtk-3.0/settings.ini
sed -i 's/include gruv_dark.conf/include gruv_light.conf/' /home/david/Documents/config/kitty/kitty.conf
#sed -i 's/colorscheme catppuccin-macchiato/colorscheme catppuccin-latte/' /home/david/Documents/config/nvim/plugin/setup.vim
sed -i 's/set background=dark/set background=light/' /home/david/Documents/config/nvim/plugin/setup.vim
sed -i 's/set -g status-bg 0/set -g status-bg 0/' /home/david/Documents/config/.tmux.conf
