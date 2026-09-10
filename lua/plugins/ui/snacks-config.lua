return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    input = {
      enable = true,
    },
    lazygit = {
      enable = true,
    },
    scroll = {
      enable = true,
    },
    image = {
      enable = true,
    },
    notify = {
      enable = true,
    },
    notifier = {
      enable = true,
    },
    picker = {
      enable = true,
      hidden = true,
      ignored = false,
      sources = {
        files = {
          hidden = true,
          exclude = { "node_modules", ".claude", ".git", ".github" },
        },
        grep = {
          exclude = { "node_modules", ".claude", ".git", ".github" },
        },
        buffers = {
          win = {
            list = { keys = { ["x"] = "bufdelete" } },
          },
        },
      },
    },
    terminal = {
      enable = true,
    },
    words = {
      enable = true,
    },
  },
}
