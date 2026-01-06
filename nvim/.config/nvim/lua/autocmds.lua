local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight yanked text
local highlight_group = augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 170 })
	end,
	group = highlight_group,
})

local typst_group = augroup("TypstSettings", { clear = true })
autocmd("FileType", {
	pattern = "typst",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.textwidth = 80
	end,
	group = typst_group,
})
