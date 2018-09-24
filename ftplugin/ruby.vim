"  +----------------------------------------------+
"  |                                              |
"  |                     Ruby                     |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1



" ================   Mappings   ====================
nnoremap <buffer> <F5> :w<CR>:!ruby %<CR>



" ================ Autocomplete ====================
setlocal omnifunc=rubycomplete#Complete

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1


