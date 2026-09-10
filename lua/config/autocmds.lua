vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format()
	end,
})

-- Open Telescope file_browser when opening a directory
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if arg ~= nil and arg ~= "" and vim.fn.isdirectory(arg) == 1 then
      vim.cmd("Telescope file_browser path=" .. vim.fn.fnameescape(arg))
    end
  end,
})
