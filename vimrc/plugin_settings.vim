"  +----------------------------------------------+
"  |                                              |
"  |               Plugin Settings                |
"  |                                              |
"  +----------------------------------------------+


" ================   Lightline   ====================
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }



" ================   AutoPairs   ====================
" Avoid Autopairs error of printing text when pressing Enter
let g:AutoPairsMapCR = 0
imap <expr><CR> "\<CR>\<Plug>AutoPairsReturn"



" ================   NERDTree    ====================
let NERDTreeQuitOnOpen = 1          " Quit when opening file
let NERDTreeAutoDeleteBuffer = 1    " Delete buffer when deleting files
let NERDTreeCaseSensitiveSort = 1   " Show uppercase first, then lowercase
let NERDTreeNaturalSort = 1         " Sort as 1, 2, 10 instead of 1, 10, 2
let NERDTreeChDirMode = 1           " Change NERDTree cwd when opening vim
let NERDTreeMinimalUI = 1           " Hide ? for help
let NERDTreeShowHidden = 1          " Show hidden files

"Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p

" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" ================    Devicons   ====================
" Hide [] around icons
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif



" ================   Syntastic   ====================
let g:syntastic_always_populate_loc_list = 1    " Fill loc list with errors
let g:syntastic_loc_list_height = 6
let g:syntastic_auto_loc_list = 1               " Open if errors, close if none
let g:syntastic_check_on_open = 1               " Check for erros when opening
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_checkers = ['gcc', 'cppcheck']

" --- GCC config
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Wnounused-variable -Wno-unknown-pragmas -pedantic -Wdisabled-optimization -Wlogical-op -Wnon-virtual-dtor -Wredundant-decls -Wshadow'
let g:syntastic_cpp_include_dirs = ['include', '../include', 'lib', '../lib', '../src', 'src']
let g:syntastic_cpp_check_header = 1

" --- Cpplint config
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_cpplint_args = '--filter=-legal/copyright,-readability/todo,-whitespace/indent, -whitespace/comment'

" --- Cppcheck config
let g:syntastic_cpp_cppcheck_args = '--std=c++11 --language=c++ --enable=all --suppress=unusedFunction'


" --- Ruby config
let g:syntastic_ruby_checkers = ['mri']
let g:syntasic_ruby_mri_exec = "/usr/bin/ruby"



" ================ Clang Format  ====================
let g:clang_format#code_style = 'llvm'



" ================ YouCompleteMe ====================
let g:ycm_show_diagnostics_ui = 0    " Let Syntastic do the diagnostics
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_semantic_triggers = { 'cpp,objcpp' : ['->', '.', '::', 're!SDL_', 're!gl', 're!glfw', 're!GLFW_', 're!GL_'] }



" ================ YouCompleteMe ====================
set rtp+=~/.fzf
