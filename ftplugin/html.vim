"  +----------------------------------------------+
"  |                                              |
"  |                     HTML                     |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1


" ================   Mappings   ====================
nnoremap <buffer> <F5> :!firefox % & <CR>

