"  +----------------------------------------------+
"  |                                              |
"  |                   Python                     |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

setlocal tabstop=4           " Number of visual spaces per TAB
setlocal shiftwidth=4        " When indenting with '>', use 4 spaces width
setlocal commentstring=#\ %s


" ================   Mappings   ====================
nnoremap <buffer> <F5> :!python3 %<CR>
