return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = "cd app && npx --yes yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  keys = {
    { "<leader>mv", "<cmd>MarkdownPreviewToggle<cr>", ft = "markdown", desc = "Toggle Markdown Preview" },
  },
}
