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
let g:buftabline_numbers = 1



"  ================ ALE           ====================
let g:ale_open_list = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_list_window_size = 7

let g:ale_lint_on_text_changed = '0'

let g:ale_linters = {
      \ 'java': ['javac'],
      \ 'python': ['mypy --ignore-missing-imports', 'flake8', 'pylint'],
      \ 'javascript': ['eslint'],
      \ 'cpp': ['clangcheck'],
      \ 'cuda': ['nvcc']
      \ }

let g:ale_fixers = {
      \ 'python': ['black', 'isort'],
      \ 'cpp': ['clang-format'],
      \ 'cuda': ['clang-format'],
      \ 'json': ['fixjson'],
      \ 'sh': ['shfmt'],
      \ 'javascript': ['prettier'],
      \ 'java': ['google_java_format'],
      \ }

let g:ale_echo_msg_format = '[%linter%] %s'

let g:ale_cuda_nvcc_options = "--std=c++14"



"  ================ Gen_tags      ====================
let g:gen_tags#ctags_auto_gen = 1
let g:gen_tags#ctags_opts = '--fields=+l --c-kinds=+px --c++-kinds=+px'
let g:gen_tags#gtags_auto_gen = 0
let g:gen_tags#use_cache_dir = 0
let g:gen_tags#gtags_default_map = 0

" Supress warning `version 0.0.0`
let g:easytags_suppress_ctags_warning = 1



" ================ Easytags      ====================
let g:easytags_async = 1
let g:easytags_dynamic_files = 1
let g:easytags_always_enabled = 1
let g:easytags_auto_update = 0
let g:easytags_python_enabled = 1



" ================ indent-guides ====================
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0



" ================ Neomake       ====================
" call neomake#configure#automake('w')
let g:neomake_open_list = 2

let g:neomake_cpp_enable_makers = ['clang']
let g:neomake_cpp_clang_maker = {
  \ 'exe': 'clang-tidy',
  \ }



" ================ YouCompleteMe ====================
let g:ycm_semantic_triggers = {
      \   'c,cpp,cuda,objcpp': ['->', '.', '::', 're!cuda', 're!SDL_', 're!gl', 're!glfw', 're!GLFW_', 're!GL_', 're!Q'],
      \   'ruby'  : ['.', '::']
      \ }


" ================ TagHighlight  ====================
hi link CTagsMember Identifier
hi link CTagsClass Structure
hi link cppStructure Statement
hi link CTagsNamespace Typedef
hi link cppModifier Special
