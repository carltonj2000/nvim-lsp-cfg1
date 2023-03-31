local lspconfig = require("lspconfig")
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities =
	vim.tbl_deep_extend("force", lsp_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lspconfig.astro.setup({})

lspconfig.gopls.setup({})

lspconfig.rust_analyzer.setup({})

lspconfig.html.setup({})

lspconfig.svelte.setup({})

lspconfig.tsserver.setup({})

lspconfig.tailwindcss.setup({})

lspconfig.cssls.setup({})

lspconfig.prismals.setup({})
