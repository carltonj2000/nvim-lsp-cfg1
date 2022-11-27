local status, ls = pcall(require, "luasnip")
if not status then
	return
end

local types = require("luasnip.util.types")

ls.config.set_config({
	history = true,
	updateevents = "TextChanged,TextChangedI",
	enable_autosnippets = true,
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "<", "Error" } },
			},
		},
	},
})

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("all", {
	s("edfc", {
		t("export default function "),
		i(1, "name"),
		t({ "() {", "\t<div>" }),
		i(0, "default function output"),
		t({ "</div>", "}" }),
	}),
})
