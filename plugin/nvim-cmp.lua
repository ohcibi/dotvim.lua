-- Set up nvim-cmp.
local cmp = require'cmp'
cmp.register_source('emoji', require('cmp_emoji').new())
cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  --window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  --},
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<S-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<S-CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources(
    {
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'omni' },
      { name = 'luasnip' },
      { name = 'emoji' },
    },
    { { name = 'git' }, },
    { { name = 'buffer' }, }
  )
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' }, -- You can specify the `git` source if you were installed it.
  }, {
    { name = 'buffer' },
    { name = 'path' },
    { name = 'emoji' },
  })
})

require('cmp').register_source('cmdline', require('cmp_cmdline').new())
cmp.setup.cmdline(':', {
  sources = {
    { name = 'cmdline' },
    { name = 'path' }
  }
})

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require'lspconfig'.ts_ls.setup({
  on_attach = on_attach,
}, {
  cmd = { "/Users/ohcibi/.volta/bin/tsserver", "--stdio", "--tsserver-path", os.getenv("HOME") .. ".volta/tools/image/packages/typescript-language-server/lib" },
  capabilities = capabilities
})

require("cmp_git").setup()
