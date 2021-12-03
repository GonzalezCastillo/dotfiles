setopt interactivecomments # Allow comments in interactive shell.

# Improve history navigation.
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

export EDITOR=vim
export GPG_TTY=$(tty)

alias grep='grep --color'
alias cp='cp -i'
alias mv='mv -i'

MY_LOCAL_MACHINE=false;

if [[ $(hostname) =~ SDEV-.+\.local ]]; then
	MY_LOCAL_MACHINE=true;
fi

if ${MY_LOCAL_MACHINE}; then
	setopt ignoreeof # Don't logout with Control-D.
	unsetopt CASE_GLOB # We don't want zsh to be case sensitive.
	DocRoot=~/icloud
fi

RepoRoot=~/repos
