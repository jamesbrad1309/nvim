require("hop").setup({
	keys = 'etovxqpdygfblzhckisuran'
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader><leader>f", '<cmd>HopWord<CR>', opts)
