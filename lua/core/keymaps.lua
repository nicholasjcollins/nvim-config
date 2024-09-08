-- Set Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts) -- save
vim.keymap.set('n', 'x', '"_x', opts) -- stop x from overwriting register
vim.keymap.set('v', 'p', '_dP', opts) -- stop x from overwriting register

-- center search results
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- split resizing
vim.keymap.set('n', '<S-Up>',    ':resize -2<CR>', opts)
vim.keymap.set('n', '<S-Down>',  ':resize +2<CR>', opts)
vim.keymap.set('n', '<S-Left>',  ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<S-Right>', ':vertical resize +2<CR>', opts)

-- buffer navigation
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

-- split navigation
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)
vim.keymap.set('n', '<C-Up>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':wincmd l<CR>', opts)

-- split creation and deletion
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

-- remain in indent mode after indenting
vim.keymap.set('v', '<', '<gv', opts) -- stop x from overwriting register
vim.keymap.set('v', '>', '>gv', opts) -- stop x from overwriting register

-- Diagnostic Keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
