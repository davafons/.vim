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

" GUI Config
set guioptions-=L       " remove left-hand scroll bar

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set smartcase           " search lo/up case if no uppercase entered

" Movement, mappings
nnoremap j gj
nnoremap k gk
noremap <A-j> gT
noremap <A-k> gt
set backspace=indent,eol,start " don't stop backspace

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Files 
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown " markdown highlighting detection for .md files (and not .markdown only)
set autochdir           " automatically set working directory when cd
