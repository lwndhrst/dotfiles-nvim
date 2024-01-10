-- https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"nvim-lua/plenary.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"nvim-treesitter/nvim-treesitter",
	"mhartington/formatter.nvim",
	"nvim-telescope/telescope.nvim",
	"nvim-lualine/lualine.nvim",
	"nvimdev/dashboard-nvim",
	"NvChad/nvim-colorizer.lua",
	"folke/todo-comments.nvim",
	-- "kelly-lin/ranger.nvim",
	"ThePrimeagen/harpoon",

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	"rose-pine/neovim",
}

require("lazy").setup(plugins)
