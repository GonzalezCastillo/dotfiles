# My dotfiles

These are my dotfiles. I don't recommend installing them on your computer unless you are me `;-)`.

## Installation

These dotfiles can be installed running the `./deploy.zsh` script, which symlinks all the dotfiles to this repository (overwriting any existing files). This repository must be cloned into the directory `~/repos/dotfiles`, but a different location may be used by changing the value of the `DOTFILES` variable in `deploy.zsh`.

The flag `-nvim` may be used to set up the Neovim environment. It will install vim-plug and some LSP servers with `mason.nvim`.

An additional file `~/.custom_config.zsh` can be created to include machine-specific settings.

## KDE

The `./kde` directory contains configuration files for KDE Plasma and other GUI programs. These files can be installed using the `./kde/deploy.zsh` script, which also applies additional settings.
