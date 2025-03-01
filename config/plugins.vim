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
Plug 'romainl/vim-qf'                       " Better quickfix configuration
Plug 'gioele/vim-autoswap'

" ================ Lint/Compl   ====================

" ================ Style/Format ====================
Plug 'ntpeters/vim-better-whitespace'       " Highlight trailing whitespaces

" TODO: Not working. Replace
Plug 'nathanaelkane/vim-indent-guides'      " Show indent guides

Plug 'ap/vim-buftabline'                    " Show buffers as a tabline
Plug 'junegunn/fzf', {
      \ 'do': { -> 'fzf#install()' }
      \ }                                   " Fuzzy finder

" ================ Mappings     ====================
Plug 'cohama/lexima.vim'                    " Auto pair braces
Plug 'tpope/vim-commentary'                 " Auto-comment with gc
Plug 'tpope/vim-surround'                   " Mappings to change braces
Plug 'tpope/vim-repeat'                     " Repeat mappings from plugins
Plug 'tpope/vim-abolish'                    " Easier word substitution
Plug 'christoomey/vim-tmux-navigator'       " Mappings for navigate between tmux and vim
Plug 'roxma/vim-tmux-clipboard'
Plug 'jremmen/vim-ripgrep'

call plug#end()
