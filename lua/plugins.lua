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
		end
	},
	"nvim-treesitter/nvim-treesitter",
	{
		"nvimdev/lspsaga.nvim",
		event = "BufRead",
		config = function()
			require("lspsaga").setup({})
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
		'b3nj5m1n/kommentary',
		opts = {}
	}
}
