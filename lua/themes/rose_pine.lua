local M = {}

function M.lualine_palette()
    local p = require("rose-pine.palette")

    return {
        normal = {
            a = { bg = p.rose, fg = p.base, gui = "bold" },
            b = { bg = p.overlay, fg = p.rose },
            c = { bg = nil, fg = p.text },
        },
        insert = {
            a = { bg = p.foam, fg = p.base, gui = "bold" },
            b = { bg = p.overlay, fg = p.foam },
            c = { bg = nil, fg = p.text },
        },
        visual = {
            a = { bg = p.iris, fg = p.base, gui = "bold" },
            b = { bg = p.overlay, fg = p.iris },
            c = { bg = nil, fg = p.text },
        },
        replace = {
            a = { bg = p.pine, fg = p.base, gui = "bold" },
            b = { bg = p.overlay, fg = p.pine },
            c = { bg = nil, fg = p.text },
        },
        command = {
            a = { bg = p.love, fg = p.base, gui = "bold" },
            b = { bg = p.overlay, fg = p.love },
            c = { bg = nil, fg = p.text },
        },
        inactive = {
            a = { bg = p.base, fg = p.muted, gui = "bold" },
            b = { bg = p.base, fg = p.muted },
            c = { bg = nil, fg = p.muted },
        },
    }
end

function M.setup()
    require("rose-pine").setup({
        disable_background = true,
        groups = {
            -- background = "#0c0b11",
            -- background = "#09080c",
        },
        highlight_groups = {
            ColorColumn = { bg = "base" },
        },
    })

    require("config.lualine").setup(M.lualine_palette())

    vim.cmd("colorscheme rose-pine")
end

return M