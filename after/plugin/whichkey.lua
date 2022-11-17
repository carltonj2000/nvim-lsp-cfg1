local wk = require("which-key")

wk.setup({})

local mappings = {
  s = {
    name = "Split Window",
    s = {"<cmd>split<cr><c-w>w", "Split Horizontal"},
    v = {"<cmd>vsplit<cr><c-w>w", "Split Vertical"},
    x = {"<cmd>q<cr>", "Split Close"},
  },
  f = {
    name = "Find",
    f = {"<cmd>Telescope find_files<cr>", "File"},
    w = {"<cmd>Telescope live_grep<cr>", "Word"},
    b = {"<cmd>Telescope buffers<cr>", "Buffer"},
    t = {"<cmd>Telescope help_tags<cr>", "Tags"},
    e = {"<cmd>Telescope file_browser<cr>", "File Explorer"},
  },
  q = {"<cmd>qa<cr>","Quit All"},
}

wk.register(mappings, {prefix = "<leader>"})
