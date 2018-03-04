
" ----------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'ScrollColors'
Plugin 'jnurmine/zenburn'
Plugin 'flazz/vim-colorschemes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ----------------------------------------

set t_Co=256
colorscheme zenburn

" ----------------------------------------
set splitbelow
map <C-n> :split :enew<CR>

nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

