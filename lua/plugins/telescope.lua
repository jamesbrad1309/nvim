return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    extensions = {
      file_browser = {
        theme = "dropdown",
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        mappings = {
          ["i"] = {
            -- your custom insert mode mappings
            ["<C-w>"] = function() vim.cmd('normal vbd') end,
          },
          ["n"] = {
            -- your custom normal mode mappings
            ["/"] = function()
              vim.cmd('startinsert')
            end
          },
        },
      },
    },
  },
  keys = {
    {
      '<leader>ff',
      function() require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') }) end,
      desc = "Telescope find files"
    },

    {
      '<leader>fg',
      function() require('telescope.builtin').live_grep() end,
      desc = "Telescope live grep"
    },

    {
      '<leader>fb',
      function() require('telescope.builtin').buffers() end,
      desc = "Telescope buffers"
    },

    {
      '<leader>fc',
      function() require('telescope.builtin').commands() end,
      desc = "Telescope commands"
    },

    {
      '<leader>fh',
      function() require('telescope.builtin').command_history() end,
      desc = "Telescope command history"
    },
  }
}
