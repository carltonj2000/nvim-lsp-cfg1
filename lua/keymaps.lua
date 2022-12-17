local keymap = vim.keymap

keymap.set("n", "<F1>", "<cmd>echo<cr>")
keymap.set("i", "<F1>", "<esc><cmd>echo<cr>")
keymap.set("i", "vv", "<esc>")
keymap.set("n", "<c-d>", "<c-d>zz")
keymap.set("n", "<c-u>", "<c-u>zz")
keymap.set("n", "<c-a>", "ggvG$")
keymap.set("t", "<<", "<c-\\><c-n>")
keymap.set("t", "<c-l>", "<right>")
keymap.set("t", "<a-l>", "<c-\\><c-n><c-w>l")
keymap.set("t", "<a-j>", "<c-\\><c-n><c-w>j")
keymap.set("t", "<a-k>", "<c-\\><c-n><c-w>k")
keymap.set("t", "<a-h>", "<c-\\><c-n><c-w>h")
keymap.set("i", "<a-l>", "<esc><c-w>l")
keymap.set("i", "<a-j>", "<esc><c-w>j")
keymap.set("i", "<a-k>", "<esc><c-w>k")
keymap.set("i", "<a-h>", "<esc><c-w>h")
keymap.set("n", "<a-l>", "<c-w>l")
keymap.set("n", "<a-j>", "<c-w>j")
keymap.set("n", "<a-k>", "<c-w>k")
keymap.set("n", "<a-h>", "<c-w>h")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
