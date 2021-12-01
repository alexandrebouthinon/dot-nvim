-----------------------------------------------------------
-- Plugins declaration
-----------------------------------------------------------
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'evprkr/galaxian-vim'
  use 'kyazdani42/nvim-web-devicons'

  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    config = function()
      vim.g.dashboard_default_executive = 'telescope'
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    require = 'nvim-lua/plenary.nvim',
  }

  use 'f-person/git-blame.nvim'
  use 'kdheepak/lazygit.nvim'

  use 'github/copilot.vim'
end)

