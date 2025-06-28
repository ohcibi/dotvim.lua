vim.opt.termguicolors = true
require('bufferline').setup{
  options = {
    groups = {
      options = {
        toggle_hidden_on_enter = true -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
      },
      items = {
        {
          name = " ", -- Mandatory
          highlight = { fg = '#000088',  sp = "#000088" }, -- Optional
          priority = 2, -- determines where it will appear relative to other groups (Optional)
          icon = "", -- Optional
          matcher = function(buf) -- Mandatory
            local bname = vim.api.nvim_buf_get_name(buf.id)
            return bname:match('%.test') or bname:match('%.spec')
          end,
        },
        {
          name = "Docs",
          icon = "",
          highlight = { fg = "#008800", sp = "#008800" },
          auto_close = false,  -- whether or not close this group if it doesn't contain the current buffer
          matcher = function(buf)
            local bname = vim.api.nvim_buf_get_name(buf.id)
            return bname:match('%.md') or bname:match('%.txt')
          end,
          separator = { -- Optional
            style = require('bufferline.groups').separator.tab
          },
        }
      }
    }
  }
}
