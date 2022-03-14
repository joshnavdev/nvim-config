if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'dracula/vim',{'as': 'dracula'}
" Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'morhetz/gruvbox'

if has("nvim")
" Language Client
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
Plug 'rhysd/git-messenger.vim' "Show git commit information for current line using <leader>gm or try to use :Git Blame
Plug 'preservim/nerdtree' " Arbol de directons con <Leder>nt
Plug 'ryanoasis/vim-devicons' " Para mostrar mejores iconos, bug en wsl2 https://github.com/ryanoasis/vim-devicons/issues/366#issuecomment-840235070
Plug 'preservim/nerdcommenter' " Para comentar usando los comando definidos en la documentacion
Plug 'caenrique/nvim-toggle-terminal' " Para mostrat y ocultar terminal
Plug 'pangloss/vim-javascript'
" File Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator' " Para mejorar la navegacion entre paneles
endif

call plug#end()

