return {
    "navarasu/onedark.nvim",
    config = function()
                -- Lua
        require('onedark').setup  {
            style = 'darker', -- Default theme style
            transparent = false,  -- Show/hide background
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
            toggle_style_key = nil, -- keybind to toggle theme style
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},

            -- Code style ---
            -- Options are italic, bold, underline, none
            -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
            code_style = {
                comments = 'italic',
                keywords = 'none',
                functions = 'none',
                strings = 'none',
                variables = 'none'
            },

            -- Lualine options --
            lualine = {
                transparent = false, -- lualine center bar transparency
            },

            -- Custom Highlights --
            colors = {
            }, -- Override default colors
            highlights = {
            }, -- Override highlight groups

            -- Plugins Config --
            diagnostics = {
                darker = true, -- darker colors for diagnostic
                undercurl = true,   -- use undercurl instead of underline for diagnostics
                background = true,    -- use background color for virtual text
            },
        }

        require('onedark').load()
    end
}
