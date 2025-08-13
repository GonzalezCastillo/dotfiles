alias grep="grep --color"
alias open="open 2> /dev/null"

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

export PATH="$HOME/.local/bin:$PATH"

alias py="~/.py/bin/python"
alias pip="~/.py/bin/pip"

if [[ $MY_LOCAL_MACHINE == true ]]; then
	alias vi="nvim"
	alias fd="fdfind"
fi
