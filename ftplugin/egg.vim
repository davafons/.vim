"  +----------------------------------------------+
"  |                                              |
"  |                    Egg                       |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1
nnoremap <buffer> <F5> :!python3 %<CR>
