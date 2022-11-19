local status, telescope = pcall(require, "telescope")
if not status then
	return
end
local actions = require("telescope.actions")

local fb_actions = require("telescope").extensions.file_browser.actions

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			previewer = false,
			hijack_netrw = true,
			cwd = telescope_buffer_dir(),
			mappings = {
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vbd")
					end,
				},
				["n"] = {
					["N"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["/"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
	},
	file_ignore_patterns = { "^node_modules/", "^./.git/" },
})

telescope.load_extension("file_browser")
