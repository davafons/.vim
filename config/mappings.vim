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

"--- Change window size
nnoremap <C-w><C-m> <C-w>\| <C-W>_
nnoremap <C-w><C-e> <C-w>=

"--- Move to next/prev buffer
if has("nvim")
  nnoremap <A-j> :bprev<CR>
  nnoremap <A-k> :bnext<CR>
else
  " Hack for making Alt modifier work
  execute "set <M-j>=\ej"
  execute "set <M-k>=\ek"
  nnoremap <M-j> :bprev<CR>
  nnoremap <M-k> :bnext<CR>
endif

nnoremap <silent> <C-b> :lprev<CR>
nnoremap <silent> <C-f> :lnext<CR>


" ================  Shortcuts   ====================

"--- Save with ctrl+s
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a

"--- Quickly edit/reload the vimrc file
nnoremap <silent> <Leader>ye :e $MYVIMRC<CR>
nnoremap <silent> <Leader>ys :source $MYVIMRC<CR>

"--- Disable search highlight
nnoremap <silent> <Leader><space> :nohlsearch<CR>

"--- Easy close current split
nnoremap <Leader>q <C-w>q

"--- Remove trailing spaces
nnoremap <silent> <F3> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"--- Esc with C-c
inoremap <C-c> <Esc>

"--- Use system clipboard with leader
noremap <Leader>y "+y
noremap <Leader>p "+p

" Enable/disable spelling check on current buffer
nnoremap <silent> <F2> :setlocal spell!<CR>

"--- Shortcuts for split window
nnoremap <silent> <Leader>s :vsplit<CR>
nnoremap <silent> <Leader>S :split<CR>

"--- Get highlight group under the cursor
nnoremap <F6> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" ================   Plugins    ====================

" ===========   NERDTree    ===============
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>


" ===========  ALEFix       ==============
nnoremap <F4> :ALEFix<CR>
nnoremap <silent> <C-n> <Plug>(ale_previous_wrap)
nnoremap <silent> <C-p> <Plug>(ale_next_wrap)

" ===========  indent-gui   ==============
nnoremap <Leader>ig :IndentGuidesToggle<CR>



" ===========  FZF          ==============
nnoremap <Leader>wt :Tags<CR>
nnoremap <Leader>wf :Files<CR>


" ===========  vim-test     ==============
nnoremap <Leader>tf :TestFile<CR>
nnoremap <Leader>tn :TestNearest<CR>
nnoremap <Leader>ts :TestSuite<CR>
nnoremap <Leader>tv :TestVisit<CR>
