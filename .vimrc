"  +----------------------------------------------+
"  |                                              |
"  |            Vim Configuration File            |
"  |                                              |
"  +----------------------------------------------+


set nocompatible
set encoding=utf-8
syntax on


" ================    Configuration   ====================
source ~/.vim/vimrc/platform.vim
source ~/.vim/vimrc/plugins.vim
source ~/.vim/vimrc/plugin_settings.vim
source ~/.vim/vimrc/settings.vim
source ~/.vim/vimrc/style.vim
source ~/.vim/vimrc/mappings.vim
source ~/.vim/vimrc/spelling.vim

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1


" ================  ftplugin files   ====================

" ---> C-Family
" ftplugin/c.vim
" ftplugin/cpp.vim

" ---> Python
" ftplugin/python.vim

" ---> Ruby
" ftplugin/ruby.vim
