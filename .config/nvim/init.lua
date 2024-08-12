-- Make 4 char indent
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Execute startup for lazy.nvim 
dofile(vim.fn.stdpath('config') .. '/lua/lazy.lua')

