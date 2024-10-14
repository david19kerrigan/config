if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

bind -M insert \cn down-or-search
bind -M insert \cp up-or-search
bind -M insert \cF accept-autosuggestion

set -g fish_prompt_pwd_dir_length 0

set GPG_TTY $(tty)
#set -Ux TERM screen-256color

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

source ~/.config/fish/abbr.fish
source ~/.config/fish/prompt.fish
source ~/.config/fish/vars.fish
source ~/.config/fish/func.fish
