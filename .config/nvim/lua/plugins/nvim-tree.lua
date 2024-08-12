return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- Disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Enable 24-bit colour
        vim.opt.termguicolors = true
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })

        local api = require('nvim-tree.api')
        vim.keymap.set(
        {'n'},
        '<C-e>',
        function()
            vim.api.nvim_buf_get_name(0)
    --        if api.tree.is_visible() == true then
      --          api.tree.close()
        --    else
          --      api.tree.open({ path = vim.fn.expand('%:p:h'), current_window = false })
          --  end
        end,
        { noremap = true, silent = true }
        )

    end
}
