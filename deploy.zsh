# BE CAREFUL: this script will overwrite your files and settings.

DOTFILES=~/repos/dotfiles

ln -s -i $DOTFILES/vimrc ~/.vimrc
ln -s -i $DOTFILES/gvimrc ~/.gvimrc
ln -s -i $DOTFILES/vim ~/.vim

ln -s -i $DOTFILES/zshrc ~/.zshrc
ln -s -i $DOTFILES/zshenv ~/.zshenv
ln -s -i $DOTFILES/zsh ~/.zsh

ln -s -i $DOTFILES/latexmkrc ~/.latexmkrc

if [[ ! -d ~/.rbin ]]; then
	mkdir ~/.rbin
fi

