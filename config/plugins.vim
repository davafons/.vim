" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')



" ================ Colorschemes ====================
Plug 'lifepillar/vim-solarized8'            " Solarized dark theme



" ================ Interface    ====================
Plug 'itchyny/lightline.vim'                " Status bar for vim
Plug 'airblade/vim-gitgutter'               " Show git sign column
Plug 'scrooloose/nerdtree'                  " Folder Tree view
Plug 'ryanoasis/vim-devicons'               " Show icons in NerdTree
Plug 'jeffkreeftmeijer/vim-numbertoggle'    " Hybrid number line
Plug 'mhinz/vim-startify'                   " Start screen for vim


" ================ Lint/Compl   ====================
Plug 'Valloric/YouCompleteMe', {
      \ 'do': './install.py --clang-completer --java-completer --js-completer'
      \ }

Plug 'w0rp/ale'                             " Linting and Fixer



" ================ Tags         ====================
Plug 'majutsushi/tagbar'                    " Tags window
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/TagHighlight'



" ================ Style/Format ====================
Plug 'sheerun/vim-polyglot'                 " Syntax highlighting for + langs
Plug 'ntpeters/vim-better-whitespace'       " Highlight trailing whitespaces
Plug 'nathanaelkane/vim-indent-guides'      " Show indent guides
Plug 'ap/vim-buftabline'                    " Show buffers as a tabline
Plug 'junegunn/fzf', {
      \ 'dir': '~/.fzf',
      \ 'do': './install --all'
      \ }
Plug 'junegunn/fzf.vim'


" ================ Mappings     ====================
Plug 'cohama/lexima.vim'                    " Auto pair braces
Plug 'tpope/vim-surround'                   " Mappings to change braces
Plug 'tomtom/tcomment_vim'                  " Autocomment with gc
Plug 'tpope/vim-repeat'                     " Repeat mapppings from plugins
Plug 'nacitar/a.vim'                       " Swap between .h and .cpp files


call plug#end()



" ================ Extra        ====================
packadd termdebug
