local status_ok, which_key = pcall(require, 'which-key')
if not status_ok then
  return
end

local mappings = {
  ['t'] = {
    "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
    'Buffers',
  },
  ['w'] = { '<cmd>w!<CR>', 'Save' },
  ['q'] = { '<cmd>q!<CR>', 'Quit' },
  ['c'] = { '<cmd>bd <BAR> bd #<CR>', 'Close Buffer' },
  ['f'] = {
    "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
    'Find files',
  },
  ['F'] = { '<cmd>Telescope live_grep theme=ivy<cr>', 'Find Text' },

  g = {
    name = 'Git',
    e = { '<cmd>lua _LAZYGIT_TOGGLE()<CR>', 'Lazygit' },
    j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", 'Next Hunk' },
    k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", 'Prev Hunk' },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", 'Blame' },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", 'Preview Hunk' },
    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", 'Reset Hunk' },
    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", 'Reset Buffer' },
    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", 'Stage Hunk' },
    u = {
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      'Undo Stage Hunk',
    },
    o = { '<cmd>Telescope git_status<cr>', 'Open changed file' },
    b = { '<cmd>Telescope git_branches<cr>', 'Checkout branch' },
    c = { '<cmd>Telescope git_commits<cr>', 'Checkout commit' },
    d = {
      '<cmd>Gitsigns diffthis HEAD<cr>',
      'Diff',
    },
  },

  l = {
    name = 'LSP',
    a = { '<cmd>lua vim.lsp.buf.code_action()<cr>', 'Code Action' },
    d = {
      '<cmd>Telescope diagnostics bufnr=0<cr>',
      'Document Diagnostics',
    },
    w = {
      '<cmd>Telescope diagnostics<cr>',
      'Workspace Diagnostics',
    },
    f = { '<cmd>lua vim.lsp.buf.format{async=true}<cr>', 'Format' },
    i = { '<cmd>LspInfo<cr>', 'Info' },
    I = { '<cmd>LspInstallInfo<cr>', 'Installer Info' },
    j = {
      '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
      'Next Diagnostic',
    },
    k = {
      '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>',
      'Prev Diagnostic',
    },
    l = { '<cmd>lua vim.lsp.codelens.run()<cr>', 'CodeLens Action' },
    q = { '<cmd>lua vim.diagnostic.setloclist()<cr>', 'Quickfix' },
    r = { '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename' },
    s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Document Symbols' },
    S = {
      '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>',
      'Workspace Symbols',
    },
  },
  s = {
    name = 'Search',
    b = { '<cmd>Telescope git_branches<cr>', 'Checkout branch' },
    c = { '<cmd>Telescope colorscheme<cr>', 'Colorscheme' },
    h = { '<cmd>Telescope help_tags<cr>', 'Find Help' },
    M = { '<cmd>Telescope man_pages<cr>', 'Man Pages' },
    r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
    R = { '<cmd>Telescope registers<cr>', 'Registers' },
    k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
    C = { '<cmd>Telescope commands<cr>', 'Commands' },
  },
}

which_key.register(mappings)
return {}
