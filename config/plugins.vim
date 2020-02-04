" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')



" ================ Colour schemes ====================
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
      \ }                                   " Completion list
Plug 'w0rp/ale'                             " Linting and Fixer
" Plug 'python-mode/python-mode'              " Vim as a Python IDE



" ================ Tags         ====================
Plug 'majutsushi/tagbar'                    " Tags window
Plug 'ludovicchabant/vim-gutentags'         " Auto generate tags from files
Plug 'vim-scripts/TagHighlight'             " Update highlight using tags



" ================ Style/Format ====================
Plug 'sheerun/vim-polyglot'                 " Syntax highlighting for + languages
Plug 'ntpeters/vim-better-whitespace'       " Highlight trailing whitespaces
Plug 'nathanaelkane/vim-indent-guides'      " Show indent guides
Plug 'ap/vim-buftabline'                    " Show buffers as a tabline
Plug 'junegunn/fzf', {
      \ 'dir': '~/.fzf',
      \ 'do': './install --all'
      \ }                                   " Fuzzy finder
Plug 'junegunn/fzf.vim'                     " Fuzzy finder (for vim)



" ================ Writing      ====================
Plug 'junegunn/goyo.vim'                    " Distraction-free writing
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-wordy'
Plug 'dbmrq/vim-ditto'


" ================ Mappings     ====================
Plug 'cohama/lexima.vim'                    " Auto pair braces
Plug 'tpope/vim-surround'                   " Mappings to change braces
Plug 'tomtom/tcomment_vim'                  " Auto-comment with gc
Plug 'tpope/vim-repeat'                     " Repeat mappings from pluggins
Plug 'nacitar/a.vim'                        " Swap between .h and .cpp files
Plug 'tpope/vim-abolish'                    " Easier word substitution


call plug#end()



" ================ Extra        ====================
packadd termdebug
