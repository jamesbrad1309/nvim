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
        grouped = true,
        hidden = { file_browser = true, folder_browser = true },
        respect_gitignore = false,
        initial_mode = "normal",
        layout_config = { height = 40 },
        mappings = {
          ["i"] = {
            ["<C-w>"] = function() vim.cmd('normal vbd') end,
            ["j"] = function(prompt_bufnr)
              local state = require("telescope.actions.state")
              local prompt = state.get_current_line()
              if prompt == "" then
                require("telescope.actions").move_selection_next(prompt_bufnr)
              else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("j", true, false, true), "n", true)
              end
            end,
            ["k"] = function(prompt_bufnr)
              local state = require("telescope.actions.state")
              local prompt = state.get_current_line()
              if prompt == "" then
                require("telescope.actions").move_selection_previous(prompt_bufnr)
              else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("k", true, false, true), "n", true)
              end
            end,
          },
          ["n"] = {
            -- your custom normal mode mappings
            ["h"] = function(prompt_bufnr)
              require("telescope._extensions.file_browser.actions").goto_parent_dir(prompt_bufnr)
            end,
            ["l"] = function(prompt_bufnr)
              require("telescope.actions").select_default(prompt_bufnr)
            end,
            ["/"] = function()
              vim.cmd('startinsert')
            end
          },
        },
      },
    },
  }
}
