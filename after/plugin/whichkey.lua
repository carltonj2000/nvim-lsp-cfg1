local wk = require("which-key")
wk.setup({})
-- terminal
local Terminal = require("toggleterm.terminal").Terminal
local toggle_lazygit = function()
	local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
	return lazygit:toggle()
end
-- terminal
local mappings = {
	s = {
		name = "Split Window",
		s = { "<cmd>split<cr><c-w>w", "Horizontal" },
		v = { "<cmd>vsplit<cr><c-w>w", "Vertical" },
		x = { "<cmd>q<cr>", "Close" },
		j = { "<c-w>j", "Down" },
		k = { "<c-w>k", "Up" },
		h = { "<c-w>h", "Left" },
		l = { "<c-w>l", "Right" },
		o = { "<c-w>o", "Only - Close Others" },
		r = {
			name = "Resize",
			t = { "<c-w>+", "Taller" },
			s = { "<c-w>-", "Shorter" },
			w = { "<c-w>>", "Wider" },
			n = { "<c-w><", "Narrower" },
		},
	},
	f = {
		name = "Find",
		f = { "<cmd>Telescope find_files<cr>", "File" },
		g = { "<cmd>Telescope live_grep<cr>", "Word" },
		b = { "<cmd>Telescope buffers<cr>", "Buffer" },
		t = { "<cmd>Telescope help_tags<cr>", "Tags" },
		e = { "<cmd>Telescope file_browser<cr>", "File Explorer" },
		w = { "<cmd>Telescope telescope-tabs list_tabs<cr>", "Word" },
	},
	l = {
		name = "LSP",
		k = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Display Information" },
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Jump To Definition" },
		c = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Jump To Declaration" },
		i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Jump To Implementation" },
		r = { "<cmd>lua vim.lsp.buf.references()<cr>", "List Reference" },
		m = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename Symbol" },
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		g = { toggle_lazygit, "Lazy Git - I Know Not LSP" },
	},
	d = {
		name = "Diagnostic",
		d = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Details" },
		n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next" },
		p = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Previous" },
	},
	["<leader>"] = {
		name = "Source",
		c = { "<cmd>so %<cr>", "Current file" },
		s = { "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<cr>", "Lua Snip" },
	},
	w = {
		name = "Tab/Workspace",
		n = { "<cmd>tabedit<cr>", "New" },
		o = { "<cmd>tabnew %<cr>", "Open With Present File" },
		c = { "<c-w>c", "Close" },
		-- also gt/gT for previous and next tab
		h = { "<cmd>BufferLineCycleNext<cr>", "Next" },
		l = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
	},
	t = {
		name = "Toggle Term",
		g = { toggle_lazygit, "Lazy Git" },
		h = { "<cmd>ToggleTerm<cr>", "Horizonal" },
		v = { "<cmd>ToggleTerm direction=vertical size=80<cr>", "Vertical" },
		t = { "<cmd>ToggleTerm direction=tab<cr>", "Tab" },
	},
	e = {
		name = "Explor File Tree",
		e = { "<cmd>NvimTreeToggle<cr>", "Toggle" },
		a = { "<cmd>NvimTreeFocus<cr>", "Focus/Active" },
		f = { "<cmd>NvimTreeFocus<cr>", "Find" },
	},
	q = { "<cmd>qa<cr>", "Quit All" },
	h = { "<cmd>noh<cr>", "Stop Highlighting" },
}

wk.register(mappings, { prefix = "<leader>" })

local mappingsI = {
	e = { "<c-\\><c-n>", "Escape" },
	j = { "<c-\\><c-n><c-w>j", "Down" },
	k = { "<c-\\><c-n><c-w>k", "Up" },
	h = { "<c-\\><c-n><c-w>h", "Left" },
	l = { "<c-\\><c-n><c-w>l", "Right" },
	p = { "<cmd>BufferLineCyclePrev<cr>", "Left Tab" },
	n = { "<cmd>BufferLineCycleNext<cr>", "Right Tab" },
	["2"] = { "<cmd>2ToggleTerm direction=horizontal<cr>", "Term 2" },
	["3"] = { "<cmd>3ToggleTerm direction=horizontal<cr>", "Term 3" },
	v = {
		name = "Vertical",
		["2"] = { "<cmd>2ToggleTerm direction=vertical<cr>", "Term 2" },
		["3"] = { "<cmd>3ToggleTerm direction=vertical<cr>", "Term 3" },
	},
	t = {
		name = "Tab",
		["2"] = { "<cmd>2ToggleTerm direction=tab<cr>", "Term 2" },
		["3"] = { "<cmd>3ToggleTerm direction=tab<cr>", "Term 3" },
	},
}
wk.register(mappingsI, { prefix = "{", mode = "t" })
