alias grep='grep --color'

alias cp="cp -i"
alias mv="mv -i"


if [[ MY_LOCAL_MACHINE ]]; then
	alias gvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"	
	alias octave="octave -W"
	alias wolfram="wolframscript"
	export PATH="/usr/local/opt/bison/bin:$PATH"
fi

alias py="python3"

