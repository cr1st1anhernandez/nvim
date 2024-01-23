local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.o.guifont = "CaskaydiaCove Nerd Font:h20"
vim.g.neovide_hide_mouse_when_typing = true

require("vim-options")
require("lazy").setup("plugins")
