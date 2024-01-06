return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
 },
  config = function ()
		vim.keymap.set("n", "<leader>p", ":TroubleToggle<CR>", {})
  end
}
