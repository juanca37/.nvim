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
    wk.register({
      f = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        g = { "<cmd>Telescope git_files<cr>", "Open git files" }
      }
    }, { prefix = "<leader>" })
	end
}
