alias grep="grep --color"
alias open="open 2> /dev/null"

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

if [[ $(uname) == "Darwin" ]]; then
	alias gvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"	
	alias octave="octave -W"
	export PATH="/usr/local/opt/bison/bin:$PATH"
fi
export PATH="$HOME/.local/bin:$PATH"

alias py="python3"

if [[ $MY_LOCAL_MACHINE == true ]]; then
	alias vi="nvim"
	alias fd="fdfind"
fi
