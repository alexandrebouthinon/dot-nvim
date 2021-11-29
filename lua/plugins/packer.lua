-----------------------------------------------------------
-- Plugins declaration
-----------------------------------------------------------
return require('packer').startup(function(use)
  use 'srcery-colors/srcery-vim'
  use 'wbthomason/packer.nvim'

  use 'glepnir/dashboard-nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'beauwilliams/statusline.lua'
  use 'numToStr/FTerm.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'romgrk/barbar.nvim'

  use 'f-person/git-blame.nvim'
  use 'kdheepak/lazygit.nvim'

  use 'github/copilot.vim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

end)

