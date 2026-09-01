local ensure_installed = {
  "lua",
  "vim",
  "vimdoc",
  "javascript",
  "typescript",
  "tsx",
  "bash",
  "html",
  "css",
  "scss",
  "python",
  "go",
  "gomod",
  "gosum",
  "gowork",
  "markdown",
  "markdown_inline",
  "query",
  "regex",
  "http",
  "json",
  "xml",
  "prisma",
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter").install(ensure_installed)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function()
        local ok = pcall(vim.treesitter.start)
        if not ok then
          return
        end
      end,
    })
  end,
}
