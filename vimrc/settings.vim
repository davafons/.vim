" General vim settings

" Spaces & Tabs
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in TAB
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set expandtab           " tabs are spaces
set smartindent         " auto indent next level when starting a block
set autoindent          " enable auto indentation 

" UI Config
set number              " show line numbers
set cursorline          " highlight current line
set showcmd             " show as commands are typed
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " Not really sure 
set laststatus=2        " always display status line 
set noshowmode          " don't show --INSERT-- --NORMAL-- modes

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set smartcase           " search lo/up case if no uppercase entered

" Files
"set autochdir           " automatically set working directory when cd

" Paths to find headers
set path+=C:\MinGW\include
set path+=C:\MinGW\lib\gcc\mingw32\6.3.0\include\c++
set path+=$PWD/**
set path+=.,,**
