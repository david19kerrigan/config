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

# tmux it up
if status is-interactive
	and not set -q TMUX
		exec tmux new -s main 
end

source ~/.config/fish/abbr.fish
source ~/.config/fish/prompt.fish
source ~/.config/fish/vars.fish
source ~/.config/fish/func.fish
