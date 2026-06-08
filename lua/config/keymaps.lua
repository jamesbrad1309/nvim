-- Centralized Keymaps
-- Use this file to easily customize your keybindings

local map = vim.keymap.set

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- General Keymaps
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":bd<CR>", { desc = "Close buffer" })
map("n", "<leader>uw", "<cmd>set wrap!<cr>", { desc = "Toggle Line Wrap" })

-- Better navigation for wrapped lines
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move lines
map("n", "<c-j>", ":m+1<CR>==", { desc = "Move line down" })
map("n", "<c-k>", ":m-2<CR>==", { desc = "Move line up" })
map("v", "<c-j>", ":m'>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<c-k>", ":m'<-2<CR>gv=gv", { desc = "Move selection up" })

-- LSPsaga & Peek
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover Doc" })
map("n", "gh", "<cmd>Lspsaga finder<CR>", { desc = "LSP Finder" })
map("n", "pd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition" })
map("n", "pt", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Peek Type Definition" })
map("n", "pr", function() Snacks.picker.lsp_references() end, { desc = "Peek LSP References" })
map("n", "pi", function() Snacks.picker.lsp_incoming_calls() end, { desc = "Peek Calls Incoming" })
map("n", "po", function() Snacks.picker.lsp_outgoing_calls() end, { desc = "Peek Calls Outgoing" })
map("n", "pe", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Peek Error" })

-- Navigation (Previous/Next)
map("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Previous Diagnostic" })
map("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next Diagnostic" })
map("n", "[b", ":bprevious<CR>", { desc = "Previous Buffer" })
map("n", "]b", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "[q", ":cprev<CR>", { desc = "Previous Quickfix" })
map("n", "]q", ":cnext<CR>", { desc = "Next Quickfix" })

map("n", "<leader>cd", vim.diagnostic.setloclist, { desc = "Diagnostic List" })
map("n", "<leader>.", "<cmd>Lspsaga code_action<CR>", { desc = "Code Action" })

map("n", "<leader>7", "<cmd>Lspsaga outline<CR>", { desc = "Outline" })
map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { desc = "Rename" })
map("n", "ff", vim.lsp.buf.format, { desc = "Format" })

-- Hop
map("n", "<leader><leader>f", "<cmd>HopWord<CR>", { desc = "Hop Word" })

-- Snacks
map("n", "<leader>t", function() Snacks.terminal.toggle() end, { desc = "Terminal" })
map("n", "<leader>e", function() Snacks.explorer() end, { desc = "File Explorer" })
map("n", "<leader>n", function() Snacks.picker.notifications() end, { desc = "Notification History" })
map("n", "<leader>fch", function() Snacks.picker.command_history() end, { desc = "Command History" })
map("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Grep" })
map("n", "<leader>fsm", function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
map("n", "<leader>ff", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { desc = "File Browser (Current File)" })
map("n", "<leader>fF", function() Snacks.picker.files() end, { desc = "Find Files (Fast)" })
map("n", "<leader>fp", function()
  Snacks.picker.projects({
    confirm = function(picker, item)
      picker:close()
      local dir = item.file or item.path or item.dir or item.cwd
      if not dir or dir == "" or type(dir) ~= "string" then
        return
      end
      vim.fn.chdir(dir)
      vim.schedule(function()
        vim.cmd("Telescope file_browser path=" .. vim.fn.fnameescape(dir))
      end)
    end,
  })
end, { desc = "Projects" })
map("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Recent" })
map("n", "<leader>fn", function() Snacks.notifier.show_history() end, { desc = "Notifier History" })
map("n", "<leader>gb", function() Snacks.picker.git_branches() end, { desc = "Git Branches" })
map("n", "<leader>gs", function() Snacks.picker.git_status() end, { desc = "Git Status" })
map("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
map("n", "gD", function() Snacks.picker.lsp_declarations() end, { desc = "Goto Declaration" })
map("n", "gI", function() Snacks.picker.lsp_implementations() end, { desc = "Goto Implementation" })
map("n", "gy", function() Snacks.picker.lsp_type_definitions() end, { desc = "Goto Type Definition" })
map("n", "<leader>fsb", function() Snacks.picker.lsp_symbols() end, { desc = "LSP Symbols" })
map("n", "<leader>fSb", function() Snacks.picker.lsp_workspace_symbols() end, { desc = "LSP Workspace Symbols" })
map("n", "<leader>lg", function() Snacks.lazygit() end, { desc = "Lazygit" })

-- Codesnap
map("n", "<leader>cs", "<cmd>Codesnap<cr>", { desc = "Codesnap" })

-- Kulala
map("n", "<leader>Rs", function() require("kulala").run() end, { desc = "Send request" })
map("n", "<leader>Ra", function() require("kulala").run_all() end, { desc = "Send all requests" })
map("n", "<leader>Rb", function() require("kulala").scratchpad() end, { desc = "Open scratchpad" })

-- Lazygit
map("n", ";c", ":LazyGit<Return>", { desc = "Lazygit", silent = true })

-- Telescope File Browser
map("n", "<leader>sB", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { desc = "Search Browser (Current File)" })
map("n", "<leader>sb", ":Telescope file_browser<CR>", { desc = "Search Browser (Root)" })

-- Dadbod UI
map("n", "<leader>d", "<cmd>NvimTreeClose<cr><cmd>tabnew<cr><bar><bar><cmd>DBUI<cr>", { desc = "Database UI" })
