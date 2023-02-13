local M = {}

function M.setup(theme)
    require("lualine").setup({
        options = {
            theme = theme,

            -- unicode powerline glyphs:
            --    
            --    
            --    
            --    
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
    })
end

return M
