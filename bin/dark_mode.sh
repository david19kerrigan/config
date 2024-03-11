#!/bin/sh
sed -i 's/gtk-application-prefer-dark-theme=false/gtk-application-prefer-dark-theme=true/' /home/david/Documents/config/gtk-3.0/settings.ini
sed -i 's/include sol_light.conf/include sol_dark.conf/' /home/david/Documents/config/kitty/kitty.conf
#sed -i 's/colorscheme catppuccin-latte/colorscheme catppuccin-macchiato/' /home/david/Documents/config/nvim/plugin/setup.vim
sed -i 's/set background=light/set background=dark/' /home/david/Documents/config/nvim/plugin/setup.vim
sed -i 's/set -g status-bg white/set -g status-bg 0/' /home/david/Documents/config/.tmux.conf
