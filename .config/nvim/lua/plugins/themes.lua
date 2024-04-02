return {
	{
		"ellisonleao/gruvbox.nvim",
		tag = "2.0.0",
		priority = 1000,
	},
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			vim.o.background = "dark" -- or "light" for light mode
			vim.cmd([[let g:gruvbox_material_background = 'soft']])
			vim.cmd([[colorscheme gruvbox-material]])
			vim.cmd([[hi NvimTreeNormal guibg=None]])
		end,
	},
}
