"  +----------------------------------------------+
"  |                                              |
"  |             General Vim Settings             |
"  |                                              |
"  +----------------------------------------------+


" ================ Default Indentation ====================
set tabstop=2           " Number of visual spaces per TAB
set shiftwidth=2        " When indenting with '>', use 2 spaces width
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
set textwidth=88        " Force wrap lines at 89
set colorcolumn=89      " Show column limit at line 89
set number relativenumber " Hybrid number line
set updatetime=300
set shortmess+=c



" ================     Searching      ====================
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches
set ignorecase          " Ignore cases on searches
set smartcase           " Search lo/up case if no upper-case entered

set wildignore+=*/__pycache__/*



" ================       Buffer       ====================
set history=1000        " Remember more commands and search history
set undolevels=1000     " A lot of undo levels
set undodir=~/.vim/undodir
set undofile

" Terminal
" augroup term
"     au!
"     au TerminalOpen * set nobuflisted
" augroup END



" ================  File extensions   ====================
au BufRead,BufNewFile *.pl set filetype=prolog
au BufRead,BufNewFile *.egg set filetype=egg


function! BrazilWorkspaceRoot()
  let l:working_directory = getcwd()
  let l:workspace_root = split(l:working_directory, "/")[0:4]
  return "/" . join(l:workspace_root, "/")
endfunction

function! BrazilOpenJDKLocation()
  let l:workspace_directory=BrazilWorkspaceRoot()
  let l:jdk_path=""
  if (isdirectory(l:workspace_directory."/env/OpenJDK8-1.1"))
      let l:jdk_path=l:workspace_directory."/env/OpenJDK8-1.1"
  endif

  if (isdirectory(l:workspace_directory."/env/JDK8-1.0"))
      let l:jdk_path=l:workspace_directory."/env/JDK8-1.0"
  endif
  return l:jdk_path . "/runtime/jdk1.8/"
endfunction

function! SetBrazilJDKHome()
  let $JDK_HOME=BrazilOpenJDKLocation()
endfunction
call SetBrazilJDKHome()
