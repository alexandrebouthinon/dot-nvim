-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nB\0\1\a\0\5\0\a6\1\0\0009\1\1\1'\3\2\0009\4\3\0009\6\4\0B\4\2\0C\1\1\0\fordinal\nraise\a%s\vformat\vstringW\0\3\a\0\5\0\14\18\5\1\0009\3\0\1'\6\1\0B\3\3\2\15\0\3\0X\4\2Ä'\3\2\0X\4\1Ä'\3\3\0'\4\4\0\18\5\3\0\18\6\0\0&\4\6\4L\4\2\0\6 \tÔÅ± \tÔÅú \nerror\nmatchç\3\1\0\6\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\4\0003\4\3\0=\4\5\0033\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\4=\4\v\0034\4\3\0005\5\f\0>\5\1\0045\5\r\0>\5\2\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\rProblems\15text_align\tleft\rfiletype\ftrouble\1\0\4\ttext\18File Explorer\14highlight\ntitle\15text_align\vcenter\rfiletype\rNvimTree\15highlights\ntitle\1\0\0\1\0\3\bgui\tbold\nguifb\f#d69020\nguibg\f#1a1b26\26diagnostics_indicator\0\fnumbers\1\0\2\16diagnostics\rnvim_lsp\fstyling\nslant\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nG\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\14telescope dashboard_default_executive\6g\bvim\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n∫\15\0\0\5\0 \0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0=\3\31\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\bcol\3\1\vborder\vsingle\brow\3\0\rrelative\vcursor\nstyle\fminimal&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\4\ndelay\3ÿ\4\22ignore_whitespace\1\18virt_text_pos\16right_align\14virt_text\2\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\r\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hU8<cmd>lua require\"gitsigns\".reset_buffer_index()<CR>\17n <leader>hS2<cmd>lua require\"gitsigns\".stage_buffer()<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>hb9<cmd>lua require\"gitsigns\".blame_line{full=true}<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\nsigns\1\0\t\20max_file_length\3¿∏\2\15signcolumn\2\20update_debounce\3d\18sign_priority\3\6\23current_line_blame\2\vlinehl\1\nnumhl\2\14word_diff\1\24attach_to_untracked\2\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ttext\b‚îÇ\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ttext\b‚îÇ\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nı\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\3\0\0\thelp\vpacker\20buftype_exclude\1\3\0\0\rterminal\vnofile\1\0\4\25space_char_blankline\6 \21show_end_of_line\1\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\n∂\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\5\thint\bÔ†µ\nother\bÔ´†\fwarning\bÔî©\16information\bÔëâ\nerror\bÔôô\1\0\4\17auto_preview\1\14auto_fold\2\15auto_close\2\14auto_open\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim",
    url = "https://github.com/folke/lsp-trouble.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\næ\4\0\0\a\0\29\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0005\4\4\0=\4\5\0034\4\0\0=\4\6\3=\3\b\0025\3\n\0005\4\t\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0005\6\16\0=\6\17\5>\5\3\4=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0024\3\0\0=\3\26\0025\3\27\0=\3\28\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\ftabline\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\fsources\1\3\0\0\rnvim_lsp\bcoc\1\2\0\0\16diagnostics\1\3\0\0\rfilename\tdiff\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bÓÇ¥\nright\bÓÇ∂\1\0\4\25component_separators\6|\25always_divide_middle\2\ntheme\15tokyonight\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n%\0\1\6\0\1\0\0064\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\1K\0\1\0\nsetup—\1\1\0\5\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0003\2\t\0B\0\2\1K\0\1\0\0\20on_server_ready\aui\1\0\0\nicons\1\0\0\1\0\3\23server_uninstalled\b‚úó\21server_installed\b‚úì\19server_pending\b‚ûú\rsettings\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n¿\1\0\0\v\0\n\0\0205\0\0\0006\1\1\0\18\3\0\0B\1\2\4H\4\fÄ'\6\2\0\18\a\4\0&\6\a\0066\a\3\0009\a\4\a9\a\5\a\18\t\6\0005\n\6\0=\5\a\n=\6\b\n=\6\t\nB\a\3\1F\4\3\3R\4ÚK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\nError\tÔôô \tHint\tÔ†µ \tWarn\tÔî© \tInfo\tÔëâ \0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n…\5\0\0\6\0\29\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0005\4\b\0=\4\t\3=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0005\4\23\0004\5\0\0=\5\24\4=\4\25\3=\3\26\0025\3\27\0=\3\28\2B\0\2\1K\0\1\0\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\vheight\3\30\nwidth\3\30\vnumber\1\19relativenumber\1\16auto_resize\2\tside\tleft\bgit\1\0\3\vignore\2\venable\2\ftimeout\3Ù\3\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\16diagnostics\nicons\1\0\4\fwarning\bÔÅ±\tinfo\bÔÅö\nerror\bÔÅó\thint\bÔÅ™\1\0\1\venable\2\22update_to_buf_dir\1\0\2\14auto_open\1\venable\2\23ignore_ft_on_setup\1\0\b\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\15auto_close\1\18open_on_setup\2\17hijack_netrw\2\18disable_netrw\2\14auto_open\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["packer.nvim"] = {
    config = { "\27LJ\2\nø\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0ü\1        augroup packer_user_config\n          autocmd!\n          autocmd BufWritePost plugins.lua source <afile> | PackerCompile\n        augroup end\n      \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÅ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15float_opts\1\0\1\vborder\vcurved\1\0\2\14direction\nfloat\17persist_size\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n«\1\0\0\3\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\1\3\0\0\rterminal\vpacker\24tokyonight_sidebars tokyonight_italic_functions\nnight\21tokyonight_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n«\1\0\0\3\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\1\3\0\0\rterminal\vpacker\24tokyonight_sidebars tokyonight_italic_functions\nnight\21tokyonight_style\6g\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\v\0\n\0\0205\0\0\0006\1\1\0\18\3\0\0B\1\2\4H\4\fÄ'\6\2\0\18\a\4\0&\6\a\0066\a\3\0009\a\4\a9\a\5\a\18\t\6\0005\n\6\0=\5\a\n=\6\b\n=\6\t\nB\a\3\1F\4\3\3R\4ÚK\0\1\0\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\nError\tÔôô \tHint\tÔ†µ \tWarn\tÔî© \tInfo\tÔëâ \0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: packer.nvim
time([[Config for packer.nvim]], true)
try_loadstring("\27LJ\2\nø\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0ü\1        augroup packer_user_config\n          autocmd!\n          autocmd BufWritePost plugins.lua source <afile> | PackerCompile\n        augroup end\n      \bcmd\bvim\0", "config", "packer.nvim")
time([[Config for packer.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\14telescope dashboard_default_executive\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n…\5\0\0\6\0\29\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0005\4\b\0=\4\t\3=\3\n\0025\3\v\0004\4\0\0=\4\f\3=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0005\4\23\0004\5\0\0=\5\24\4=\4\25\3=\3\26\0025\3\27\0=\3\28\2B\0\2\1K\0\1\0\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\vheight\3\30\nwidth\3\30\vnumber\1\19relativenumber\1\16auto_resize\2\tside\tleft\bgit\1\0\3\vignore\2\venable\2\ftimeout\3Ù\3\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\16diagnostics\nicons\1\0\4\fwarning\bÔÅ±\tinfo\bÔÅö\nerror\bÔÅó\thint\bÔÅ™\1\0\1\venable\2\22update_to_buf_dir\1\0\2\14auto_open\1\venable\2\23ignore_ft_on_setup\1\0\b\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\15auto_close\1\18open_on_setup\2\17hijack_netrw\2\18disable_netrw\2\14auto_open\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
try_loadstring("\27LJ\2\n∂\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\5\thint\bÔ†µ\nother\bÔ´†\fwarning\bÔî©\16information\bÔëâ\nerror\bÔôô\1\0\4\17auto_preview\1\14auto_fold\2\15auto_close\2\14auto_open\2\nsetup\ftrouble\frequire\0", "config", "lsp-trouble.nvim")
time([[Config for lsp-trouble.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n∫\15\0\0\5\0 \0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0=\3\31\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\bcol\3\1\vborder\vsingle\brow\3\0\rrelative\vcursor\nstyle\fminimal&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\4\ndelay\3ÿ\4\22ignore_whitespace\1\18virt_text_pos\16right_align\14virt_text\2\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\r\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hU8<cmd>lua require\"gitsigns\".reset_buffer_index()<CR>\17n <leader>hS2<cmd>lua require\"gitsigns\".stage_buffer()<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>hb9<cmd>lua require\"gitsigns\".blame_line{full=true}<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\nsigns\1\0\t\20max_file_length\3¿∏\2\15signcolumn\2\20update_debounce\3d\18sign_priority\3\6\23current_line_blame\2\vlinehl\1\nnumhl\2\14word_diff\1\24attach_to_untracked\2\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ttext\b‚îÇ\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ttext\b‚îÇ\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\næ\4\0\0\a\0\29\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0005\4\4\0=\4\5\0034\4\0\0=\4\6\3=\3\b\0025\3\n\0005\4\t\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0005\6\16\0=\6\17\5>\5\3\4=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0024\3\0\0=\3\26\0025\3\27\0=\3\28\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\15toggleterm\ftabline\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\fsources\1\3\0\0\rnvim_lsp\bcoc\1\2\0\0\16diagnostics\1\3\0\0\rfilename\tdiff\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bÓÇ¥\nright\bÓÇ∂\1\0\4\25component_separators\6|\25always_divide_middle\2\ntheme\15tokyonight\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: octo.nvim
time([[Config for octo.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0", "config", "octo.nvim")
time([[Config for octo.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÅ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15float_opts\1\0\1\vborder\vcurved\1\0\2\14direction\nfloat\17persist_size\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nB\0\1\a\0\5\0\a6\1\0\0009\1\1\1'\3\2\0009\4\3\0009\6\4\0B\4\2\0C\1\1\0\fordinal\nraise\a%s\vformat\vstringW\0\3\a\0\5\0\14\18\5\1\0009\3\0\1'\6\1\0B\3\3\2\15\0\3\0X\4\2Ä'\3\2\0X\4\1Ä'\3\3\0'\4\4\0\18\5\3\0\18\6\0\0&\4\6\4L\4\2\0\6 \tÔÅ± \tÔÅú \nerror\nmatchç\3\1\0\6\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\4\0003\4\3\0=\4\5\0033\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\4=\4\v\0034\4\3\0005\5\f\0>\5\1\0045\5\r\0>\5\2\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\rProblems\15text_align\tleft\rfiletype\ftrouble\1\0\4\ttext\18File Explorer\14highlight\ntitle\15text_align\vcenter\rfiletype\rNvimTree\15highlights\ntitle\1\0\0\1\0\3\bgui\tbold\nguifb\f#d69020\nguibg\f#1a1b26\26diagnostics_indicator\0\fnumbers\1\0\2\16diagnostics\rnvim_lsp\fstyling\nslant\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n%\0\1\6\0\1\0\0064\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\1K\0\1\0\nsetup—\1\1\0\5\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0003\2\t\0B\0\2\1K\0\1\0\0\20on_server_ready\aui\1\0\0\nicons\1\0\0\1\0\3\23server_uninstalled\b‚úó\21server_installed\b‚úì\19server_pending\b‚ûú\rsettings\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nı\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\3\0\0\thelp\vpacker\20buftype_exclude\1\3\0\0\rterminal\vnofile\1\0\4\25space_char_blankline\6 \21show_end_of_line\1\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
