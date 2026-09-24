return {
  "blackhat-7/vellum.nvim",
  ft = "markdown",
  cmd = "Vellum",
  keys = {
    { "<leader>mv", "<cmd>Vellum<cr>", ft = "markdown", desc = "Toggle Vellum Markdown Preview" },
    { "<leader>mz", function() require("vellum").zoom() end, ft = "markdown", desc = "Vellum Zoom" },
  },
  opts = {
    max_width = 100, -- widest text column in the preview
  },
}
