vim.api.nvim_create_autocmd('FileType', {
	pattern = {
		'c',
		'cmake',
		'cpp',
		'glsl',
		'lua',
		'md',
		'nix',
		'python',
	},

	callback = function() vim.treesitter.start() end,
})
