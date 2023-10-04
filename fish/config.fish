if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

bind -M insert \cn down-or-search
bind -M insert \cp up-or-search
bind -M insert \cF accept-autosuggestion

set -g fish_prompt_pwd_dir_length 0

set -Ux EDITOR nvim
set -Ux VISUAL nvim

set GPG_TTY $(tty)
#set -Ux TERM screen-256color

# tmux it up
if status is-interactive
	and not set -q TMUX
		tmux new-session -s aerc -d "fish" && tmux send-keys "aerc" ENTER
		tmux new-session -s notes -d "fish" && tmux send-keys "cd ~/Documents/notes && nvim index.md" ENTER
		tmux new-session -s softwarecashmoney -d "fish" && tmux send-keys "cd ~/Documents/softwarecashmoney && nvim index.md" ENTER
		tmux new-session -s scli -d "fish" && tmux send-keys "scli" ENTER
		tmux new-session -s cmus -d "fish" && tmux send-keys "cmus" ENTER
		tmux new-session -s newsboat -d "fish" && tmux send-keys "newsboat" ENTER
		tmux new-session -s podboat -d "fish" && tmux send-keys "podboat" ENTER
		tmux new-session -s weechat -d "fish" && tmux send-keys "weechat" ENTER
		exec tmux new -s main 
end

source ~/.config/fish/abbr.fish
source ~/.config/fish/prompt.fish
source ~/.config/fish/vars.fish
source ~/.config/fish/func.fish
