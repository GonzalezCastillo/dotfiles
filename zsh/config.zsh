setopt interactivecomments # Allow comments in interactive shell.

# Improve history navigation.
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

export EDITOR=vim
export GPG_TTY=$(tty) # Git signing.

MY_LOCAL_MACHINE=false;

if [[ -z $SSH_TTY ]]; then
	MY_LOCAL_MACHINE=true;
fi

if [[ $MY_LOCAL_MACHINE ]]; then
	setopt ignoreeof # Don't logout with Control-D.
	DocRoot=~/Cloud
fi

unsetopt CASE_GLOB # We don't want zsh to be case sensitive.

RepoRoot=~/repos

