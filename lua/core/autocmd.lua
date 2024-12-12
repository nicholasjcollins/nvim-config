-- Highlight Yanked Text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'dbout',
  callback = function()
    vim.wo.foldenable = false -- Disable folding
    vim.wo.foldmethod = 'manual' -- Ensure no automatic folding
  end,
})
