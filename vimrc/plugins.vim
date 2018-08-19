" Plugins loaded


" Initialize Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " Required 
Plugin 'Shougo/vimproc.vim'             " Used by other plugins



" Colorschemes
Plugin 'tomasiser/vim-code-dark'
Plugin 'altercation/vim-colors-solarized'


" Interface
Plugin 'itchyny/lightline.vim'          " Status line
Plugin 'tpope/vim-fugitive'             " Git support
Plugin 'airblade/vim-gitgutter'         " Show git sign column
Plugin 'scrooloose/nerdtree'            " Treeview 
Plugin 'Xuyuanp/nerdtree-git-plugin'    " Add git suppor to NerdTree
Plugin 'ryanoasis/vim-devicons'         " Use icons from NerdFonts


" Checking/Tags
Plugin 'scrooloose/syntastic'           " Syntax cheking
Plugin 'ludovicchabant/vim-gutentags'   " Automatic tags generation
Plugin 'majutsushi/tagbar'              " Window with indexed tags info
Plugin 'Rip-Rip/clang_complete'         " Clang based code complete
Plugin 'vim-scripts/AutoComplPop'       " Automatically open complete window


" Syntax/Style
Plugin 'sheerun/vim-polyglot'           " Syntax highlighting pack
Plugin 'rhysd/vim-clang-format'         " Format with specific coding style

" Typing/maps
Plugin 'jiangmiao/auto-pairs'           " Auto pair braces
Plugin 'tpope/vim-surround'             " Mappings to change braces
Plugin 'tpope/vim-commentary'           " Auto comment with gc
Plugin 'tpope/vim-repeat'               " Repeat mapppings from plugins
Plugin 'vim-scripts/a.vim'              " Swap between .h and .cpp files



call vundle#end()
filetype plugin indent on

