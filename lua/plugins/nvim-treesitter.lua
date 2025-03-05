return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "javascript", "typescript", "html", "python", "go", "markdown" },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  }
}
