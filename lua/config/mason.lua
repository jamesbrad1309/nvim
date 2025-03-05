require("mason").setup()

require("mason-lspconfig").setup({
	automatic_installation = true
})


local lspconfig = require("lspconfig")
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

require('go').setup {
	lsp_cfg = false
}
local cfg = require 'go.lsp'.config() -- config() return the go.nvim gopls setup
local lspConfig = require("lspconfig")
lspConfig.gopls.setup(cfg)

require("mason-lspconfig").setup_handlers({
	function(server_name)
		local genericSettings = {
			on_attach = on_attach,
		}

		if server_name == "ts_ls" then
			print(server_name)
			local setting = genericSettings
			setting.settings = {}
			setting.settings.typescript = {
				inlayHints = {
					includeInlayParameterNameHints = "literal",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = false,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			}
			setting.settings.javascript = {
				inlayHints = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				}
			}
		end
		lspconfig[server_name].setup(genericSettings)
	end,
})
