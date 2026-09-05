return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		spec = {
			{ "<leader>f", group = "find", icon = " " },
			{ "<leader>g", group = "git", icon = " " },
			{ "<leader>u", group = "ui", icon = "󰙵 " },
			{ "<leader>s", group = "search", icon = " " },
			{ "<leader>R", group = "request", icon = "󰖟 " },
			{ "<leader>c", group = "code", icon = " " },
			{ "<leader>r", group = "rename/reload", icon = "󰑕 " },
			{ "<leader>d", group = "database", icon = "󰆼 " },
			{ "<leader>m", group = "mermaid", icon = "🧜 " },
			{ "<leader>w", group = "window", icon = "🪟 " },
			{ "g", group = "goto", icon = "󰘧 " },
			{ "<leader>p", group = "peek", icon = " " },
			{ "[", group = "Previous...", icon = " " },
			{ "]", group = "Next...", icon = " " },
		},
		win = {
			border = "rounded",
			no_overlap = true,
			padding = { 1, 2 },
			title = true,
			title_pos = "center",
		},
		plugins = {
			marks = true,
			registers = true,
			spelling = {
				enabled = true,
				suggestions = 20,
			},
			presets = {
				operators = true,
				motions = true,
				text_objects = true,
				windows = true,
				nav = true,
				z = true,
				g = true,
			},
		},
		icons = {
			breadcrumb = "»",
			separator = "➜",
			group = "+",
		},
		layout = {
			spacing = 6,
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
		{ "<leader>", mode = { "n", "v" } },
		{ "g", mode = { "n", "v" } },
		{ "[", mode = { "n", "v" } },
		{ "]", mode = { "n", "v" } },
	},
}
