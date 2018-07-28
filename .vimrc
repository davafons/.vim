""" VIM configuration file

" System configuration

" On Windows, also use '.vim' instead of 'vimfiles'
if has('win32')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif" Colors

" Colors

colorscheme codedark    " VS color scheme

syntax enable           " enable syntax processing

" Spaces & Tabs

set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in TAB
set shiftwidth=4        " when identing with '>', use 4 spaces width
set expandtab           " tabs are spaces
set ai                  " enable auto identation 

" UI Config
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{((}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Movement
nnoremap j gj
nnoremap k gk
