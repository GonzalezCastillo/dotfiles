#!/bin/zsh

# BE CAREFUL: this script will overwrite your files and settings.

DOTFILES=~/repos/dotfiles

clear_link() {
	if [[ -e $2 ]]; then
		rm -rf $2
	fi
	ln -s -f $1 $2
}

clear_link $DOTFILES/vimrc ~/.vimrc
clear_link $DOTFILES/gvimrc ~/.gvimrc
clear_link $DOTFILES/vim ~/.vim

clear_link $DOTFILES/zshrc ~/.zshrc
clear_link $DOTFILES/zshenv ~/.zshenv
clear_link $DOTFILES/zsh ~/.zsh

TEXMFDIR=~/texmf

clear_link $DOTFILES/latexmkrc ~/.latexmkrc
clear_link $DOTFILES/sgctex/texmf $TEXMFDIR

