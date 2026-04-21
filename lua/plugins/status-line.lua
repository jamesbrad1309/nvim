return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icon_enabled = true,
			theme = "solarized",
			section_separators = { left = " ", right = " " },
			component_separators = { left = "", right = "" },
			disabled_filetypes = {},
		},
		sections = {
			lualine_a = {
				function()
					return ""
				end,
			},
			lualine_b = {
				{
					"filename",
					file_status = true, -- displays file status (readonly status, modified status)
					path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
				},
			},
			lualine_c = {
				"filetype",
				function()
					local total_lines = vim.fn.line("$")
					if total_lines == 1 then
						return "1 line"
					else
						return total_lines .. " lines"
					end
				end,
				"diff",
				"searchcount",
			},
			lualine_x = {
				{
					"diagnostics",
					sources = { "nvim_diagnostic" },
					symbols = {
						error = " ",
						warn = " ",
						info = " ",
						hint = " ",
					},
				},
				"encoding",
				"filesize",
				"progress",
				"location",
			},
			lualine_y = { "branch" },
			lualine_z = { "mode" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {
				{
					"filename",
					file_status = true, -- displays file status (readonly status, modified status)
					path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
				},
			},
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		extensions = { "fugitive" },
	},
}
