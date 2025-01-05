vim.g.mapleader = " "

-- Packages

local Plug = vim.fn['plug#']
vim.call('plug#begin')
-- Telescope & dependencies
Plug('nvim-lua/plenary.nvim')
Plug('BurntSushi/ripgrep', {['tag'] = '14.1.1'})
Plug('sharkdp/fd')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
-- Treesitter
Plug('nvim-treesitter/nvim-treesitter', { ['tag'] = 'v0.7.2', ['do'] = ':TSUpdate'})
Plug('lewis6991/spellsitter.nvim')
-- LSP
Plug('neovim/nvim-lspconfig', { ['tag'] = 'v0.1.6'})
Plug('williamboman/mason.nvim', { ['tag'] = 'v1.10.0'})
-- Copilot
Plug('github/copilot.vim')
-- Vim plugins
Plug('vim-latex/vim-latex')
Plug('preservim/nerdtree')
Plug('alvan/vim-closetag')
vim.call('plug#end')

vim.g.copilot_enabled = 0

-- Load settings from vimrc
vim.cmd('so ~/.vimrc')



