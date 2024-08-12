return {
    "Shatur/neovim-ayu",
    config = function()
        require('ayu').setup({
            overrides = {
                -- will do sometime...
            },
        })
        require('ayu').colorscheme()
    end
}
