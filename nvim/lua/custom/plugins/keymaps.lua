local opts = { noremap = true, silent = true }

-- Shorten func name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key

keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)
keymap('n', '<leader>u', ':NvimTreeFocus<cr>', opts)
return {}
