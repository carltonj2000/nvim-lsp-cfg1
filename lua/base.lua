vim.cmd("autocmd!")
vim.g.mapleader = " "

vim.wo.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.cmd([[colorscheme tokyonight]])

vim.opt.clipboard:append({ "unnamedplus" })

-- nvim-tree recommened options
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format({ timeout_ms = 2000 })
	end,
})
