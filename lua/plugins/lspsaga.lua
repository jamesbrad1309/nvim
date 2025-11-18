local opts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

vim.keymap.set("n", "pe", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
-- vim.keymap.set("n", "<M-t>", '<cmd>Lspsaga peek_type_definition<CR>', opts)
-- vim.keymap.set("n", "<M-u>", '<cmd>Lspsaga finder<CR>', opts)
vim.keymap.set("n", "<leader>.", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "<leader>7", "<cmd>Lspsaga outline<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "ff", vim.lsp.buf.format, opts)
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format()
	end,
})

return {
	"nvimdev/lspsaga.nvim",
	event = "BufRead",
	opts = {
		lightbulb = {
			enable = false,
		},
		ui = {
			border = "rounded",
			kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
		},
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"williamboman/mason-lspconfig.nvim",
	},
}
