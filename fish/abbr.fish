abbr --add v "nvim"
abbr --add suspend "sudo systemctl suspend"
abbr --add soff 'xset dpms force off'

abbr --add yuzu-mem "sudo sysctl -w vm.max_map_count=262144"

abbr --add ns "cd ~/Documents/scm ; nvim index.md"

abbr --add td 'mullvad connect ; sleep 5 ; mullvad status ; transmission-daemon'
abbr --add te 'transmission-remote --exit ; sleep 5 ; mullvad disconnect'
abbr --add ta --set-cursor 'transmission-remote -a "%"'
abbr --add tr 'transmission-remote -tall --remove'
abbr --add tl 'transmission-remote --list'
abbr --add tw 'watch -n3 transmission-remote --list'

abbr --add mc 'mullvad connect'
abbr --add md 'mullvad disconnect'
abbr --add ms 'mullvad status'

abbr --add killi 'docker rm -f (docker ps -aq)'
abbr --add killc 'docker rmi -f (docker images -aq)'

abbr --add fo 'nvim (fzf --preview "bat -n --color=always {}")'
abbr --add ho 'nvim (find . | fzf --preview "bat -n --color=always {}")'
abbr --add hp 'find . | fzf --preview "bat -n --color=always {}"'
abbr --add fp 'fzf --preview "bat -n --color=always {}"'
abbr --add fc 'cd (fzf --preview "bat -n --color=always {}" | awk -F/ "NF{NF--};1" OFS=/)'
abbr --add fd 'cd $(find . -type d -print | fzf)'

abbr --add gp 'git add --all; git commit -a -m "auto commit"; git push'
abbr --add gfp --set-cursor 'echo file://$(readlink -f %) | xclip -sel clip'
abbr --add gu 'git pull'

abbr --add t 'termdown --no-figlet'

abbr --add autor 'sudo pacman -Rns $(pacman -Qtdq)'
abbr --add useri 'bash -c "comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base-devel | sort | uniq)"'

abbr --add m 'aerc'
abbr --add s 'cmus'
abbr --add y 'ytfzf --detach --video-pref="bestvideo[height<=?1080]" --ii="https://invidious.io.lol"'
abbr --add n 'cd ~/.newsboat; newsboat'
abbr --add p 'podboat -a'
abbr --add z --set-cursor 'zathura % &'
abbr --add i 'gurk.sh'

abbr --add ym --set-cursor 'yt-dlp -x --audio-format mp3 "%"'
abbr --add sp --set-cursor 'spotdl "%" ; mpc update'
abbr --add sc --set-cursor 'scdl -l "%"'

abbr --add py 'source ~/.local/share/pyenv/venv1/bin/activate.fish'
abbr --add pyr 'source ~/.local/share/pyenv/venv1/bin/activate.fish ; python'
abbr --add sf 'source ~/.config/fish/config.fish'
abbr --add st 'tmux source ~/.tmux.conf'
abbr --add l 'clear'
abbr --add c 'cd && clear'

abbr --add bcs 'bluetoothctl connect AC:BF:71:11:0B:24' 
abbr --add bce 'bluetoothctl connect B4:1A:1D:DE:1A:FE' 
abbr --add bch 'bluetoothctl connect 14:3F:A6:A7:B9:73' 
abbr --add bds 'bluetoothctl disconnect AC:BF:71:11:0B:24' 
abbr --add bde 'bluetoothctl disconnect B4:1A:1D:DE:1A:FE' 
abbr --add bdh 'bluetoothctl disconnect 14:3F:A6:A7:B9:73' 

abbr --add rgf "rg --files | rg"

abbr --add kc "pkill -9 cmus && pkill -9 mpris"
 
abbr --add sr "ffmpeg -y -f x11grab -s 1920x1080 -framerate 60 -i :0.0 -f pulse -i bluez_output.AC_BF_71_11_0B_24.1.monitor ~/Downloads/out.mp4"
abbr --add rs "pass -c pass/server ; rsync --recursive /home/david/Documents/codes/server/* root@45.77.108.152:/usr/share/nginx/ ; ssh root@45.77.108.152 systemctl restart goweb"
abbr --add cw "curl 'wttr.in/New+York+City?u'"

abbr --add is "iwctl station wlan0 scan"
abbr --add ig "iwctl station wlan0 get-networks"
abbr --add ic "iwctl station wlan0 connect"
abbr --add io "iwctl station wlan0 show"

abbr --add scr "xrandr --output LVDS-1 --off ; xrandr --output DP-2 --primary; /home/david/.fehbg"
abbr --add scr1 "xrandr --output DP-2 --primary; /home/david/.fehbg"
abbr --add xb --set-cursor "xrandr --output eDP-1 --brightness 1.%"

abbr --add u "yay --noconfirm ; yay -Sc --noconfirm ; sudo pacman -Rns \$(pacman -Qtdq)"
abbr --add me --set-cursor "mpc seek %:00"

abbr --add tpf "sudo thinkfan-ui"
abbr --add em "nvim /home/david/Documents/marks"
