-- https://github.com/nvim-treesitter/nvim-treesitter

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = { "latex" },
	},
})
