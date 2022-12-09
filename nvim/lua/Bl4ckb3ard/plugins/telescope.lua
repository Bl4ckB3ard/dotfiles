local actions = require("telescope.actions")
local lactions = require("telescope.actions.layout")
local finders = require("telescope.builtin")

require("telescope").setup({
		defaults = {
			prompt_prefix = "  ",
        	initial_mode = "insert",
        	sorting_strategy = "ascending",
		},
	})
