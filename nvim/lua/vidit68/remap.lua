vim.g.mapleader = " "
vim.keymap.set( "n",  "<leader>pv", vim.cmd.Ex)
vim.keymap.set({'n', 'v'}, 'j', 'k', { noremap = true })
vim.keymap.set({'n', 'v'}, 'k', 'j', { noremap = true })
vim.opt.relativenumber = true
vim.opt.number = true
