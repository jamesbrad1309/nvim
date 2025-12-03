return {
	"folke/snacks.nvim",
	lazy = false,
	opts = {
		dashboard = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		input = {
			enable = true,
		},
		lazygit = {
			enable = true,
		},
		scroll = {
			enable = true,
		},
		image = {
			enable = true,
		},
		notify = {
			enable = true,
		},
		notifier = {
			enable = true,
		},
		picker = {
			enable = true,
			hidden = true,
			ignored = true,
			sources = {
				files = {
					hidden = true,
				},
			},
		},
		terminal = {
			enable = true,
		},
		words = {
			enable = true,
		},
	},
	keys = {
		{
			"<leader>t",
			function()
				Snacks.terminal.toggle()
			end,
			desc = "Terminal",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		{
			"<leader>n",
			function()
				Snacks.picker.notifications()
			end,
			desc = "Notification History",
		},
		{
			"<leader>fch",
			function()
				Snacks.picker.command_history()
			end,
			desc = "Command History",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>fsm",
			function()
				Snacks.picker.smart()
			end,
			desc = "[S]mart Find Files",
		},
		--find
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "[B]uffers",
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fp",
			function()
				Snacks.picker.projects()
			end,
			desc = "Projects",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent",
		},
		-- git
		{
			"<leader>gb",
			function()
				Snacks.picker.git_branches()
			end,
			desc = "Git Branches",
		},
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "Git Status",
		},
		-- LSP
		{
			"pu",
			function()
				Snacks.picker.lsp_references()
			end,
			desc = "[P]eek LSP References",
		},
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			desc = "Goto Declaration",
		},
		{
			"gI",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "Goto Implementation",
		},
		{
			"gy",
			function()
				Snacks.picker.lsp_type_definitions()
			end,
			desc = "Goto T[y]pe Definition",
		},
		{
			"pi",
			function()
				Snacks.picker.lsp_incoming_calls()
			end,
			desc = "[P]eek Calls Incoming",
		},
		{
			"po",
			function()
				Snacks.picker.lsp_outgoing_calls()
			end,
			desc = "[P]eek Calls Outgoing",
		},
		{
			"<leader>fsb",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},
		{
			"<leader>fSb",
			function()
				Snacks.picker.lsp_workspace_symbols()
			end,
			desc = "LSP Workspace Symbols",
		},
		-- Others
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},
	},
}
