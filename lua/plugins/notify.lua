return {
  "rcarriga/nvim-notify",
  config = function()
    vim.notify = require("notify")
    vim.notify.setup({
      stages = "slide",
      timeout = 2000,
    })
  end,
}
