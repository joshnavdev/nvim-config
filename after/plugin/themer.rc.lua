local status, themer = pcall(require, 'themer')
if (not status) then return end

themer.setup({
  colorscheme = 'darknight',
  transparent = false,
  styles = {
    comment = { style = 'italic' },
    keyword = { style = 'italic,bold' },
  },
  enable_installer = true,
})

-- vim.cmd[[highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red]]
-- vim.cmd[[highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red]]
-- vim.cmd[[highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red]]
-- vim.cmd[[highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red]]
vim.cmd[[highlight DiffAdd gui=none guifg=none guibg=#273732]]
vim.cmd[[highlight DiffDelete gui=none guifg=none guibg=#3f2d32]]
vim.cmd[[highlight DiffChange gui=none guifg=none guibg=#263549]]
vim.cmd[[highlight DiffText gui=none guifg=none guibg=#813c3c]]
-- vim.cmd[[highlight DiffChange gui=none guifg=none guibg=#3f2d32]]
