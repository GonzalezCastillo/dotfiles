# BE CAREFUL: this script will overwrite your files and settings.

DOTFILES=~/repos/dotfiles

ln -s -f $DOTFILES/vimrc ~/.vimrc
ln -s -f $DOTFILES/gvimrc ~/.gvimrc
if [[ -e ~/.vim ]]; then
	rm -rf ~/.vim
fi
ln -s $DOTFILES/vim ~/.vim

ln -s -f $DOTFILES/zshrc ~/.zshrc
ln -s -f $DOTFILES/zshenv ~/.zshenv
if [[ -e ~/.zsh ]]; then
	rm -rf ~/.zsh
fi
ln -s $DOTFILES/zsh ~/.zsh

TEXMFDIR=~/texmf

ln -s -f $DOTFILES/latexmkrc ~/.latexmkrc
if [[ -e $TEXMFDIR ]]; then
	rm -rf $TEXMFDIR
fi
ln -s $DOTFILES/sgctex/texmf $TEXMFDIR

