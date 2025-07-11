return function(use)
  use 'neovim/nvim-lspconfig'
  use 'HerringtonDarkholme/yats.vim'
  use 'L3MON4D3/LuaSnip'
  use 'NLKNguyen/papercolor-theme'
  use 'Quramy/vim-js-pretty-template'
  use 'cespare/vim-toml'
  use 'dag/vim-fish'
  use 'dense-analysis/ale'
  use 'echasnovski/mini.nvim'
  use 'editorconfig/editorconfig-vim'
  use 'flazz/vim-colorschemes'
  use 'hashivim/vim-terraform'
  use 'haya14busa/is.vim'
  use 'honza/vim-snippets'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-emoji'
  use 'hrsh7th/nvim-cmp'
  use 'jamessan/vim-gnupg'
  use 'justinmk/vim-dirvish'
  use 'justinmk/vim-sneak'
  use 'kristijanhusak/vim-dirvish-git'
  use 'kylechui/nvim-surround'
  use 'lewis6991/gitsigns.nvim'
  use 'mbbill/undotree'
  use 'molleweide/LuaSnip-snippets.nvim'
  use 'numToStr/Comment.nvim'
  use 'othree/html5.vim'
  use 'bdmartin/vim-json'
  use 'pangloss/vim-javascript'
  use 'briancollins/vim-jst'
  use({'petertriho/cmp-git', requires = 'nvim-lua/plenary.nvim'})
  use 'prettier/vim-prettier'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-repeat'
  use 'wbthomason/packer.nvim'
  use 'windwp/nvim-autopairs'
  use { 'windwp/nvim-ts-autotag', requires = 'nvim-treesitter/nvim-treesitter' }
  use 'yuezk/vim-js'
  use 'joukevandermaas/vim-ember-hbs'

  use { 'iamcco/markdown-preview.nvim', run = function() vim.fn["mkdp#util#install"]() end }
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  require('plugins.syntax')(use)
end
