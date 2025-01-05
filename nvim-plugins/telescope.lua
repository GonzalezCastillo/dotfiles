local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>git', builtin.git_status, { desc = 'Telescope git status' })
vim.keymap.set('n', '<leader>re', builtin.lsp_references, { desc = 'Telescope LSP references for selection' })
vim.keymap.set('n', '<leader>ws', builtin.lsp_workspace_symbols, { desc = 'Telescope LSP workspace symbols' })
vim.keymap.set('n', '<leader>di', builtin.diagnostics, { desc = 'Telescope LSP Diagnostics' })

