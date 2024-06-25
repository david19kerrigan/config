#!/bin/sh
sed -i 's/gtk-application-prefer-dark-theme=false/gtk-application-prefer-dark-theme=true/' /home/david/Documents/config/gtk-3.0/settings.ini
sed -i 's/gtk-application-prefer-dark-theme=false/gtk-application-prefer-dark-theme=true/' /home/david/Documents/config/gtk-4.0/settings.ini
sed -i 's/include gruv_light.conf/include gruv_dark.conf/' /home/david/Documents/config/kitty/kitty.conf
#sed -i 's/colorscheme catppuccin-latte/colorscheme catppuccin-macchiato/' /home/david/Documents/config/nvim/plugin/setup.vim
sed -i 's/set background=light/set background=dark/' /home/david/Documents/config/nvim/plugin/setup.vim
sed -i 's/light/dark/' /home/david/Documents/config/bat/config
#sed -i 's/light.jpg/dark.jpg/' /home/david/.config/i3/config
#feh --bg-scale /home/david/Documents/config/wallpapers/dark.jpg
cp /home/david/Documents/config/zathura/zathura-dark /home/david/Documents/config/zathura/zathurarc
