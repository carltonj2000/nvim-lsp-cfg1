local status, mason = pcall(require, "mason")
if not status then
	return
end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if not status2 then
	return
end

mason.setup({})

lspconfig.setup({
	automatic_installation = true,
	ensure_installed = {
		"astro",
		"cssls",
		"cssmodules_ls",
		"dockerls",
		"gopls",
		"html",
		"jsonls",
		"marksman",
		"prismals",
		"rust_analyzer",
		"svelte",
		"lua_ls",
		"tailwindcss",
		"tsserver",
	},
})
