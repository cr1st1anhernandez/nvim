return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = true,
				},
			},
			git_status = {
				symbols = {
					-- Change type
					added = "",
					modified = "",
					deleted = "✖",
					renamed = "󰁕",
					-- Status type
					untracked = "",
					ignored = "",
					unstaged = "󰄱",
					staged = "",
					conflict = "",
				},
			},
			window = {
				mappings = {
					["l"] = "open",
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left toggle<CR>", {})
	end,
}
