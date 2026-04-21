local opts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- peek error
vim.keymap.set("n", "pe", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

-- vim.keymap.set("n", "<M-t>", '<cmd>Lspsaga peek_type_definition<CR>', opts)
-- vim.keymap.set("n", "<M-u>", '<cmd>Lspsaga finder<CR>', opts)
vim.keymap.set("n", "<leader>.", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "<leader>7", "<cmd>Lspsaga outline<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "ff", vim.lsp.buf.format, opts)
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<c-j>", ":m+1<CR>==", opts)
vim.keymap.set("n", "<c-k>", ":m-2<CR>==", opts)
vim.keymap.set("v", "<c-j>", ":m'>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<c-k>", ":m'<-2<CR>gv=gv", opts)

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
		ui = {},
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"williamboman/mason-lspconfig.nvim",
	},
}
