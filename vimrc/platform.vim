" Platform specific configuration

" On Windows, also use '.vim' instead of 'vimfiles'
" Use mingw32-make when using command :make
if has('win32')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    set makeprg=mingw32-make
endif



