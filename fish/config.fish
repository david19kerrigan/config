if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
bind -M insert \cn down-or-search
bind -M insert \cp up-or-search
bind -M insert \cD accept-autosuggestion
set -g fish_prompt_pwd_dir_length 0

alias v nvim
abbr --add killi 'docker rm -f (docker ps -aq)'
abbr --add killc 'docker rmi -f (docker images -aq)'
alias fzo 'nvim (fzf --preview "bat -n --color=always {}")'
alias fzp 'fzf --preview "bat -n --color=always {}"'
alias fzc 'cd (fzf --preview "bat -n --color=always {}" | awk -F/ "NF{NF--};1" OFS=/)'
alias fzd 'cd $(find . -type d -print | fzf)'
abbr --add gp 'git add --all; git commit -a -m "auto commit"; git push'
abbr --add gpu 'git pull'
abbr --add t 'termdown --no-figlet'
abbr --add x 'exit'

source /home/david/.config/fish/path.fish

set -Ux EDITOR nvim
set -Ux VISUAL nvim
#set -Ux TERM screen-256color

function r
    set tmp (mktemp)
    lf -last-dir-path=$tmp $argv
    if [ -f $tmp ]
        set dir (cat $tmp)
        rm -f $tmp
        [ -d $dir ]; and [ $dir != (pwd) ]; and cd $dir
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

function lat
    lualatex *.tex
    zathura *.pdf
end

abbr --add rgf "rg --files | rg"

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
    exec tmux
end
