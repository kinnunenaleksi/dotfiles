local keymap = vim.keymap.set
local s = { silent = true }
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- General
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("x", "y", [["+y]], s)

-- LSP
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<Leader>fm", ":lua vim.lsp.buf.format()<CR>", s)
keymap("n", "<leader>r", vim.lsp.buf.rename)

-- Bufferline
keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)

-- Insert Mode
keymap("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
keymap("i", "<C-e>", "<End>", { desc = "move end of line" })
keymap("i", "<C-h>", "<Left>", { desc = "move left" })
keymap("i", "<C-l>", "<Right>", { desc = "move right" })
keymap("i", "<C-j>", "<Down>", { desc = "move down" })
keymap("i", "<C-k>", "<Up>", { desc = "move up" })

-- General Movements
keymap("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
keymap("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
keymap("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
keymap("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Oil
keymap("n", "-", "<CMD>Oil<CR>")

-- Neogen
keymap("n", "<Leader>do", ":lua require('neogen').generate()<CR>", opts)

-- NvimTree
-- keymap("n", "<C-h>", "<cmd>NvimTreeFocus<CR>", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)
-- keymap("n", "<leader>x", "<cmd>bdelete!<CR>", opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
