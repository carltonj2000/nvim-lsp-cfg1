local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lspconfig.gopls.setup({})

lspconfig.rust_analyzer.setup({})

lspconfig.html.setup({})

lspconfig.tsserver.setup({})

lspconfig.tailwindcss.setup({})

lspconfig.cssls.setup({})
