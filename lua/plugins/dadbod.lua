return {
  {
    'tpope/vim-dadbod',
    config = function()
      vim.keymap.set('n', '<leader>db', ':%DB<CR>', {
        noremap = true,
        silent = true,
        desc = 'Execute entire SQL buffer with vim-dadbod'
      })
      vim.keymap.set('v', '<leader>db', ":'<,'>DB<CR>", {
        noremap = true,
        silent = true,
        desc = 'Execute selected SQL query with vim-dadbod'
      })
    end,
  },
  { 'kristijanhusak/vim-dadbod-ui' },
  { 'kristijanhusak/vim-dadbod-completion' },
}
