vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd('set clipboard+=unnamedplus')

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

local plugins = {
  {
    "tiagovla/tokyodark.nvim", opts = {}
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
  }
}
local opts = {}

require("lazy").setup(plugins, opts)
local builtin = require("telescope.builtin")

require("tokyodark").setup()
vim.cmd [[colorscheme tokyodark]]

vim.keymap.set('n', '<leader>fg', builtin.find_files, {})
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
