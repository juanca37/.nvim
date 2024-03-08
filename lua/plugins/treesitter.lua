return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"jsonc",
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"python",
			},
		})
	end,
}
