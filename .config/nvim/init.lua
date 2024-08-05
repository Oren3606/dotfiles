-- Make 4 char indent
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Initiate lazy.nvim
dofile(vim.fn.stdpath('config') .. '/bootstrap.lua')

-- Setup lazy.nvim
require("lazy").setup({
    spec = { -- Plugins
        {
            "nyoom-engineering/oxocarbon.nvim",
            lazy = false,
            priority = 1000,
            config = function()
                vim.opt.background = "dark" -- set this to dark or light
                vim.cmd("colorscheme oxocarbon")
            end
        },
    },

    install = { -- Additional settings
        colorscheme = { "oxocarbon" }
    },

    checker = { -- Automatic updates
        enabled = true
    },
})
