vim.cmd("autocmd!")
vim.g.mapleader = " "

vim.wo.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.breakindent = true

vim.opt.cursorline = true
vim.cmd[[colorscheme tokyonight]]

vim.opt.clipboard:append { 'unnamedplus' }

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format({ timeout_ms = 2000 })
	end,
})
