"  +----------------------------------------------+
"  |                                              |
"  |              Keyboard Mappings               |
"  |                                              |
"  +----------------------------------------------+


" ================  Leader      ====================
let mapleader=","


" ================  Movement    ====================
"--- Move through visual lines
nnoremap <silent> j gj
nnoremap <silent> k gk

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

"--- Resize windows
nnoremap <silent> <Up> :resize -2<CR>
nnoremap <silent> <Down> :resize +2<CR>
nnoremap <silent> <Left> :vertical resize -2<CR>
nnoremap <silent> <Right> :vertical resize +2<CR>

"--- Change window size
nnoremap <C-w><C-m> <C-w>\| <C-W>_
nnoremap <C-w><C-e> <C-w>=

"--- Go to Tag
nmap <Leader>d <C-]>

"--- Move to next/prev buffer
if has("nvim")
  nnoremap <A-j> :bprev<CR>
  nnoremap <A-k> :bnext<CR>
else
  execute "set <M-j>=\ej"
  execute "set <M-k>=\ek"
  nnoremap <M-j> :bprev<CR>
  nnoremap <M-k> :bnext<CR>
endif

"--- Move to buffer using number
nnoremap <Leader>1 :buffer 1<CR>
nnoremap <Leader>2 :buffer 2<CR>
nnoremap <Leader>3 :buffer 3<CR>
nnoremap <Leader>4 :buffer 4<CR>
nnoremap <Leader>5 :buffer 5<CR>
nnoremap <Leader>6 :buffer 6<CR>
nnoremap <Leader>7 :buffer 7<CR>
nnoremap <Leader>8 :buffer 8<CR>
nnoremap <Leader>9 :buffer 9<CR>

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

"--- Easy delete buffer
nnoremap <Leader>q :bd<CR>

"--- Remove trailing spaces
nnoremap <silent> <F3> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"--- Easy block indentation
nnoremap <silent> <leader>> >iB
nnoremap <silent> <leader>< <iB

"--- Esc with C-c
inoremap <C-c> <Esc>

"--- Move through buffers
nmap <Leader>p :bp<CR>
nmap <Leader>n :bn<CR>

"--- Use system clipboard with leader
if has("clipboard")
  noremap <Leader>y "+y
  noremap <Leader>p "+p
endif


"--- Shortcuts for split window
nnoremap <silent> <Leader>l :vsplit<CR>
nnoremap <silent> <Leader>L :split<CR>



" ================   Plugins    ====================

" ===========   NERDTree    ===============
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" ===========     a.vim     ===============
"--- Switch to header/cpp
nnoremap <silent> <Leader>a :A<CR>
nnoremap <silent> <Leader>s :AS<CR>

" ===========  ALEFix       ==============
nnoremap <F4> :ALEFix<CR>
nmap <silent> <C-n> <Plug>(ale_next_wrap)
nmap <silent> <C-p> <Plug>(ale_previous_wrap)

" ===========  indent-gui   ==============
nnoremap <Leader>ig :IndentGuidesToggle<CR>

" ===========  Termdebug    ==============
nnoremap <Leader>bt :Termdebug<CR>
nnoremap <Leader>bb :Break<CR>
nnoremap <Leader>bd :Delete<CR>
nnoremap <Leader>bw :Watch<CR>
nnoremap <Leader>bg :Gdb<CR>
nnoremap <F8> :Step<CR>
nnoremap <F9> :Over<CR>
nnoremap <F7> :Finish<CR>

" ===========  YouComplMe   ==============
nnoremap <Leader>gg :YcmCompleter GoTo<CR>
nnoremap <Leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <Leader>gi :YcmCompleter GoToImplementation<CR>
nnoremap <Leader>gt :YcmCompleter GoToType<CR>
nnoremap <Leader>gy :YcmCompleter GetType<CR>
nnoremap <Leader>gk :YcmCompleter GetDoc<CR>
