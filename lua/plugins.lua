local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- To use packer

  -- themes
  -- use {
  --   'svrana/neosolarized.nvim', -- Default theme
  --   requires = { 'tjdevries/colorbuddy.nvim' } -- Required for customization
  -- }
  -- use "EdenEast/nightfox.nvim" -- Good themes
  -- use 'folke/tokyonight.nvim' -- tokyo themes

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
    requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-file-browser.nvim' } }
  }

  use 'akinsho/nvim-bufferline.lua' -- tabs

  use "terrortylor/nvim-comment" -- commenter

  -- LSP configuration and more
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use {
    'jose-elias-alvarez/null-ls.nvim', -- eslint linter
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use 'MunifTanjim/prettier.nvim' -- prettier formatting

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind-nvim' -- vscoder-like pictograms

  use 'lewis6991/gitsigns.nvim' -- git change ui

  use 'dinhhuy258/git.nvim' -- fork git blame & browser
  use 'tpope/vim-fugitive'

  use "b0o/schemastore.nvim" -- json schemas to use with lspconfig
end)
