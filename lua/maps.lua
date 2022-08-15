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
keymap.set('n', '<C-s><C-s>', ':split<Return><C-w>w')
keymap.set('n', '<C-s><C-v>', ':vsplit<Return><C-w>w')

-- Move window
-- keymap.set('n', '<C-h>', '<C-w>h')
-- keymap.set('n', '<C-j>', '<C-w>j')
-- keymap.set('n', '<C-k>', '<C-w>k')
-- keymap.set('n', '<C-l>', '<C-w>l')

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

-- Writing improve maps
keymap.set('i', '<C-e>', '<C-o>$')
