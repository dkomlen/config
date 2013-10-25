set nu
set backspace=2
set mouse=a
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set t_Co=256
set foldmethod=indent
set tags=./tags,tags;$HOME

set nobackup    " don't keep backup files
set noswapfile  " don't create swap files
" ===================================================

nnoremap <M-left> :vertical resize -5<cr>
nnoremap <M-down> :resize +5<cr>
nnoremap <M-up> :resize -5<cr>
nnoremap <M-right> :vertical resize +5<cr>

" ===================================================
" ctrlp
map <C-S-r> <C-p>
let g:ctrlp_show_hidden = 1

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" ack
nmap <C-h> <Esc>:Ack!

" tagbar
nmap <F8> :TagbarToggle<CR>

" ==================================================

nmap , :
map <C-n> :vsplit :enew<CR>
map <C-q> :q!<CR>
imap <C-q> <Esc><C-q>

map <F9> :!python %<CR>
imap <F9> <Esc><F9>

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
" ==================================================

" Load pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()

colors zenburn

filetype on
filetype plugin indent on
set t_Co=256
syntax on

hi clear SpellBad
:hi SpellBad cterm=underline ctermfg=red

