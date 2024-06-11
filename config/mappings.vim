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
nnoremap <C-h> <C-h>h
nnoremap <C-j> <C-j>j
nnoremap <C-k> <C-k>k
nnoremap <C-l> <C-l>l

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


" ================  Shortcuts   ====================

"--- Quickly edit/reload the vimrc file
nnoremap <silent> <Leader>ye :e $MYVIMRC<CR>
nnoremap <silent> <Leader>ys :source $MYVIMRC<CR>

"--- Disable search highlight
nnoremap <silent> <Leader><space> :nohlsearch<CR>

"--- Easy close current split
nnoremap <Leader>q <C-w>q

"--- Easy close current buffer
nnoremap <Leader>bd :bd<CR>

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

" ===========  indent-gui   ==============
nnoremap <Leader>ig :IndentGuidesToggle<CR>

" ===========  FZF          ==============
nnoremap <Leader>wt :Tags<CR>
nnoremap <Leader>wf :Files<CR>
