local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true } -- Usar en caso de usar atajos en modo terminal

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Modes
-- normal mode -> "n"
-- insert mode -> "i"
-- visual mode -> "v"
-- visual block mode -> "x"
-- terminal mode -> "t"
-- command mode -> "c"

-- Remap leader key
keymap("", ",", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Use control + arrows to resize windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Escape remap
keymap("i", "jj", "<Esc>", opts)

-- Easy CAPS
keymap("n", "<c-u>", "<ESC>viwUi", opts)
keymap("n", "<c-u>", "viwUi<ESC>", opts)
-- Navegation between buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Alternate way to save
keymap("n", "<Leader>s", ":w<CR>", opts)
-- Alternate way to quit
keymap("n", "<Leader>q", ":q<CR>", opts)

-- Remove highlighting
keymap("n", "<Esc>", ":noh<CR>",opts)

-- Better tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better begin/end line movement (insertion + normal + visual mode)
keymap("i", "<C-b>", "0", opts)
keymap("i", "<C-e>", "$", opts)
keymap("n", "<C-b>", "0", opts)
keymap("n", "<C-e>", "$", opts)
keymap("v", "<C-b>", "0", opts)
keymap("v", "<C-e>", "$", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Close actual buffer without closing window (it uses Bdelete command from moll/vim-bbye pluggin)
keymap("n", "<Leader>c", ":Bdelete<CR>", opts)

-- Open file explorer. NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
