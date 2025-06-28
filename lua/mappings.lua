function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end


-- general
-- don't jump when using *
nmap('*', '*<c-o>')
-- nmap('<leader><leader>s', ":%s/\<<C-r><C-w>\>/")

-- keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- Same when jumping around
nmap('g;', 'g;zz')

-- Begining & End of line in Normal mode
nmap('H', '^')
nmap('L', 'g_')

-- more natural movement with wrap on
nmap('j', 'gj')
nmap('k', 'gk')
vmap('j', 'gj')
vmap('k', 'gk')

-- Easy buffer navigation
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- Reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')


-- Easy window split; C-w v -> vv, C-w - s -> ss
nmap('vv', '<C-w>v')
nmap('ss', '<C-w>s')

-- terminal
tmap('<C-h>', '<C-\\><C-N><C-w>h')
tmap('<C-j>', '<C-\\><C-N><C-w>j')
tmap('<C-k>', '<C-\\><C-N><C-w>k')
tmap('<C-l>', '<C-\\><C-N><C-w>l')
imap('<C-h>', '<C-\\><C-N><C-w>h')
imap('<C-j>', '<C-\\><C-N><C-w>j')
imap('<C-k>', '<C-\\><C-N><C-w>k')
imap('<C-l>', '<C-\\><C-N><C-w>l')

-- telescope

nmap('gff', '<cmd>Telescope find_files<cr>')
nmap('<c-p>', '<cmd>Telescope find_files<cr>')
nmap('gfg', '<cmd>Telescope live_grep<cr>')
nmap('gfb', '<cmd>Telescope buffers<cr>')
nmap('gfj', '<cmd>Telescope jumplist<cr>')
nmap('ggc', '<cmd>Telescope git_commits<cr>')
nmap('ggl', '<cmd>Telescope git_bcommits<cr>')
nmap('ggs', '<cmd>Telescope git_status<cr>')

-- bufferline

nmap('gB', ':BufferLinePick<CR>')
nmap('gbP', ':BufferLineTogglePin<CR>')
nmap('gbn', ':BufferLineCycleNext<CR>')
nmap('gn', ':BufferLineCycleNext<CR>')
nmap('gbN', ':BufferLineCyclePrev<CR>')
nmap('gN', ':BufferLineCyclePrev<CR>')

-- sneak

nmap('<leader>s', '<Plug>Sneak_s')
nmap('<leader>S', '<Plug>Sneak_S')

-- ale

nmap('gld', '<Plug>(ale_detail)')

-- BufRemove
nmap('bd', ':lua MiniBufremove.delete(0)<cr>')
