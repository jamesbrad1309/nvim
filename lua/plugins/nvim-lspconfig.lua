local on_attach = function(_, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "gd", '<cmd>Lspsaga goto_definition<CR>', opts)
	vim.keymap.set("n", "K", '<cmd>Lspsaga hover_doc<CR>', opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "ff", vim.lsp.buf.format, opts)

	vim.keymap.set("n", "<M-p>", '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
	vim.keymap.set("n", "<M-t>", '<cmd>Lspsaga peek_type_definition<CR>', opts)
	vim.keymap.set("n", "<M-u>", '<cmd>Lspsaga finder<CR>', opts)
	vim.keymap.set("n", "<leader>.", '<cmd>Lspsaga code_action<CR>', opts)
	vim.keymap.set("n", "<leader>7", '<cmd>Lspsaga outline<CR>', opts)
	vim.keymap.set("n", "<leader>rn", '<cmd>Lspsaga rename<CR>', opts)
end

return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		{ "ms-jpq/coq_nvim",       branch = "coq" },
		{ "ms-jpq/coq.artifacts",  branch = "artifacts" },
		{ "ms-jpq/coq.thirdparty", branch = "3p" }
	},
	init = function()
		vim.g.coq_settings = {
			auto_start = true,
		}

    require("mason-lspconfig").setup_handlers({
      function(server_name)
        local genericSettings = {
          on_attach = on_attach,
        }
        require('lspconfig')[server_name].setup({ on_attach = on_attach })
      end,
    })

	end,
	opt = {
		inlay_hints = { enabled = true }
	}
}
