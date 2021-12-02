-----------------------------------------------------------
-- Helpers
-----------------------------------------------------------
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-----------------------------------------------------------
-- Moving
-----------------------------------------------------------
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>',     opts)

-----------------------------------------------------------
-- Plugins
----------------------------------------------------------
map('n', '<Leader>gg', ':LazyGit<CR>',              opts)
map('n', '<Leader>gb', ':GitBlameToggle<CR>',       opts)
map('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<Leader>ft', ':NvimTreeToggle<CR>',       opts)
map('n', '<Leader>bf', ':Format<CR>',               opts)

