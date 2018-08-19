" Settings for specific plugins


" Lightline
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


" AutoPairs
let g:AutoPairsMapCR = 0
imap <expr><CR> "\<CR>\<Plug>AutoPairsReturn"


" NERDTree
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


" Devicons
" Hide [] around icons
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif



" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 4
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
" C++ options
let g:syntastic_cpp_checkers = ['gcc', 'cpplint']
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -pedantic -Wdisabled-optimization -Wlogical-op -Wredundant-decls -Wshadow'
let g:syntastic_cpp_config_file = '.clang_complete'
let g:syntastic_cpp_include_dirs = ['include', 'lib', 'src']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_cpplint_exec = 'cpplint.py' 



" Clang_complete
let g:clang_library_path = '/LLVM/bin'
let g:clang_hl_errors = 0
let g:clang_complete_macros = 1
let g:clang_close_preview = 1
let g:clang_user_options = ' -std=c++11 -Wall -Wextra'
command! UpdateClangConfig make CC="python ~\.vim\bundle\clang_complete\bin\cc_args.py gcc" CXX="python ~\.vim\bundle\clang_complete\bin\cc_args.py g++" -B

" YouCompleteMe
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
