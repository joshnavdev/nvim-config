" Fundamentals "{{{
" ---------------------------------------------------------------------
set noerrorbells
set sw=2
set expandtab
set smartindent
set number
set rnu
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=UTF-8
set showmatch
set cursorline
set termguicolors
set showcmd
set ruler
set noshowmode
set colorcolumn=120
set scrolloff=5
highlight ColoColumn ctermbg=0 guibg=lightgrey
set nocompatible

filetype plugin on
"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
" au BufNewFile,BufRead *.es6 setf javascript
" " TypeScript
" au BufNewFile,BufRead *.tsx setf typescriptreact
" " Markdown
" au BufNewFile,BufRead *.md set filetype=markdown
" " Flow
" au BufNewFile,BufRead *.flow set filetype=javascript

" set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

" autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
" autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
" autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
" if exists("&termguicolors") && exists("&winblend")
  " syntax enable
  " set termguicolors
  " set winblend=0
  " set wildoptions=pum
  " set pumblend=5
  " set background=dark
  " " Use NeoSolarized
  " colorscheme dracula
" endif
if exists("&winblend")
  set winblend=0
  set wildoptions=pum
  set pumblend=6
endif

syntax on
set t_Co=256
set cursorline
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" colorscheme dracula
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
" colorscheme onehalfdark
"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" vim: set foldmethod=marker foldlevel=0:
