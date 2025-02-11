vim.wo.number = true -- turn on line numbers
vim.o.relativenumber = true -- relative line numbering
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

vim.o.undofile = true -- save undo history
vim.o.autoindent = true -- maintain current indent on new line
vim.o.breakindent = true -- indents wrapped text to match parent
vim.o.ignorecase = true -- case insensitive searching, unless uppercase param
vim.o.smartcase = true -- case insensitive searching, unless uppercase param
vim.opt.signcolumn = 'auto' -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time. Displays which-key popup sooner

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Tab Behavior
vim.o.shiftwidth = 4 -- spaces at each indentation level
vim.o.tabstop = 4 -- inserts n spaces on tab
vim.o.softtabstop = 4
vim.o.expandtab = true -- convert tab to spaces 

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.schedule(function() 
    vim.o.clipboard = 'unnamedplus' 
end) -- sync neovim register with system clipboard
vim.opt.conceallevel = 1
