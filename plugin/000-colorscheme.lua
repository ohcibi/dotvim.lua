vim.o.background = 'light'
vim.o.termguicolors = true
vim.g.PaperColor_Theme_Options = {
  theme = {
    default = {
      transparent_background = 1
    }
  }
}

vim.g.terminal_color_0 =  "#ffffff"
vim.g.terminal_color_1 =  "#c4493d"
vim.g.terminal_color_2 =  "#879a2d"
vim.g.terminal_color_3 =  "#e7c340"
vim.g.terminal_color_4 =  "#5d84b7"
vim.g.terminal_color_5 =  "#9572b2"
vim.g.terminal_color_6 =  "#64a6ad"
vim.g.terminal_color_7 =  "#4d4d4c"
vim.g.terminal_color_8 =  "#8e908c"
vim.g.terminal_color_9 =  "#c82829"
vim.g.terminal_color_10 = "#718c00"
vim.g.terminal_color_11 = "#eab700"
vim.g.terminal_color_12 = "#4271ae"
vim.g.terminal_color_13 = "#8959a8"
vim.g.terminal_color_14 = "#3e999f"
vim.g.terminal_color_15 = "#1d1f21"
vim.g.terminal_color_background = vim.g.terminal_color_7
vim.g.terminal_color_foreground = vim.g.terminal_color_2

vim.cmd('hi SignColumn guibg=NONE ctermbg=NONE')
vim.cmd('hi Conceal guibg=NONE gui=bold guifg=darkred')
