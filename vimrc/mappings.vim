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
nnoremap <C-j> gT
nnoremap <C-k> gt

"--- Faster window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"--- Move windows
nnoremap <C-w><C-h> <C-w>H
nnoremap <C-w><C-j> <C-w>J
nnoremap <C-w><C-k> <C-w>K
nnoremap <C-w><C-l> <C-w>L

"--- Change window size
nnoremap <C-w><C-m> <C-w>\| <C-W>_
nnoremap <C-w><C-e> <C-w>=

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
noremap <C-n> :lnext<CR>
noremap <C-p> :lprev<CR>



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

"--- Remove trailing spaces
nnoremap <silent> <F3> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"--- Esc with C-c
inoremap <C-c> <Esc>

"--- Move through buffers 
nmap <Leader>p :bp<CR>
nmap <Leader>n :bn<CR>

"--- Close buffer without closing window
nnoremap <silent> <Leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>


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

" ===========     fzf       ==============
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>bf :Files<CR> 
nnoremap <Leader>bm :Maps<CR>
nnoremap <Leader>bc :Commits<CR>

