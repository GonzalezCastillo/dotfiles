setopt interactivecomments # Allow comments in interactive shell.

bindkey -e

# Improve history navigation.
HISTFILE=~/.zsh_history        # File where history is saved
HISTSIZE=10000                 # Number of commands to keep in memory
SAVEHIST=10000                 # Number of commands to save to file
setopt inc_append_history      # Save each command to history immediately
setopt share_history           # Share history across terminals
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "$terminfo[kcuu1]" history-beginning-search-backward-end
bindkey "$terminfo[kcud1]" history-beginning-search-forward-end
bindkey -M emacs '^[[A' history-beginning-search-backward-end
bindkey -M emacs '^[[B' history-beginning-search-forward-end
bindkey -M emacs '^[OA' history-beginning-search-backward-end
bindkey -M emacs '^[OB' history-beginning-search-forward-end
bindkey -M emacs '^[[1;2D' backward-word
bindkey -M emacs '^[[1;2C' forward-word

source ~/.zsh/color.zsh
if [[ $MY_LOCAL_MACHINE == true ]]; then
    export PATH="$(brew --prefix rustup)/bin:$PATH"
fi
