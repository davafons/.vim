" Plugins loaded


" Initialize Vundle
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " Required 



" Interface
Plugin 'itchyny/lightline.vim'          " Status line
Plugin 'tpope/vim-fugitive'             " Git support
Plugin 'airblade/vim-gitgutter'         " Show git sign column


" Typing/maps
Plugin 'jiangmiao/auto-pairs'           " Auto pair braces
Plugin 'tpope/vim-surround'             " Mappings to change braces
Plugin 'tpope/vim-repeat'               " Repeat mapppings from plugins
Plugin 'tpope/vim-commentary'           " Auto comment with gc



call vundle#end()

