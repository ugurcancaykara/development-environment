local opts = { noremap = true, silent = true }

-- Shorten func name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key

keymap('', '<Space>', '<Nop>', opts)
-- NvimTree navigation
keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)
keymap('n', '<leader>u', ':NvimTreeFocus<cr>', opts)

-- ToggleTerm navigation
keymap('n', '<leader>m', ':ToggleTerm<cr>', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- Close all buffers
--  ['x'] = { '<cmd>bufdo bd<CR>', 'Close Buffer' },
keymap('n', '<leader>z', ':bufdo bd', opts)

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv^', opts)
keymap('v', '>', '>gv^', opts)

-- Move text up and down
keymap('v', '<S-b>', ":m '>+1<CR>gv=gv", opts)
keymap('v', '<S-n>', ":m '<-2<CR>gv=gv", opts)
keymap('v', 'p', '"_dP', opts)

-- Telescope keymaps with other plugins
keymap('n', '<leader>ft', '<cmd>TodoTelescope<cr>', opts)

return {}
