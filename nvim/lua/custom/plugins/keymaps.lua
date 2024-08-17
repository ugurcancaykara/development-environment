local opts = { noremap = true, silent = true }

-- Shorten func name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key

keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)
keymap('n', '<leader>u', ':NvimTreeFocus<cr>', opts)

-- Normal --
-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- Close all buffers
keymap('n', '<leader>x', ':bufdo bd', opts)
return {}
