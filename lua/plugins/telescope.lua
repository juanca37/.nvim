return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close
          }
        }
      }
    })
  end
}
