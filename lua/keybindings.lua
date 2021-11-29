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

-----------------------------------------------------------
-- Functions
-----------------------------------------------------------
map('n', '<Leader>gg',      ':LazyGit<CR>',              	       opts)
map('n', '<Leader>ff',      ':Telescope find_files<CR>', 	       opts)
map('n', '<Leader>b.',      ':BufferLineMoveNext<CR>',   	       opts)
map('n', '<Leader>b,',      ':BufferLineMovePrev<CR>',   	       opts)
map('n', '<Leader>tt', 	    ':lua require("FTerm").toggle()<CR>',      opts)

