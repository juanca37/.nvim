return {
  "nvim-pack/nvim-spectre",
  config = function()
    vim.keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
      desc = "Search current word",
    })
    vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
      desc = "Search current word",
    })
  end,
}
