" Plugins loaded


" Initialize Vundle
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


" Syntax/Tags
Plugin 'scrooloose/syntastic'           " Syntax highlighting and error checking

" Typing/maps
Plugin 'jiangmiao/auto-pairs'           " Auto pair braces
Plugin 'tpope/vim-surround'             " Mappings to change braces
Plugin 'tpope/vim-repeat'               " Repeat mapppings from plugins
Plugin 'tpope/vim-commentary'           " Auto comment with gc



call vundle#end()

