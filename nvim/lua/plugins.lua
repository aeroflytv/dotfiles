local status, packer = pcall(require, 'packer')
if (not status ) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' },
  } -- Theme
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } -- Lualine
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig' -- LSP
  use 'L3MON4D3/LuaSnip'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = {{ 'nvim-lua/plenary.nvim' }}
  }
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kyazdani42/nvim-web-devicons' -- File Icons
  use 'simrat39/rust-tools.nvim' --- rust tools

end)
