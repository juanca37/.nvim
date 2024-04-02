return {
  "epwalsh/pomo.nvim",
  version = "*",
  lazy = true,
  cmd = { "TimerStart", "TimerShow", "TimerStop", "TimerPause", "TimerResume" },
  dependencies = {
    "rcarriga/nvim-notify",
  },
  config = function()
    require("lualine").setup({
      sections = {
        lualine_x = {
          function()
            local ok, pomo = pcall(require, "pomo")
            if not ok then
              return ""
            end

            local timer = pomo.get_first_to_finish()
            if timer == nil then
              return ""
            end

            return "󰄉 " .. tostring(timer)
          end,
          "encoding",
          "fileformat",
          "filetype",
        },
      },
    })
    require("pomo").setup({
      update_interval = 5000,
      notifiers = {
        {
          name = "Default",
          opts = {
            sticky = false,
          },
        },
      },
    })
  end,
}
