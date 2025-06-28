return {
  { 'nvim-treesitter/nvim-treesitter' },
  { 'neovim/nvim-lspconfig' },
  --{ 'HerringtonDarkholme/yats.vim' },
  { 'L3MON4D3/LuaSnip' },
  { 'NLKNguyen/papercolor-theme' },
  { 'Quramy/vim-js-pretty-template' },
  { 'cespare/vim-toml' },
  { 'dag/vim-fish' },
  { 'dense-analysis/ale' },
  { 'echasnovski/mini.nvim' },
  { 'editorconfig/editorconfig-vim' },
  { 'hashivim/vim-terraform' },
  { 'haya14busa/is.vim' },
  { 'honza/vim-snippets' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-emoji' },
  { 'hrsh7th/nvim-cmp' },
  { 'jamessan/vim-gnupg' },
  { 'justinmk/vim-dirvish' },
  { 'kristijanhusak/vim-dirvish-git' },
  { 'kylechui/nvim-surround' },
  { 'lewis6991/gitsigns.nvim' },
  { 'mbbill/undotree' },
  { 'molleweide/LuaSnip-snippets.nvim' },
  { 'numToStr/Comment.nvim' },
  { 'othree/html5.vim' },
  { 'bdmartin/vim-json' },
  { 'pangloss/vim-javascript' },
  { 'briancollins/vim-jst' },
  { 'petertriho/cmp-git', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'prettier/vim-prettier' },
  { 'rafamadriz/friendly-snippets' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'tpope/vim-eunuch' },
  { 'tpope/vim-repeat' },
  { 'windwp/nvim-autopairs' },
  { 'yuezk/vim-js' },
  { 'joukevandermaas/vim-ember-hbs' },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' }
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { "kelly-lin/ranger.nvim" },

  -- require('plugins.syntax')(use)
  { "HiPhish/rainbow-delimiters.nvim" }
}
