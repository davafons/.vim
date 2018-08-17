" Plugins loaded


" Initialize Vundle
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " Required 



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


" Syntax highlighting
Plugin 'sheerun/vim-polyglot'           " Syntax highlighting pack

" Typing/maps
Plugin 'jiangmiao/auto-pairs'           " Auto pair braces
Plugin 'tpope/vim-surround'             " Mappings to change braces
Plugin 'tpope/vim-commentary'           " Auto comment with gc
Plugin 'tpope/vim-repeat'               " Repeat mapppings from plugins



call vundle#end()
filetype plugin indent on

