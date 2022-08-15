local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end


vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip' -- Snipper
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscoder-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin form Neovim's built-in LSP client
  use 'williamboman/mason.nvim' -- Allow to easily manager LSP Servers
  use 'williamboman/mason-lspconfig.nvim' -- Helper for lspconfig with mason

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'

  use 'lewis6991/gitsigns.nvim'

  use 'dinhhuy258/git.nvim' -- fork git blame & browser
  use 'tpope/vim-fugitive'

  use "b0o/schemastore.nvim" -- JSON SchemaStore

  use "terrortylor/nvim-comment" -- commenter

  use 'folke/lsp-colors.nvim' -- creates missing LSP diagnostics highlight groups for color schemes


  use { "alexghergh/nvim-tmux-navigation" } -- Navigate between windows

end)
