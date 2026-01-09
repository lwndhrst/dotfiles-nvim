vim.api.nvim_create_autocmd('FileType', {
	pattern = {
		'c',
		'cmake',
		'cpp',
		'lua',
		'md',
		'nix',
	},

	callback = function() vim.treesitter.start() end,
})
