return {
  "VonHeikemen/searchbox.nvim",
  dependencies = {
    { "MunifTanjim/nui.nvim" },
  },
  config = function()
    vim.keymap.set("n", "<leader>s", ":SearchBoxMatchAll clear_matches=false <CR>")
    vim.keymap.set("n", "<leader>r", ":SearchBoxReplace<CR>")
  end,
}
