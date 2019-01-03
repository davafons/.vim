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
\ }


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



" ================ Buftabline    ====================
let g:buftabline_show = 1



" ================   NeoMake     ====================
if exists('*neomake#configure#automake')
  call neomake#configure#automake('rw')
endif

let g:neomake_open_list = 2

" --- Clang
let g:neomake_cpp_clang_maker = {
    \ 'args': ['-std=c++17', '-Wall', '-Wextra']
    \ }



" ================ Gen_tags      ====================
let g:gen_tags#ctags_auto_gen = 1
let g:gen_tags#ctags_opts = '--fields=+l --c-kinds=+px --c++-kinds=+px'
let g:gen_tags#gtags_auto_gen = 1
let g:gen_tags#use_cache_dir = 0
let g:gen_tags#gtags_default_map = 0



" ================ Easytags      ====================
let g:easytags_async = 1
let g:easytags_dynamic_files = 1
let g:easytags_always_enabled = 1
let g:easytags_auto_update = 0
let g:easytags_python_enabled = 1



" ================ Autoformat    ====================
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatdef_clang_format = '"clang-format -style=LLVM"'
let g:formatters_cpp = ['clang_format']



" ================ indent-guides ====================
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0



" ================ vim_qf        ====================
let g:qf_auto_open_quickfix = 0
let g:qf_auto_open_loclist = 0
let g:qf_loclist_window_bottom = 0



" ================ vim_qf        ====================
let g:viewdoc_only = 1
let g:viewdoc_openempty = 0
let g:viewdoc_open = "new"
