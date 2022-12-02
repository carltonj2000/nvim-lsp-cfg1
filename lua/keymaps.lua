local keymap = vim.keymap

keymap.set("n", "<F1>", "<cmd>echo<cr>")
keymap.set("i", "<F1>", "<esc><cmd>echo<cr>")
keymap.set("n", "<c-a>", "ggvG$")
keymap.set("t", "<<", "<c-\\><c-n>")
keymap.set("i", "jk", "<esc>")
keymap.set("i", "kj", "<esc>")
