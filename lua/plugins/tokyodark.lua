return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("tokyonight").setup({
			style = "night",
			on_colors = function(colors)
        colors.bg = "#16161e"
			end,
		})
		vim.cmd([[colorscheme tokyonight-night]])
	end,
}
