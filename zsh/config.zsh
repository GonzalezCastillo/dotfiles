export EDITOR=vim
export GPG_TTY=$(tty) # Git signing.

MY_LOCAL_MACHINE=false;

if [[ -z $SSH_TTY ]]; then
	MY_LOCAL_MACHINE=true;
fi

if [[ $MY_LOCAL_MACHINE == true ]]; then
	setopt ignoreeof # Don't logout with Control-D.
	DocRoot=~/Cloud
	export EDITOR=nvim
fi

unsetopt CASE_GLOB # We don't want zsh to be case sensitive.

RepoRoot=~/repos

