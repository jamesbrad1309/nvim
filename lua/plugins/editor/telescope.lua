return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      file_previewer = function(opts)
        opts = opts or {}
        opts.maker = function(filename, lnum, start, finish)
          local utils = require("telescope.utils")
          local stat = vim.uv.fs_stat(utils.path_expand(filename))
          if stat and stat.type == "directory" then
            return { "ls", "-la", utils.path_expand(filename) }
          end

          local has_less = vim.fn.executable("less") == 1
          local command = { "bat", "--style=numbers", "--color=always", "--paging=always" }

          if lnum then
            vim.list_extend(command, { "--highlight-line", lnum })
          end

          if has_less then
            vim.list_extend(command, { "--pager", start and string.format("less -RS +%s", start) or "less -RS" })
          elseif start and finish then
            vim.list_extend(command, { "-r", string.format("%s:%s", start, finish) })
          end

          vim.list_extend(command, { "--", utils.path_expand(filename) })
          return command
        end
        return require("telescope.previewers").cat.new(opts)
      end,
    },
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
      file_browser = {
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        grouped = true,
        hidden = { file_browser = true, folder_browser = true },
        respect_gitignore = true,
        initial_mode = "normal",
        auto_depth = true,
        git_status = false,
        collapse_dirs = true,
        layout_strategy = "horizontal",
        layout_config = {
          height = 0.9,
          width = 0.9,
          preview_width = 0.55,
        },
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
            end,
            ["t"] = false,
            ["e"] = false,
          },
        },
      },
    },
  }
}
