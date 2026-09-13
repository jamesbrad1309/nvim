return {
  "greggh/claude-code.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "ClaudeCode", "ClaudeCodeContinue", "ClaudeCodeResume", "ClaudeCodeVerbose" },
  opts = {
    window = {
      position = "float",
      enter_insert = true,
      hide_numbers = true,
      hide_signcolumn = true,
      float = {
        width = "85%",
        height = "85%",
        row = "center",
        col = "center",
        relative = "editor",
        border = "rounded",
      },
    },
    git = {
      use_git_root = true,
    },
    keymaps = {
      toggle = {
        normal = "<C-,>",
        terminal = "<C-,>",
        variants = {
          continue = "<leader>aC",
          verbose = "<leader>aV",
        },
      },
    },
  },
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
  },
}
