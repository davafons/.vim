" General vim settings

" Spaces & Tabs
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set expandtab           " tabs are spaces
set smarttab            " insert tabs according to shiftwidth, not tabstop
set autoindent          " enable auto indentation
set copyindent          " copy previous indentation on autoindenting
set shiftround          " use multiples of shiftwidth when indenting


" UI Config
set number              " show line numbers
set cursorline          " highlight current line
set showcmd             " show as commands are typed
set wildmenu            " visual autocomplete for command menu
set showmatch           " show matching parenthesis
set laststatus=2        " always display status line
set noshowmode          " don't show --INSERT-- --NORMAL-- modes
set hidden              " hide buffers instead of closing
set nowrap              " don't wrap lines
set title               " show terminal's title
set backspace=indent,eol,start  " Godmode backspace
set noerrorbells        " no error beep


" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set smartcase           " search lo/up case if no uppercase entered

" Files
"set autochdir          " automatically set working directory when cd

" Buffer
set history=1000        " remember more commands and seach history
set undolevels=1000     " a lot of undo levelsc

" Filetype options
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


