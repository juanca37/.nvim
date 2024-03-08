return {
  "folke/which-key.nvim",
  config = function()
    local wk = require("which-key")
    wk.register({
      g = {
        name = "Git",
        g = { "<cmd>LazyGit<cr>", "Open LazyGit ui" },
        l = { "<cmd>Telescope git_commits<cr>", "Open git log in Telescope" },
      },
    }, { prefix = "<leader>" })
    wk.register({
      t = {
        name = "FileTree",
        t = { "<cmd>NvimTreeToggle<cr>", "Open FileTree" },
        f = { "<cmd>NvimTreeFindFile<cr>", "Find file in tree" },
        c = { "<cmd>NvimTreeCollapse<cr>", "Collapse Tree" },
      },
    })
    wk.register({
      f = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files hidden=true<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        g = { "<cmd>Telescope git_files<cr>", "Open git files" },
        l = { "<cmd>Telescope live_grep<cr>", "Live grep" },
      },
    }, { prefix = "<leader>" })
    wk.register({
      S = {
        name = "Spectre searchreplace",
        p = { "<cmd>lua require('spectre').toggle()<cr>", "Open Spectre full project" },
        S = { "<cmd>lua require('spectre').open_file_search({select_word=true})<cr>", "Search on current file" },
      },
    }, { prefix = "<leader>" })
    wk.register({
      b = {
        name = "Before, previous edits",
        h = { "<cmd>lua require('before').jump_to_last_edit()<cr>", "Jump to last edit" },

        l = { "<cmd>lua require('before').jump_to_next_edit()<cr>", "Jump to next edit" },
        e = {
          "<cmd>lua require('before').show_edits(require('telescope.themes').get_dropdown())<cr>",
          "Show edits in telescope",
        },
      },
    }, { prefix = "<leader>" })
  end,
}
