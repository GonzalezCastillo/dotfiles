# BE CAREFUL: this script will overwrite your files and settings.

DOTFILES=~/repos/dotfiles

ln -s -f $DOTFILES/vimrc ~/.vimrc
ln -s -f $DOTFILES/gvimrc ~/.gvimrc
if [[ -d ~/.vim ]]; then
	rm ~/.vim
fi
ln -s $DOTFILES/vim ~/.vim

ln -s -f $DOTFILES/zshrc ~/.zshrc
ln -s -f $DOTFILES/zshenv ~/.zshenv
if [[ -d ~/.zsh ]]; then
	rm ~/.zsh
fi
ln -s $DOTFILES/zsh ~/.zsh

if [[ $(hostname) =~ SGC-[0-9]+\.local ]]; then
	TEXMFDIR=~/Library/texmf
else
	TEXMFDIR=~/texmf
fi

ln -s -f $DOTFILES/latexmkrc ~/.latexmkrc
if [[ -d $TEXMFDIR ]]; then
	rm $TEXMFDIR
fi
ln -s $DOTFILES/tex/texmf $TEXMFDIR

if [[ ! -d ~/.rbin ]]; then
	mkdir ~/.rbin
fi

