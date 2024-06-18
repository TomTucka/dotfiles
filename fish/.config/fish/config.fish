# ~/.config/fish/config.fish
source ~/.config/fish/conf.d/variables.fish
source ~/.config/fish/conf.d/abbr.fish

starship init fish | source

set -U fish_user_paths /Users/tom/.local/bin $fish_user_paths
set -U fish_user_paths $HOME/.tmux/plugins/tmuxifier/bin $fish_user_paths


eval (tmuxifier init - fish)


