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

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

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

" ack
nmap <C-h> <Esc>:Ack!

" tagbar
nmap <F8> :TagbarToggle<CR>

" python
map <F9> :!python %<CR>
imap <F9> <Esc><F9>

" ==================================================
" edit shortcuts

nmap , :

nmap <C-a> ggVG
vnoremap <C-c> "+y
nnoremap <C-v> "+p
imap <C-v> <Esc><C-v>i

map <C-n> :vsplit :enew<CR>
map <C-q> :q!<CR>
imap <C-q> <Esc><C-q>

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

" ==================================================

" pathogen
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

