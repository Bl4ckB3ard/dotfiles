require("lualine").setup {
	options = {
		theme = "auto",
        globalstatus = true,
		component_separators = "",
    	section_separators = ""
	},
	sections = {
		lualine_a = {"mode"},
		lualine_b = {"diagnostics"},
		lualine_c = {"filename"},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {},
		lualine_z = {'location'}
	},
}
