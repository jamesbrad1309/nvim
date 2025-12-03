return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
		options = {
			offsets = {
				{
					filetype = "snacks_layout_box",
					text = "󰙅  File Explorer",
					separator = true,
				},
			},
			animation = true,
			mode = "buffers",
			indicator = {
				style = "underline",
			},
			separator_style = "thin",
			diagnostics = "nvim_lsp",
		},
	},
}
