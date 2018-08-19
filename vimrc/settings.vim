" General vim settings

" Spaces & Tabs
set tabstop=2           " Number of visual spaces per TAB
set shiftwidth=2        " When indenting with '>', use 4 spaces width
set expandtab           " Tabs are spaces
set smarttab            " Insert tabs according to shiftwidth, not tabstop
set autoindent          " Enable auto indentation
set copyindent          " Copy previous indentation on autoindenting
set shiftround          " Use multiples of shiftwidth when indenting
set cinoptions+=L0      " Don't deindent when typing std::
set cinoptions+=g0      " Don't indent private:, public: ... labels


" UI Config
set number              " Show line numbers
set cursorline          " Highlight current line
set showcmd             " Show as commands are typed
set wildmenu            " Visual autocomplete for command menu
set showmatch           " Show matching parenthesis
set laststatus=2        " Always display status line
set noshowmode          " Don't show --INSERT-- --NORMAL-- modes
set hidden              " Hide buffers instead of closing
set title               " Show terminal's title
set backspace=indent,eol,start  " Godmode backspace
set noerrorbells        " No error beep


" Searching
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches
set smartcase           " Search lo/up case if no uppercase entered


" Buffer
set history=1000        " Remember more commands and seach history
set undolevels=1000     " A lot of undo levels


" Filetype options
" Don't insert a comment when nl
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Use glsl syntax highlighting for .vs and .fs files
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

