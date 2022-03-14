nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>
nnoremap <silent> <C-x> :ToggleTabTerminal<Enter>
tnoremap <silent> <C-x> <C-\><C-n>:ToggleTabTerminal<Enter>

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

