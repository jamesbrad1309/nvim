local opts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set("n", "K", '<cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set("n", "gd", '<cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

vim.keymap.set("n", "<M-e>", '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
-- vim.keymap.set("n", "<M-t>", '<cmd>Lspsaga peek_type_definition<CR>', opts)
-- vim.keymap.set("n", "<M-u>", '<cmd>Lspsaga finder<CR>', opts)
vim.keymap.set("n", "<leader>.", '<cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set("n", "<leader>7", '<cmd>Lspsaga outline<CR>', opts)
vim.keymap.set("n", "<leader>rn", '<cmd>Lspsaga rename<CR>', opts)

return {
	"nvimdev/lspsaga.nvim",
	event = "BufRead",
  opts = {
			lightbulb = {
				enable = false
			},
      ui = {
        border = "rounded",
        kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
      },
  },
	dependencies = {
		"nvim-tree/nvim-web-devicons",
    "williamboman/mason-lspconfig.nvim"
	}
}
