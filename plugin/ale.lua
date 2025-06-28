vim.g.ale_virtualtext_cursor = 1
vim.g.ale_detail_to_floating_preview = 1
vim.g.ale_virtualtext_prefix = '✘ '
vim.g.ale_sign_error = '✘'
vim.g.ale_sign_warning = '﹅'
vim.g.ale_fixers = {
  ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
  javascript = {'eslint'}
}
vim.g.ale_linters = {
  handlebars = { 'ember-template-lint' },
  html = { 'htmlhint' },
  javascript = {'eslint'}
}
vim.api.nvim_create_autocmd(
  { 'FileType' },
  { pattern = 'ale-preview', command = 'set wrap' }
)

vim.api.nvim_set_hl(0, 'ALEErrorSign', { ctermfg = 'darkred', fg = '#990000' })
vim.api.nvim_set_hl(0, 'ALEError', { italic = true, bold = true, ctermfg = 'darkred', fg = '#990000', bg = '#ffeeee' })
vim.api.nvim_set_hl(0, 'ALEWarning', { italic = true, bold = true, ctermfg = 'darkyellow', fg = '#999900', bg = '#ffffee' })
vim.api.nvim_set_hl(0, 'ALEWarningSign', { ctermfg = 'darkyellow', fg = '#999900' })
vim.api.nvim_set_hl(0, 'ALEErrorLine', { italic = true, fg = '#990000', bg = '#ffeeee' })
vim.api.nvim_set_hl(0, 'ALEWarningLine', { italic = true, fg = '#999900', bg = '#ffffee' })
