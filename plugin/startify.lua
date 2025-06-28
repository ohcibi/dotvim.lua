vim.g.startify_change_to_dir = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_files_number = 5
vim.g.startfy_session_autoload = 1
vim.g.startify_bookmarks = {
  { Rc =  '~/.config/nvim/init.lua' },
  { Rp =  '~/.config/nvim/plugin' },
  { Rs =  '~/.config/nvim/lua' },
  { F =  '~/.config/fish' },
}

vim.g.startify_commands = {
  { T =  {' Open Terminal', ':terminal'}},
  { S =  {' Split horizontal', ':split'}},
  { Sv =  {' Split vertical', ':vsplit'}},
  { ide =  {' Open "ide" config', 'execute "below" "13split" | execute "term" | execute "above" "80vsplit" | term'}},
  { C =  {' Run :checkhealth', ':checkhealth'}},
  { U =  {' Run :UpdateRemotePlugins', ':UpdateRemotePlugins'}},
  { Q =  {' Exit Vim', ':qa'}},
  { ['!Q'] =  {' Exit Vim not saving any buffer', ':qa!'}},
}
vim.g.startify_lists = {
  { type = 'sessions', header =  {'   廊'} },
  { type = 'dir', header =  {'       ' .. vim.fn.getcwd() } },
  { type = 'files', header =  {'    '} },
  { type = 'bookmarks', header =  {'   '} },
  { type = 'commands', header =  {'   ﲵ'} },
}

local devicons = require('nvim-web-devicons')
local git_files = vim.fn.systemlist('git ls-files 2> /dev/null')
function git_entry(entry_path)
  if table.getn(git_files) > 0 then
    entry_path = entry_path or ''
    return vim.fn.system('git log -n 1 --pretty="@%h from %cr" --abbrev-commit -- ' .. entry_path)
  end
end

function _G.startify_entry_format(absolute_path, entry_path)
  entry_path = entry_path or ''
  return '' .. ( devicons.get_icon(absolute_path) or '') .. ' ' .. entry_path .. ' ' .. ( git_entry(entry_path) or '')
end
vim.api.nvim_exec([[
function! StartifyEntryFormat()
  echo 'absolute_path'
  return "v:lua.startify_entry_format('absolute_path', 'entry_path')"
endfunction
]], false)
