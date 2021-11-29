-----------------------------------------------------------
-- Editor
-----------------------------------------------------------
vim.opt.showmatch       = true                        -- show matching 
vim.opt.ignorecase      = true                        -- case insensitive 
vim.opt.mouse           = 'v'                         -- middle-click paste with 
vim.opt.hlsearch        = true                        -- highlight search 
vim.opt.incsearch       = true                        -- incremental search
vim.opt.tabstop         = 2                           -- number of columns occupied by a tab 
vim.opt.softtabstop     = 2                           -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab       = true                        -- converts tabs to white space
vim.opt.shiftwidth      = 2                           -- width for autoindents
vim.opt.autoindent      = true                        -- indent a new line the same amount as the line just typed
vim.opt.number          = true                        -- add line numbers
vim.opt.wildmode        = { 'longest', 'list' }       -- get bash-like tab completions
vim.opt.mouse           = 'a'                         -- enable mouse click
vim.opt.clipboard       = 'unnamedplus'               -- using system clipboard
vim.opt.cursorline      = true                        -- highlight current cursorline
vim.opt.ttyfast         = true                        -- Speed up scrolling in Vim
vim.opt.splitright      = true                        -- split windows vertically to the right
vim.opt.splitbelow      = true                        -- split windows horizontally below
vim.g.mapleader         = ' '                         -- leader key mapping
vim.opt.updatetime      = 100

-----------------------------------------------------------
-- Colors
-----------------------------------------------------------
vim.opt.termguicolors=true
vim.cmd('colorscheme srcery')

