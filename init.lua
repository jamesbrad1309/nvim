require("config.nvim")

require("config.lazy")

require("config.mason")

require("config.telescope")

require("config.hop")

require("nvim-treesitter.configs").setup({
	ensure_installed= {"lua", "vim", "vimdoc", "javascript", "typescript", "html", "python", "go", "markdown"},
	sync_install = false,
	auto_install = true,
	highlight = { enable = true},
	indent = { enable = true },
})

