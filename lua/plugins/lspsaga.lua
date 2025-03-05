return {
	"nvimdev/lspsaga.nvim",
	event = "BufRead",
  opts = {
			lightbulb = {
				enable = false
			}
  },
	dependencies = {

		"nvim-tree/nvim-web-devicons",
    "williamboman/mason-lspconfig.nvim"
	}
}
