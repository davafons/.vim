"  +----------------------------------------------+
"  |                                              |
"  |          Windows/Linux configuration         |
"  |                                              |
"  +----------------------------------------------+



" ================   Windows    ====================
if has('win32')

  "--- On Windows, also use '.vim' instead of 'vimfiles'
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  "--- Use mingw32-make when using command :make
  set makeprg=mingw32-make

endif



