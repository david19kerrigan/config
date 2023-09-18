if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
bind -M insert \cn down-or-search
bind -M insert \cp up-or-search
bind -M insert \cF accept-autosuggestion
set -g fish_prompt_pwd_dir_length 0

abbr --add v 'nvim'

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

abbr --add fzo 'nvim (fzf --preview "bat -n --color=always {}")'
abbr --add fzp 'fzf --preview "bat -n --color=always {}"'
abbr --add fzc 'cd (fzf --preview "bat -n --color=always {}" | awk -F/ "NF{NF--};1" OFS=/)'
abbr --add fzd 'cd $(find . -type d -print | fzf)'

abbr --add gp 'git add --all; git commit -a -m "auto commit"; git push'
abbr --add gu 'git pull'

abbr --add t 'termdown --no-figlet'

abbr --add autor 'sudo pacman -Rns $(pacman -Qtdq)'
abbr --add useri 'bash -c "comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base-devel | sort | uniq)"'

abbr --add m 'aerc'
tmux new-session -s aerc -d "$(which --skip-alias aerc)" 2> /dev/null
tmux new-session -s notes -d "cd ~/Documents/notes && nvim index.md" 2> /dev/null
abbr --add s 'cmus'
tmux new-session -s cmus -d "$(which --skip-alias cmus)" 2> /dev/null
abbr --add y 'ytfzf --detach --video-pref="bestvideo[height<=?1080]"'
abbr --add n 'cd ~/.newsboat; newsboat'
tmux new-session -s newsboat -d "$(which --skip-alias newsboat)" 2> /dev/null
abbr --add p 'podboat -a'
tmux new-session -s podboat -d "$(which --skip-alias podboat)" 2> /dev/null
abbr --add ym --set-cursor 'yt-dlp -x --audio-format mp3 "%"'
abbr --add sp --set-cursor 'spotdl "%"'
abbr --add z --set-cursor 'zathura % &'
abbr --add py 'source ~/.local/pip/venvs/env1/bin/activate.fish'
abbr --add pyr 'source ~/.local/pip/venvs/env1/bin/activate.fish ; python'
abbr --add i 'scli'
tmux new-session -s scli -d "$(which --skip-alias scli)" 2> /dev/null
abbr --add sf 'source ~/.config/fish/config.fish'
abbr --add st 'tmux source ~/.tmux.conf'
abbr --add l 'clear'

abbr --add bs 'bluetoothctl connect AC:BF:71:11:0B:24' 
abbr --add be 'bluetoothctl connect B4:1A:1D:DE:1A:FE' 
abbr --add bh 'bluetoothctl connect 14:3F:A6:A7:B9:73' 
abbr --add bsd 'bluetoothctl disconnect AC:BF:71:11:0B:24' 
abbr --add bed 'bluetoothctl disconnect B4:1A:1D:DE:1A:FE' 
abbr --add bhd 'bluetoothctl disconnect 14:3F:A6:A7:B9:73' 

abbr --add rgf "rg --files | rg"

source /home/david/.config/fish/path.fish

set -Ux EDITOR nvim
set -Ux VISUAL nvim
#set -Ux TERM screen-256color

function r
    set tmp (mktemp)
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path=$tmp $argv
    if test -f "$tmp"
        set dir (cat $tmp)
        rm -f $tmp
        if test -d "$dir"
            if test "$dir" != (pwd)
                cd $dir
            end
        end
    end
end

function run_python
    if test (count $argv) -eq 0
        echo "Usage: run_python <filename>"
        return 1
    end

    set filename $argv[1]
    set command "python3 $filename 2>&1 | pygmentize -l pytb"

    eval $command
end

function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status red

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix '>'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    # Write pipestatus
    # If the status was carried over (if no command is issued or if `set` leaves the status untouched), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    echo -n -s (prompt_login)' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) $normal " "$prompt_status \n $suffix " "
end

if status is-interactive
and not set -q TMUX
    exec tmux new -s main
end

# Created by `pipx` on 2023-09-07 01:09:04
set PATH $PATH /home/david/.local/bin
