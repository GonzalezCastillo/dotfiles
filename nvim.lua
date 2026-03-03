vim.g.mapleader = " "

-- Packages

local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- Telescope & dependencies
Plug('nvim-lua/plenary.nvim')
Plug('BurntSushi/ripgrep', {['tag'] = '14.1.1'})
Plug('sharkdp/fd')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

-- Vim plugins
Plug('vim-latex/vim-latex')
Plug('preservim/nerdtree')
Plug('alvan/vim-closetag')
Plug('jiangmiao/auto-pairs')
vim.call('plug#end')

-- Load settings from vimrc
vim.cmd('so ~/.vimrc')


