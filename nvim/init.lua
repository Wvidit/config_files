vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.opt.clipboard:append("unnamedplus")
vim.opt.number = true
vim.opt.relativenumber = true
vim.keymap.set({'n', 'v'}, 'j', 'k', { noremap = true })
vim.keymap.set({'n', 'v'}, 'k', 'j', { noremap = true })
vim.keymap.set('n', '<F5>', ':w | !g++ % -o %< && ./%< < /home/vidit68/Desktop/cp/input.txt > /home/vidit68/Desktop/cp/output.txt<CR>')

vim.o.autoread=true

local autocmd=vim.api.nvim_create_autocmd
autocmd("BufNewFile",{
	pattern="*.cpp",
	command="0r ~/.config/nvim/template/skeleton.cpp",
})
