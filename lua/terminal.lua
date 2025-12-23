if vim.fn.has("Win32") == 1 then
	vim.opt.shell = "pwsh -NoLogo"
	vim.opt.shellcmdflag = "-Command"
end

vim.api.nvim_create_autocmd("TermOpen", {
	command = "setlocal number relativenumber",
})

local M = {}

local function create_term(terminal)
	vim.cmd("terminal")
	terminal.buf_id = vim.api.nvim_get_current_buf()
	terminal.term_id = vim.b.terminal_job_id
end

function M.open_term()
	if not M.buf_id or not M.term_id then
		create_term(M)
	else
		vim.api.nvim_set_current_buf(M.buf_id)
	end
end

function M.send_cmd(cmd)
	if not M.buf_id or not M.term_id then
		create_term(M)
	end

	if cmd then
		vim.api.nvim_chan_send(M.term_id, cmd .. "\r\n")
	end
end

return M
