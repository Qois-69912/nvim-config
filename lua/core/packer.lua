-- Packer.lua

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  print("Relaunch neovim");
  return
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Colorscheme
  use {'tanvirtin/monokai.nvim', commit = 'b8bd44d'}

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1'
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Comment
  use {
    'numToStr/Comment.nvim',
    tag = 'v0.8.0',
  }

  -- Surround
  use {
    'kylechui/nvim-surround',
    tag = 'v2.1.0',
  }

  -- Auto Close
  use {
    'm4xshen/autoclose.nvim',
    commit = '2321727',
  }

  -- Coc
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
