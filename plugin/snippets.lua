require('luasnip').snippets = require("luasnip_snippets").load_snippets()
require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_snipmate').lazy_load()
