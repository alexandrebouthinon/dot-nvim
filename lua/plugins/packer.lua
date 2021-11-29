-----------------------------------------------------------
-- Packer autoinstallation
-----------------------------------------------------------
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

-----------------------------------------------------------
-- Plugins declaration
-----------------------------------------------------------
return require('packer').startup(function(use)
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kdheepak/lazygit.nvim'
  use 'srcery-colors/srcery-vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'beauwilliams/statusline.lua'
  use 'glepnir/dashboard-nvim'
  use 'f-person/git-blame.nvim'
  use 'numToStr/FTerm.nvim'

  -- To run sync command automatically
  if packer_bootstrap then
    require('packer').sync()
  end
end)

