"  +----------------------------------------------+
"  |                                              |
"  |                     HTML                     |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

setlocal textwidth=0         " Force wrap lines at 80
setlocal colorcolumn=0       " Show column limit at line 80

" ================   Mappings   ====================
nnoremap <buffer> <F5> :!firefox % & <CR>

