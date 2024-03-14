return {
  "nvimdev/guard.nvim",
  -- Builtin configuration, optional
  dependencies = {
    "nvimdev/guard-collection",
  },
  config = function()
    local ft = require("guard.filetype")

    -- Assuming you have guard-collection
    ft("lua"):fmt("lsp"):append("stylua")
    ft("python"):fmt("black"):append("isort")
    -- Call setup() LAST!
    require("guard").setup({
      -- Choose to format on every write to a buffer
      fmt_on_save = true,
      lsp_as_default_formatter = false,
    })
  end,
}
