#!/bin/zsh

# BE CAREFUL: this script will overwrite your files and settings.

deploy_nvim=0

# Loop through arguments
for arg in "$@"; do
	if [[ "$arg" == "-nvim" ]]; then
		deploy_nvim=1
		break
	fi
done


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

if [[ $deploy_nvim -eq 1 ]]; then
	NVIMDIR=~/.config/nvim

	# Install vim-plug for neovim
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	# Deploy NVIM files
	mkdir -p $NVIMDIR/after
	clear_link $DOTFILES/nvim.lua $NVIMDIR/init.lua
	clear_link $DOTFILES/vim/colors $NVIMDIR/colors
	clear_link $DOTFILES/vim/spell $NVIMDIR/spell
	nvim --headless +PlugInstall +qall # Install packages
	nvim --headless -c "MasonInstall clangd python-lsp-server" -c "qall"
	clear_link $DOTFILES/nvim-plugins $NVIMDIR/after/plugin
	clear_link $DOTFILES/vim/ftdetect $NVIMDIR/ftdetect
	clear_link $DOTFILES/vim/syntax $NVIMDIR/syntax
	
fi
