local opts      = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap single quote as leader key
keymap("", "'", "<Nop>", opts)
vim.g.mapleader = "'"
vim.g.maplocalleader = "'"

-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",

-- Normal --

-- Save changes
keymap("n", "<leader>'w", ":w<CR>", opts)

-- Make
keymap("n", "<leader>'m", ":make<CR>", opts)


-- Window navigation
keymap("n", "<leader>'l", "<C-w>h", opts)
keymap("n", "<leader>'r", "<C-w>l", opts)
keymap("n", "<leader>'u", "<C-w>k", opts)
keymap("n", "<leader>'d", "<C-w>j", opts)

keymap("n", "<leader>'v", ":vsplit<CR>", opts)
keymap("n", "<leader>'h", ":split<CR>", opts)
keymap("n", "<leader>'c", ":close<CR>", opts)
keymap("n", "<leader>'n", ":new<CR>", opts)

keymap("n", "<leader>'b", "<C-o>", opts)
keymap("n", "<leader>'f", "<C-i>", opts)

-- Error list navigation
keymap("n", "<leader>el", ":clist<CR>", opts)
keymap("n", "<leader>en", ":cnext<CR>", opts)
keymap("n", "<leader>ep", ":cprev<CR>", opts)
keymap("n", "<leader>ec", ":cclose<CR>", opts)

-- Vim registers
keymap("n", "<leader>tl", ":registers<CR>", opts)
keymap("n", "<leader>ta", "\"a", opts)
keymap("n", "<leader>te", "\"b", opts)
keymap("n", "<leader>ti", "\"c", opts)
keymap("n", "<leader>th", "\"d", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- Insert --
-- Type nh quickly to exit insert mode
keymap("i", "nh", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)




