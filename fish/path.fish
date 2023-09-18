set -U fish_user_paths /home/david/go/bin $fish_user_paths
set -U fish_user_paths /sbin $fish_user_paths

alias poweroff "sudo poweroff"
alias suspend "sudo systemctl suspend"
alias yuzu-mem "sudo sysctl -w vm.max_map_count=262144"
