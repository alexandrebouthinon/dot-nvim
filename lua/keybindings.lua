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

map('n', '<A-,>', ':BufferLineCyclePrev<CR>', opts)
map('n', '<A-.>', ':BufferLineCycleNext<CR>', opts)

-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------
map('n', '<Leader>gg', ':LazyGit<CR>',                     opts)
map('n', '<Leader>ff', ':Telescope find_files<CR>',        opts)
map('n', '<Leader>ft', ':NvimTreeToggle<CR>:wincmd w<CR>', opts)
map('n', '<Leader>bt', ':ToggleTerm<CR>',                  opts)
map('n', '<Leader>dt', ':LspTroubleToggle<CR>',            opts)

-----------------------------------------------------------
-- Packer
-----------------------------------------------------------
map('n', '<Leader>Pi', ':PackerInstall<CR>', opts)
map('n', '<Leader>Pc', ':PackerCompile<CR>', opts)
map('n', '<Leader>Pu', ':PackerSync<CR>',    opts)
