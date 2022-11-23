local keymap = vim.keymap

keymap.set("n", "<F1>", "<cmd>echo<cr>")
keymap.set("n", "<c-a>", "ggvG$")
keymap.set("t", "hh", "<c-\\><c-n>")
