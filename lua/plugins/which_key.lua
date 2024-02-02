return {
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.register({
			g = {
				name = "lazygit",
				g = { "<cmd>LazyGit<cr>", "Open LazyGit ui" }
			}
		}, { prefix = "<leader>" })
	end
}
