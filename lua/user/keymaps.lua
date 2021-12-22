local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


-- Use alt + hjkl to resize windows
keymap("n", "<M-j>", ":resize -2<CR>", opts)
keymap("n", "<M-k>", ":resize +2<CR>", opts)
keymap("n", "<M-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<M-l>", ":vertical resize +2<CR>", opts)

-- I hate escape more than anything else
keymap("i", "jj", "<Esc>", opts)

-- Easy CAPS
keymap("n", "<c-u>", "<ESC>viwUi", opts)
keymap("n", "<c-u>", "viwUi<ESC>", opts)
-- TAB in general mode will move to text buffer
keymap("n", "<Leader><TAB>", ":bnext<CR>", opts)
-- SHIFT-TAB will go back
keymap("n", "<Leader><S-TAB>", ":bprevious<CR>", opts)

-- Alternate way to save
keymap("n", "<Leader>s", ":w<CR>", opts)
-- Alternate way to quit
keymap("n", "<Leader>q", ":q<CR>", opts)

-- <TAB>: completion.
-- TODO: inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
 
-- Better tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Go to the end of the line
keymap("n", "<Leader>e", "$", opts)

-- Go to the beggining of the line
keymap("n", "<Leader>b", "0", opts)

-- Close actual buffer whithout closing window
keymap("n", "cb", ":Bclose<CR>", opts)
