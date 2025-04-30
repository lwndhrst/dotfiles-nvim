-- https://github.com/rose-pine/neovim
-- https://github.com/nvim-lualine/lualine.nvim

local M = {}

local function lualine_theme()
	local p = require("rose-pine.palette")
	p.base = "#040e14"
	p.surface = "#0a161d"
	p.overlay = "#102028"
	p.muted = "#506471"

	return {
		normal = {
			a = { bg = p.rose, fg = p.base, gui = "bold" },
			b = { bg = p.overlay, fg = p.rose },
			c = { bg = p.base, fg = p.text },
		},
		insert = {
			a = { bg = p.foam, fg = p.base, gui = "bold" },
			b = { bg = p.overlay, fg = p.foam },
			c = { bg = p.base, fg = p.text },
		},
		visual = {
			a = { bg = p.iris, fg = p.base, gui = "bold" },
			b = { bg = p.overlay, fg = p.iris },
			c = { bg = p.base, fg = p.text },
		},
		replace = {
			a = { bg = p.pine, fg = p.base, gui = "bold" },
			b = { bg = p.overlay, fg = p.pine },
			c = { bg = p.base, fg = p.text },
		},
		command = {
			a = { bg = p.love, fg = p.base, gui = "bold" },
			b = { bg = p.overlay, fg = p.love },
			c = { bg = p.base, fg = p.text },
		},
		inactive = {
			a = { bg = p.base, fg = p.muted, gui = "bold" },
			b = { bg = p.overlay, fg = p.muted },
			c = { bg = p.base, fg = p.muted },
		},
	}
end

function M.setup()
	require("rose-pine").setup({
		variant = "main",

		styles = {
			bold = false,
			italic = false,
			transparency = false,
		},

		palette = {
			main = {
				base =           "#040e14",
				surface =        "#0a161d",
				overlay =        "#102028",
				muted =          "#506471",
				subtle =         "#708593",
				text =           "#c8d4dc",
				highlight_low  = "#0f2129",
				highlight_med  = "#203039",
				highlight_high = "#495863",
			},
		},

		highlight_groups = {
			TelescopeBorder = { fg = "highlight_med", bg = "surface" },
			-- TelescopeNormal = { bg = "base" },
			-- TelescopePromptNormal = { bg = "base" },
			-- TelescopeResultsNormal = { fg = "subtle", bg = "base" },
			-- TelescopeSelection = { fg = "text", bg = "base" },
			TelescopeSelectionCaret = { fg = "rose", bg = "rose" },

			-- NormalFloat = { bg = "base" },
			FloatBorder = { fg = "highlight_med", bg = "surface" },
			FloatTitle = { fg = "foam", bg = "surface" },

			Visual = { bg = "text" },
		},

		before_highlight = function(group, highlight, palette)
			if highlight.bg == palette.base then
				highlight.bg = nil
			end
		end,
	})

	require("lualine").setup({
		options = {
			theme = lualine_theme(),

			-- unicode powerline glyphs:
			--    
			--    
			--    
			--    
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
	})

	vim.cmd("colorscheme rose-pine")
end

return M
