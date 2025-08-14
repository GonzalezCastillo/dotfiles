vim.g.mapleader = " "

-- Packages

local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- Telescope & dependencies
Plug('nvim-lua/plenary.nvim')
Plug('BurntSushi/ripgrep', {['tag'] = '14.1.1'})
Plug('sharkdp/fd')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

-- LSP
Plug('neovim/nvim-lspconfig', { ['tag'] = 'v2.4.0'})
Plug('mason-org/mason.nvim', { ['tag'] = 'v2.0.1'})
Plug('saghen/blink.cmp', { ['tag'] = 'v1.6.0' })

-- Vim plugins
Plug('vim-latex/vim-latex')
Plug('preservim/nerdtree')
Plug('alvan/vim-closetag')
vim.call('plug#end')

-- Load settings from vimrc
vim.cmd('so ~/.vimrc')


