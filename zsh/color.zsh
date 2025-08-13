typeset -A PT FT FG BG

# Define a palette (PT) of colours matching that of the Solarized-256 scheme.
# Colours extracted from https://github.com/altercation/vim-colors-solarized
PT=(
	yellow	136
	orange	166
	red		160
	magenta	125
	violet	061
	blue	033
	cyan	037
	green	064
)

# Define a hash table with the usual formatting (FT) options.
FT=(
	reset		"%{[00m%}"
	bold		"%{[01m%}"
	underline	"%{[04m%}"
)

# With the colours in the palette, define some hash tables with "switches" for 
# both foreground and background.
for color in {yelow,orange,red,magenta,violet,blue,cyan,green}; do
	FG[$color]="%{[38;5;$PT[$color]m%}"
	BG[$color]="%{[48;5;$PT[$color]m%}"
done


function draw_palette()
{
	for color in {yellow,orange,red,magenta,violet,blue,cyan,green}; do
		print -P $FG[$color]$color%f $BG[$color]$color $FT[reset];
	done
}

# Use a different prompt symbol in remote servers.
if $MY_LOCAL_MACHINE; then
	PROMPT_SYMBOL="$FT[bold]$FG[violet]>$FT[reset]%f"
else
	PROMPT_SYMBOL="$FT[bold]$FG[blue]>$FT[reset]%f"
fi

function GET_PROMPT() {

	GIT_BRANCH=""

	if [[ true == "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ]]; then
		GIT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
		GIT_BRANCH="$FT[bold]$FG[magenta]$GIT_BRANCH$FT[reset]%f ";
	fi

	if [[ $(pwd) == $HOME ]]; then
		CURRENT_DIR="~"
	else
		CURRENT_DIR="%1d"
	fi
	CURRENT_DIR=$FG[orange]$FT[bold]$CURRENT_DIR$FT[reset]%f

	echo "$GIT_BRANCH$CURRENT_DIR $PROMPT_SYMBOL "
}

setopt prompt_subst # Allow substitution of functions in prompt.
PROMPT='$(GET_PROMPT)' # Single quotes preserve the literal value.

# Get coloured output for lists.
alias ls="ls --color"
export LS_COLORS="di=1;36:ln=0;31:ex=0;45"

# Load the syntax highlighting plug-in.
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=$PT[yellow],bold #,standout
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=$PT[yellow]
ZSH_HIGHLIGHT_STYLES[commandseparator]=none

ZSH_HIGHLIGHT_STYLES[alias]=fg=$PT[green],bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=$PT[green],bold
ZSH_HIGHLIGHT_STYLES[function]=fg=$PT[green],bold
ZSH_HIGHLIGHT_STYLES[command]=fg=$PT[green],bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=$PT[green],underline
ZSH_HIGHLIGHT_STYLES[assign]=fg=$PT[green]

ZSH_HIGHLIGHT_STYLES[path]=fg=$PT[orange],underline
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=$PT[orange]
ZSH_HIGHLIGHT_STYLES[globbing]=$PT[yellow]

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=$PT[blue],bold
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=$PT[magenta],bold

ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[history-expansion]=none

ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=$PT[cyan]
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=$PT[cyan]
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=$PT[cyan]
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=$PT[cyan]

ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=$PT[red]
ZSH_HIGHLIGHT_STYLES[comment]=fg=240
ZSH_HIGHLIGHT_STYLES[default]=none

ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=$PT[blue],bold
ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=$PT[magenta],bold
ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=$PT[yellow],bold
ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=$PT[green],bold

