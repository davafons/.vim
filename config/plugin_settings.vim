"  +----------------------------------------------+
"  |                                              |
"  |               Plugin Settings                |
"  |                                              |
"  +----------------------------------------------+


" ================   Lightline   ====================
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste'],
  \             [ 'readonly', 'filename', 'gitbranch', 'gitstatus', 'modified'] ],
  \   'right': [ [ 'lineinfo' ],
  \            [ 'percent' ],
  \            [ 'fileformat', 'fileencoding', 'filetype' ] ]
  \ },
  \ 'component_function': {
  \   'gitstatus': 'GitStatus',
  \   'gitbranch': 'FugitiveHead'
  \ },
\ }

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction


" ================   NERDTree    ====================
let NERDTreeQuitOnOpen = 1          " Quit when opening file
let NERDTreeAutoDeleteBuffer = 1    " Delete buffer when deleting files
let NERDTreeCaseSensitiveSort = 1   " Show uppercase first, then lowercase
let NERDTreeNaturalSort = 1         " Sort as 1, 2, 10 instead of 1, 10, 2
let NERDTreeChDirMode = 1           " Change NERDTree cwd when opening vim
let NERDTreeMinimalUI = 1           " Hide ? for help
let NERDTreeShowHidden = 1          " Show hidden files
let NERDTreeIgnore = ["__pycache__"]

"Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p

" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" ================ Buftabline     ====================
let g:buftabline_show = 1
let g:buftabline_numbers = 1



"  ================ vim-test      ====================
let test#strategy = "dispatch"



"  ================ ALE           ====================
let g:ale_enabled = 1
let g:ale_list_window_size = 5
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0

let g:ale_open_list = 1

augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

let g:ale_linters = {
      \ 'java': ['javac'],
      \ 'python': ['flake8', 'pylint'],
      \ 'javascript': ['eslint'],
      \ 'cpp': ['clangcheck'],
      \ 'cuda': ['nvcc'],
      \ 'markdown': ['remark_lint']
      \ }

let g:ale_fixers = {
      \ 'python': ['black', 'isort'],
      \ 'cpp': ['clang-format'],
      \ 'cuda': ['clang-format'],
      \ 'json': ['fixjson'],
      \ 'sh': ['shfmt'],
      \ 'javascript': ['prettier'],
      \ 'java': ['google_java_format'],
      \ 'rust': ['rustfmt'],
      \ 'xml': ['xmllint']
      \ }

let g:ale_echo_msg_format = '[%linter%] %[code] %%s'

let g:ale_cuda_nvcc_options = '--std=c++14'

let g:ale_python_mypy_options = '--ignore-missing-imports'

let g:ale_python_pydocstyle_options = '--convention=google'



" ================ indent-guides ====================
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0



" ================ TagHighlight  ====================
hi link CTagsMember Identifier
hi link CTagsClass Structure
hi link cppStructure Statement
hi link CTagsNamespace Typedef
hi link cppModifier Special
