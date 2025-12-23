-- https://github.com/neovim/nvim-lspconfig

-- c/c++
vim.lsp.enable("clangd")

-- glsl
vim.lsp.enable("glsl_analyzer")

-- slang
vim.lsp.enable("slangd")

-- lua
vim.lsp.config('lua_ls', {
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if
				path ~= vim.fn.stdpath('config')
			then
				return
			end
		end

		client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
			runtime = {
				-- Tell the language server which version of Lua you're using (most
				-- likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',

				-- Tell the language server how to find Lua modules same way as Neovim
				-- (see `:h lua-module-load`)
				path = {
					'lua/?.lua',
					'lua/?/init.lua',
				},
			},

			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME
				}
			}
		})
	end,

	settings = {
		Lua = {}
	}
})

vim.lsp.enable("lua_ls")

-- nix
vim.lsp.enable("nil_ls")

-- qml
vim.lsp.enable("qmlls")

-- tex
vim.lsp.enable("texlab")
