return {
	"lewis6991/gitsigns.nvim",
	opts = {
		current_line_blame = true,
		current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		signs_staged = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
	},
}
