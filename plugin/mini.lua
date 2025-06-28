require('mini.ai').setup()
require('mini.align').setup({
  mappings = {
    start = 'gm',
    start_with_preview = 'gM',
  },

})
-- require('mini.animate').setup()
require('mini.bufremove').setup()
--require('mini.indentscope').setup({
  --draw = {
    --delay = 20,
    --animation = function(s, n)
      --return 80*(s-n)/n
    --end
  --},
  --symbol = '⌇'
--})
require('mini.trailspace').setup()
require('mini.sessions').setup()
local starter = require('mini.starter')
local hook_top_pad_10 = function(content)
  -- Pad from top
  for _ = 1, 10 do
    -- Insert at start a line with single content unit
    table.insert(content, 1, { { type = 'empty', string = '' } })
  end
  return content
end
local builtin = starter.sections.builtin_actions()
builtin[1].name = 'Empty Buffer'
starter.setup({
  items = {
    starter.sections.sessions(5, true),
    starter.sections.recent_files(5, true),
    starter.sections.recent_files(3, false),
    builtin,
    { name = 'Config file', action = 'edit ~/.config/nvim/init.lua', section = 'Builtin actions' },
  },
  content_hooks = {
    starter.gen_hook.adding_bullet(),
    starter.gen_hook.padding(0, 2),
    starter.gen_hook.aligning('center', 'top'),
    starter.gen_hook.indexing('all', { 'Builtin actions' })
  },
})
