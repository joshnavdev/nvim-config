vim.g.mapleader = " "

local keymap = vim.keymap

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save and Close
keymap.set('n', '<Leader>w', ':w<CR>')
keymap.set('n', '<Leader>q', ':q<CR>')

-- New tab
keymap.set('n', '<Leader>te', ':tabedit<CR>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-l>', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Move tabs
keymap.set('n', '<Leader>1', '1gt')
keymap.set('n', '<Leader>2', '2gt')
keymap.set('n', '<Leader>3', '3gt')
keymap.set('n', '<Leader>4', '4gt')
keymap.set('n', '<Leader>5', '5gt')
keymap.set('n', '<Leader>6', '6gt')
keymap.set('n', '<Leader>7', '7gt')
keymap.set('n', '<Leader>8', '8gt')
keymap.set('n', '<Leader>9', '9gt')
keymap.set('n', '<Leader>0', ':tablast<CR>')
