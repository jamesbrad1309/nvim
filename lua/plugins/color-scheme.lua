return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato", -- latte, frappe, macchiato, mocha
			transparent_background = true,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
	dependencies = {
		"tjdevries/colorbuddy.nvim",
	},
}
