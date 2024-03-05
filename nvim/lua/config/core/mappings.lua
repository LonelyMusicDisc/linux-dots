vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

local map = vim.keymap.set
shut = {silent=true}

-- Proper scroll support for word wrapping
map({"n", "v"}, "j", "gj", shut)
map({"n", "v"}, "k", "gk", shut)

map("n", "<Tab>", "za")

-- Redo
map("n", "U", "<C-r>")

vim.opt.expandtab = true
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
