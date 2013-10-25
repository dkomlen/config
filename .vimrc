set backspace=2
set mouse=a
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

map <C-S-r> <C-p>
map <C-q> :q!<CR>
imap <C-q> <Esc><C-q>

map <F9> :!python %<CR>
imap <F9> <Esc><F9>

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

set t_Co=256
set nu

colors zenburn
let g:ctrlp_show_hidden = 1
