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
		wk.register({
			t = {
				name = "FileTree",
				t = { "<cmd>NvimTreeToggle<cr>", "Open FileTree" },
				f = { "<cmd>NvimTreeFindFile<cr>", "Find file in tree" },
				c = { "<cmd>NvimTreeCollapse<cr>", "Collapse Tree" }

			}
		})
	end
}
