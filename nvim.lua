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
Plug('folke/zen-mode.nvim')
vim.call('plug#end')

vim.api.nvim_create_user_command("Zen", function()
	require("zen-mode").toggle({
		window = {
			backdrop = 1,
			width = 90,
		},
		plugins = {
		    kitty = {
				enabled = true,
				font = "+1",
			}
		},
	})
	vim.wo.number = false
	vim.wo.relativenumber = false
	vim.cmd.colorscheme("solarized8")
end, {})

-- Load settings from vimrc
vim.cmd('so ~/.vimrc')


