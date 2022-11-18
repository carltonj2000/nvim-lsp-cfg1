local status, luasnip = pcall(require, "luasnip")
if not status then
	return
end

local types = require("luasnip.util.types")

luasnip.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = {{"<", "Error"}}
      }
    }
  }
})


