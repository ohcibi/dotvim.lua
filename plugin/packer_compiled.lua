-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ohcibi/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?.lua;/Users/ohcibi/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?/init.lua;/Users/ohcibi/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?.lua;/Users/ohcibi/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ohcibi/.cache/nvim/packer_hererocks/2.1.1727870382/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["LuaSnip-snippets.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/LuaSnip-snippets.nvim",
    url = "https://github.com/molleweide/LuaSnip-snippets.nvim"
  },
  ale = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-git"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["html5.vim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/html5.vim",
    url = "https://github.com/othree/html5.vim"
  },
  ["is.vim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/is.vim",
    url = "https://github.com/haya14busa/is.vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mini.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["ranger.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\2\0B\0\2\1K\0\1\0\topen\16ranger-nvim\frequire�\1\1\0\a\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0003\6\v\0=\6\f\5B\0\5\1K\0\1\0\rcallback\0\1\0\2\rcallback\0\fnoremap\2\5\15<leader>ef\6n\20nvim_set_keymap\bapi\bvim\1\0\1\18replace_netrw\2\nsetup\16ranger-nvim\frequire\0" },
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/ranger.nvim",
    url = "https://github.com/kelly-lin/ranger.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-colorschemes"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-colorschemes",
    url = "https://github.com/flazz/vim-colorschemes"
  },
  ["vim-dirvish"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-dirvish",
    url = "https://github.com/justinmk/vim-dirvish"
  },
  ["vim-dirvish-git"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-dirvish-git",
    url = "https://github.com/kristijanhusak/vim-dirvish-git"
  },
  ["vim-ember-hbs"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-ember-hbs",
    url = "https://github.com/joukevandermaas/vim-ember-hbs"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fish"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-fish",
    url = "https://github.com/dag/vim-fish"
  },
  ["vim-gnupg"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-gnupg",
    url = "https://github.com/jamessan/vim-gnupg"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-js"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-js",
    url = "https://github.com/yuezk/vim-js"
  },
  ["vim-js-pretty-template"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-js-pretty-template",
    url = "https://github.com/Quramy/vim-js-pretty-template"
  },
  ["vim-json"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-json",
    url = "https://github.com/bdmartin/vim-json"
  },
  ["vim-jst"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-jst",
    url = "https://github.com/briancollins/vim-jst"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-sneak",
    url = "https://github.com/justinmk/vim-sneak"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/vim-toml",
    url = "https://github.com/cespare/vim-toml"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/Users/ohcibi/.local/share/nvim/site/pack/packer/start/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: ranger.nvim
time([[Config for ranger.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\2\0B\0\2\1K\0\1\0\topen\16ranger-nvim\frequire�\1\1\0\a\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0003\6\v\0=\6\f\5B\0\5\1K\0\1\0\rcallback\0\1\0\2\rcallback\0\fnoremap\2\5\15<leader>ef\6n\20nvim_set_keymap\bapi\bvim\1\0\1\18replace_netrw\2\nsetup\16ranger-nvim\frequire\0", "config", "ranger.nvim")
time([[Config for ranger.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
