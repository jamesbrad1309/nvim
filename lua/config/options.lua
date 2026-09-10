vim.scriptencoding = "utf-8"

vim.opt.timeout = true
vim.opt.timeoutlen = 300

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.showmode = false
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""
vim.opt.guifont = "JetBrainsMono Nerd Font:h12"

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.filetype.add({
  extension = {
    ["http"] = "http",
    ["rest"] = "http",
    ["tsx"] = "typescriptreact",
  },
})

-- Configure diagnostic float options globally
vim.diagnostic.config({
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
