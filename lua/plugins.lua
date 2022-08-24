local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- To use packer

  use {
    'svrana/neosolarized.nvim', -- Default theme
    requires = { 'tjdevries/colorbuddy.nvim' } -- Required for customization
  }

  use {
    'nvim-treesitter/nvim-treesitter', -- highlights
    run = ':TSUdate'
  }

  use 'windwp/nvim-autopairs' -- autocompletation pairs
  use 'windwp/nvim-ts-autotag' -- autocompletation tag

  use 'hoob3rt/lualine.nvim' -- Statusline

  use 'kyazdani42/nvim-web-devicons' -- File icons

  use 'alexghergh/nvim-tmux-navigation' -- Navigate between windows

  use {
    'nvim-telescope/telescope.nvim', -- Telescope with file browser
    requires = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-file-browser.nvim'} }
  }

  use 'akinsho/nvim-bufferline.lua' -- tabs

  use "terrortylor/nvim-comment" -- commenter

end)
