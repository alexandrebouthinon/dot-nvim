-----------------------------------------------------------
-- Helpers
-----------------------------------------------------------
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-----------------------------------------------------------
-- Moving
-----------------------------------------------------------
map('n', '<A-h>', '<C-w>h', opts)
map('n', '<A-j>', '<C-w>j', opts)
map('n', '<A-k>', '<C-w>k', opts)
map('n', '<A-l>', '<C-w>l', opts)

-----------------------------------------------------------
-- Functions
----------------------------------------------------------
map('n', '<Leader>gg',      ':LazyGit<CR>',              	             opts)
map('n', '<Leader>ff',      ':Telescope find_files<CR>', 	             opts)
map('n', '<Leader>b.',      ':bnext<CR>',   	             opts)
map('n', '<Leader>b,',      ':bprev<CR>',   	             opts)
map('n', '<Leader>tt', 	    ':lua require("FTerm").toggle()<CR>',      opts)
map('n', '<C-t>', 	        ':NvimTreeToggle<CR>',                     opts)



-----------------------------------------------------------
-- Snippets
----------------------------------------------------------
local function prequire(...)
local status, lib = pcall(require, ...)
if (status) then return lib end
    return nil
end

local luasnip = prequire('luasnip')
local cmp = prequire("cmp")

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_next_item()
    elseif luasnip and luasnip.expand_or_jumpable() then
        return t("<Plug>luasnip-expand-or-jump")
    elseif check_back_space() then
        return t "<Tab>"
    else
        cmp.complete()
    end
    return ""
end
_G.s_tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_prev_item()
    elseif luasnip and luasnip.jumpable(-1) then
        return t("<Plug>luasnip-jump-prev")
    else
        return t "<S-Tab>"
    end
    return ""
end

map("i", "<Tab>",   "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>",   "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("i", "<C-E>",   "<Plug>luasnip-next-choice", {})
map("s", "<C-E>",   "<Plug>luasnip-next-choice", {})
