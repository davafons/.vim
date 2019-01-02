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
Plug 'romainl/vim-qf'                       " Better quickfix behaviour



" ================ Lint/Compl   ====================
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
Plug 'neomake/neomake'                      " Asynchronous linting
Plug 'ap/vim-buftabline'



" ================ Tags         ====================
Plug 'majutsushi/tagbar'                    " Tags window
Plug 'xolox/vim-easytags'                   " ctags syntax highlighter
Plug 'xolox/vim-misc'                       " Helper plugin used by easytags
Plug 'jsfaint/gen_tags.vim', {'do': 'make gtags -C ~/.vim/'}



" ================ Style/Format ====================
Plug 'sheerun/vim-polyglot'                 " Syntax highlighting for + langs
Plug 'Chiel92/vim-autoformat'               " Autoformat code
Plug 'ntpeters/vim-better-whitespace'       " Highlight trailing whitespaces
Plug 'nathanaelkane/vim-indent-guides'      " Show indent guides



" ================ Mappings     ====================
Plug 'jiangmiao/auto-pairs'                 " Auto pair braces
Plug 'tpope/vim-surround'                   " Mappings to change braces
Plug 'tpope/vim-commentary'                 " Autocomment with gc
Plug 'tpope/vim-repeat'                     " Repeat mapppings from plugins
Plug 'vim-scripts/a.vim'                    " Swap between .h and .cpp files



call plug#end()
