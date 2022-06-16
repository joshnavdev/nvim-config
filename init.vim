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
set showcmd
set ruler
set noshowmode
set colorcolumn=120
set scrolloff=5
highlight ColoColumn ctermbg=0 guibg=lightgrey
set nocompatible

" filetype plugin on
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
  " set wildoptions=pu
  " set pumblend=5
  " set background=dark
  " " " Use NeoSolarized
  " let g:neosolarized_italic = 1
  " set t_Co=256
  " set cursorline

" endif
" if exists("&winblend")
  " set winblend=0
  " set wildoptions=pum
  " set pumblend=6
" endif

" if exists('+termguicolors')
  " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  " set termguicolors
" endif
" " colorscheme dracula
" let g:gruvbox_contrast_dark = "hard"
" colorscheme gruvbox
" colorscheme onehalfdark
" colorscheme NeoSolarized
"
" syntax on
" set t_Co=256
" set cursorline
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
let g:airline_theme='one'
set background=dark
let g:one_allow_italics=1
colorscheme one

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if exists("&winblend")
  set winblend=0
  set wildoptions=pum
  set pumblend=6
endif
hi Normal guibg=NONE ctermbg=NONE
" hi Normal guibg=NONE

" if (empty($TMUX))
  " if (has("nvim"))
    " "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " endif
  " "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  " if (has("termguicolors"))
    " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    " set termguicolors
  " endif
" endif

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" vim: set foldmethod=marker foldlevel=0:
