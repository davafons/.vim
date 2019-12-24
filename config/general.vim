"  +----------------------------------------------+
"  |                                              |
"  |             General Vim Settings             |
"  |                                              |
"  +----------------------------------------------+


" ================ Default Indentation ====================
set tabstop=2           " Number of visual spaces per TAB
set shiftwidth=2        " When indenting with '>', use 4 spaces width
set expandtab           " Tabs are spaces
set smarttab            " Insert tabs according to shiftwidth, not tabstop
set autoindent          " Enable auto indentation
set copyindent          " Copy previous indentation on auto indenting
set shiftround          " Use multiples of shiftwidth when indenting



" ================  UI Configuration  ====================
set cursorline          " Highlight current line
set showcmd             " Show as commands are typed
set wildmenu            " Visual autocomplete for command menu
set showmatch           " Show matching parenthesis
set laststatus=2        " Always display status line
set noshowmode          " Don't show --INSERT-- --NORMAL-- modes
set hidden              " Hide buffers instead of closing
set title               " Show terminal's title
set backspace=indent,eol,start  " God-mode backspace
set noerrorbells        " No error beep
set textwidth=88        " Force wrap lines at 80
set colorcolumn=89      " Show column limit at line 80
set number relativenumber " Hybrid number line



" ================     Searching      ====================
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches
set ignorecase
set smartcase           " Search lo/up case if no uppercase entered



" ================       Buffer       ====================
set history=1000        " Remember more commands and search history
set undolevels=1000     " A lot of undo levels
set undodir=~/.vim/undodir
set undofile

" Quickfix
augroup qf
    au!
    au FileType qf set nobuflisted
    au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"| bd |endif
augroup END

" Terminal
augroup term
    au!
    au TerminalOpen * set nobuflisted
augroup END



" ================       Files        ====================
au BufRead,BufNewFile *.pl set filetype=prolog
au BufRead,BufNewFile *.egg set filetype=egg
