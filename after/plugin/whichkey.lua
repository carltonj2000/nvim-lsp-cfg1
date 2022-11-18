local wk = require("which-key")

wk.setup({})

local mappings = {
  s = {
    name = "Split Window",
    s = {"<cmd>split<cr><c-w>w", "Horizontal"},
    v = {"<cmd>vsplit<cr><c-w>w", "Vertical"},
    x = {"<cmd>q<cr>", "Close"},
    j = {"<c-w>j", "Down"},
    k = {"<c-w>k", "Up"},
    h = {"<c-w>h", "Left"},
    l = {"<c-w>l", "Right"},
    r = {
      name = "Resize",
      t = {"<c-w>+", "Taller"},
      s = {"<c-w>-", "Shorter"},
      w = {"<c-w>>", "Wider"},
      n = {"<c-w><", "Narrower"},
    },
  },
  f = {
    name = "Find",
    f = {"<cmd>Telescope find_files<cr>", "File"},
    w = {"<cmd>Telescope live_grep<cr>", "Word"},
    b = {"<cmd>Telescope buffers<cr>", "Buffer"},
    t = {"<cmd>Telescope help_tags<cr>", "Tags"},
    e = {"<cmd>Telescope file_browser<cr>", "File Explorer"},
  },
  l = {
    name = "LSP",
    k = {"<cmd>lua vim.lsp.buf.hover()<cr>", "Display Information"},
    d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Jump To Definition"},
    c = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Jump To Declaration"},
    i = {"<cmd>lua vim.lsp.buf.implementation()<cr>", "Jump To Implementation"},
    r = {"<cmd>lua vim.lsp.buf.references()<cr>", "List Reference"},
    m = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename Symbol"},
    a = {"<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action"},
  },
  d = {
    name = "Diagnostic",
    d = {"<cmd>lua vim.diagnostic.open_float()<cr>", "Details"},
    n = {"<cmd>lua vim.diagnostic.goto_next()<cr>", "Next"},
    p = {"<cmd>lua vim.diagnostic.goto_prev()<cr>", "Previous"},
  },
  ["<leader>"] = {
    name = "Source",
    c = {"<cmd>so %<cr>", "Current file"},
    s = {"<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<cr>", "Lua Snip"},
  },
  q = {"<cmd>qa<cr>","Quit All"},
  h = {"<cmd>noh<cr>","Stop Highlighting"},
}

wk.register(mappings, {prefix = "<leader>"})
