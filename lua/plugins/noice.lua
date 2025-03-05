return {
	"folke/noice.nvim",
	opts = function(_, opts)
		local focused = true
		vim.api.nvim_create_autocmd("FocusGained", {
			callback = function()
				focused = true
			end,
		})
		vim.api.nvim_create_autocmd("FocusLost", {
			callback = function()
				focused = false
			end,
		})

		opts.commands = {
			all = {
				-- options for the message history that you get with `:Noice`
				view = "split",
				opts = { enter = true, format = "details" },
				filter = {},
			},
		}
	end,
}
