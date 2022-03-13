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

call plug#begin()
  " Plugin Section
  " Themes
  " Plug 'dracula/vim'
  Plug 'morhetz/gruvbox'
  
  " IDE
  Plug 'easymotion/vim-easymotion' " Para hacer busquedas con dos dig y moverte
  Plug 'scrooloose/nerdtree' " Arbol de directons con <Leder>nt
  Plug 'christoomey/vim-tmux-navigator' " Para mejorar la navegacion entre paneles
  Plug 'ryanoasis/vim-devicons' " Para mostrar mejores iconos, bug en wsl2 https://github.com/ryanoasis/vim-devicons/issues/366#issuecomment-840235070
  Plug 'preservim/nerdcommenter' " Para comentar usando los comando definidos en la documentacion
  Plug 'dense-analysis/ale' " Para lintear codigo y format usando prettier
  Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
  Plug 'itchyny/lightline.vim' "Para customizar el lightline
  Plug 'caenrique/nvim-toggle-terminal' " Para mostrat y ocultar terminal
  
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

  "Syntax highlighting
  Plug 'sheerun/vim-polyglot'

  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Otros sacados de https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  " Plug 'mhinz/vim-startify'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Enable theme and configuration
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" Leader Key for commands
let mapleader=" "

" Atajos -> nmap(normal) - imap(insert) - vmap(visual)
" easymotion configuration
nmap <Leader>s <Plug>(easymotion-s2)

" nerdtree configuration
let NERDTreeQuitOnOpen=1
nmap <leader>nt :NERDTreeFind<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" nerdtree configuration end

" nerdcommenter configuration
" nerdcommenter end

" ale configuration
let g:ale_fixers = {}
let g:ale_disable_lsp = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" Fix files automatically on save
let g:ale_fix_on_save = 1
" let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_fixers['javascript'] = ['eslint']
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
nmap <F6> <Plug>(ale_fix)
" ale configuration end

let g:UltiSnipsExpandTrigger="<Nop>"
" navigation conf
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
" navigation confend

" fzf configuration
nnoremap <C-p> :FZF<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit'
  \}

" fzf configuration end

"coc conf
"Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<Down>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<Up>" : "\<S-Tab>"

function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>
"coc confend

" nvim-toogle-terminal conf
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>
nnoremap <silent> <C-x> :ToggleTabTerminal<Enter>
tnoremap <silent> <C-x> <C-\><C-n>:ToggleTabTerminal<Enter>

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
" confend

" Own commands
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
inoremap <C-e> <C-o>$

