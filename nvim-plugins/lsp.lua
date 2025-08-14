require("mason").setup{}

local on_attach = function(client, bufnr)
	local opts = { remap=false, buffer=bufnr }
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	--vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.hover() end, opts)	
	--vim.keymap.set("n", "<leader>rnm", function() vim.lsp.buf.rename() end, opts)	
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
end

require('lspconfig').clangd.setup{
	on_attach = on_attach,
	 capabilities = {
		offsetEncoding = { "utf-16" }
	 },
	 cmd = { "clangd" }
}

require('lspconfig').pylsp.setup{
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					enabled = false
				}
			}
		}
	}
}

require('lspconfig').rust_analyzer.setup {
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				disabled = { "non_snake_case" },
			},
		},
	},
}

require('blink.cmp').setup({
	keyword = { range = "full"},
	completion = {
		accept = { auto_brackets = { enabled = true } },
		documentation = { auto_show = true, auto_show_delay_ms = 200 },
		ghost_text = { enabled = true },
	},
	sources = {
		default = { "lsp", "path" },
	},
	keymap = { preset = "enter" },
	signature = { enabled = true },
})

