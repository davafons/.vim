"  +----------------------------------------------+
"  |                                              |
"  |              Keyboard Mappings               |
"  |                                              |
"  +----------------------------------------------+


" ================  Mapleader   ====================
let mapleader=","


" ================  Movement    ====================
"--- Move through visual lines
nnoremap j gj
nnoremap k gk

"--- Move through tabs with alt-j, alt-k
noremap <A-j> gT
noremap <A-k> gt

"--- Faster window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"--- Disable key arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"--- [tags] Go to declaration
nmap <Leader>d <C-]>
"--- [tags] Go to definition
nmap <Leader>sd g<C-]>

"--- Move to next/prev error
nnoremap <C-n> :lnext<CR>
nnoremap <C-p> :lprev<CR>



" ================  Shortcuts   ====================

"--- Save with ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

"--- Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>

"--- Disable search highligh
nnoremap <silent> <Leader><space> :nohlsearch<CR>

"--- Change to pastemode
set pastetoggle=<F2>

"--- Easy quit shortcut
nnoremap <Leader>q :q<CR>

"--- Close buffer without closing window
nmap <silent> <Leader>c :bp<bar>sp<bar>bn<bar>bd<CR>

"--- Yank and Paste from clipboard
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p


"--- Remove trailing spaces
nnoremap <silent> <F3> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"--- Esc with C-c
inoremap <C-c> <Esc>



" ================   Plugins    ====================

" ===========   NERDTree    ===============
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" ===========     Tagbar    ===============
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" ===========     a.vim     ===============
"--- Switch to header/cpp
nnoremap <silent> <Leader>a :A<CR>
nnoremap <silent> <Leader>s :AS<CR>


" =========== Clang-Format  ===============
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd Filetype c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>


" ===========   Syntastic   ===============
autocmd Filetype c,cpp,objc nnoremap <Leader>cc :SyntasticCheck cpplint<CR>


" =========== YouCompleteMe ==============
nnoremap <Leader>gg :YcmCompleter GoTo<CR>
nnoremap <Leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <Leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gt :Ycmcompleter GetType<CR>
nnoremap <Leader>gp :YcmCompleter GetParent<CR>
nnoremap <Leader>go :YcmCompleter GetDoc<CR>

