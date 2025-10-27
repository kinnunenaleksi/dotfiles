vim.g.mapleader = " "

vim.pack.add({
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim.git" },
	{ src = "https://github.com/windwp/nvim-autopairs.git" },
	{ src = "https://github.com/catppuccin/nvim.git", name = "catppuccin" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	{ src = "https://github.com/neovim/nvim-lspconfig.git" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/akinsho/bufferline.nvim" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
	{ src = "https://github.com/L3MON4D3/LuaSnip", tag = "v2.4" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },
	{ src = "https://github.com/m4xshen/hardtime.nvim" },
	{ src = "https://github.com/kylechui/nvim-surround" },
	{ src = "https://github.com/AlexvZyl/nordic.nvim", branch = "main" },
	{ src = "https://github.com/Rahlir/neogen" },
})

-- themes
-- vim.cmd.colorscheme("catppuccin")
vim.cmd.colorscheme("nordic")

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = { "python", "lua" },
	sync_install = false,
	auto_install = true,
	ignore_install = {},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

-- LSP, Formatters and diganostics
require("mason").setup({})

require("blink.cmp").setup({
	sources = { default = { "lsp", "path", "snippets" } },
	signature = { enabled = true },
	fuzzy = { implementation = "prefer_rust" },
	keymap = {
		["<C-j>"] = { "select_next", "fallback" },
		["<C-k>"] = { "select_prev", "fallback" },
		["<CR>"] = { "accept", "fallback" },
		["<C-d>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-n>"] = { "scroll_documentation_down", "fallback" },
		["<C-N>"] = { "scroll_documentation_up", "fallback" },
	},

	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
	},

	cmdline = {
		keymap = {
			preset = "inherit",
			["<CR>"] = { "accept_and_enter", "fallback" },
		},
	},
})

require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
	formatters_by_ft = {
		lua = { "stylua" },
		json = { "jq" },
		rust = { "rustfmt" },
		python = { "isort", "black" },
		html = { "djlint" },
	},
})

require("tiny-inline-diagnostic").setup({
	preset = "classic",
	transparent_bg = true,
	disabled_ft = {},
})

-- Telescope
local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
		},
	},
})

-- Bufferline
require("bufferline").setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				seperator = true,
			},
		},
	},
})

require("gitsigns").setup({
	signcolumn = false,
})

require("oil").setup({
	view_options = {
		show_hidden = true,
	},
})

require("hardtime").setup({
	enabled = false,
})

require("nvim-surround").setup({})
require("neogen").setup({})
require("typst-preview").setup({})
require("nvim-autopairs").setup({})
