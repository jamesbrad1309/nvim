return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{
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
		end,
		opt = {
			inlay_hints = { enabled = true }
		}
	},
	"nvim-treesitter/nvim-treesitter",
	{
		"nvimdev/lspsaga.nvim",
		event = "BufRead",
		config = function()
			require("lspsaga").setup({
				lightbulb = {
					enable = false
				}
			})
		end,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		}
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"svrana/neosolarized.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("neosolarized").setup({
				comment_italics = true,
				background_set = false,
			})
			vim.cmd.colorscheme("neosolarized")
		end,
		dependencies = {
			"tjdevries/colorbuddy.nvim",
		},
	},
	{
		"karb94/neoscroll.nvim",
		opts = {},
	},
	{
		'smoka7/hop.nvim',
		version = "*",
		opts = {
			keys = 'etovxqpdygfblzhckisuran'
		}
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
		"sphamba/smear-cursor.nvim",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {}
	},
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		}
	},
	{
		"gelguy/wilder.nvim",
	},
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup()
		end,
		event = { "CmdlineEnter" },
		ft = { "go", 'gomod' },
		build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
	},
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{
				";c",
				":LazyGit<Return>",
				silent = true,
				noremap = true,
			},
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod",                     lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			-- Your DBUI configuration
			vim.g.db_ui_use_nerd_fonts = 1
		end,
		keys = {
			{

				"<leader>d",
				"<cmd>NvimTreeClose<cr><cmd>tabnew<cr><bar><bar><cmd>DBUI<cr>",
			},
		},
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 5000,
			background_colour = "#000000",
			render = "wrapped-compact",
		},
	},
	{
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
	},
	{
		"b0o/incline.nvim",
		dependencies = {},
		event = "BufReadPre",
		priority = 1200,
		config = function()
			local helpers = require("incline.helpers")
			require("incline").setup({
				window = {
					padding = 0,
					margin = { horizontal = 0 },
				},
				render = function(props)
					local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
					local modified = vim.bo[props.buf].modified
					local buffer = {
						ft_icon and
						{
							" ",
							ft_icon,
							" ",
							guibg = ft_color,
							guifg = helpers.contrast_color(
								ft_color)
						}
						or "",
						" ",
						{ filename, gui = modified and "bold,italic" or "bold" },
						" ",
						guibg = "#363944",
					}
					return buffer
				end,
			})
		end,
	},
}
