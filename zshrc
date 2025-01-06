setopt interactivecomments # Allow comments in interactive shell.

# Improve history navigation.
HISTFILE=~/.zsh_history        # File where history is saved
HISTSIZE=10000                 # Number of commands to keep in memory
SAVEHIST=10000                 # Number of commands to save to file
setopt inc_append_history      # Save each command to history immediately
setopt share_history           # Share history across terminals
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

source ~/.zsh/color.zsh
