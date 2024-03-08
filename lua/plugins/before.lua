return {
  'bloznelis/before.nvim',
  config = function()
    local before = require('before')
    before.setup({
      telescope_for_preview = true
    })
  end
}
