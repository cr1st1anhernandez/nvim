vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set mouse=a")
vim.cmd("set autoindent")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set cmdheight=0")


vim.cmd('hi IlluminatedWordText guibg=none gui=underline')
vim.cmd('hi IlluminatedWordRead guibg=none gui=underline')
vim.cmd('hi IlluminatedWordWrite guibg=none gui=underline')

vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>q', [[&buftype == '' ? ':wqa<CR>' : ':qa<CR>']], { noremap = true, silent = true, expr = true })
vim.keymap.set('n', '<C-s>', ':wa<CR>', { noremap = true, silent = true })
