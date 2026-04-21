return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "javascript",
      "typescript",
      "html",
      "python",
      "go",
      "markdown",
      "http",
      "json",
      "xml",
    },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
