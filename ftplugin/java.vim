"  +----------------------------------------------+
"  |                                              |
"  |                   Java                       |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1


" ================   Mappings   ====================
nnoremap <buffer> <F5> :!./gradlew build<CR>
nnoremap <buffer> <F6> :!./gradlew test<CR>
nnoremap <buffer> <C-F6> :!./gradlew clean test<CR>
nnoremap <buffer> <F7> :!./gradlew run<CR>
