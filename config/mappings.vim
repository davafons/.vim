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



" ================  Shortcuts   ====================

"--- Save with ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

"--- Quickly edit/reload the vimrc file
nnoremap <silent> <Leader>ye :e $MYVIMRC<CR>
nnoremap <silent> <Leader>ys :source $MYVIMRC<CR>

"--- Disable search highlight
nnoremap <silent> <Leader><space> :nohlsearch<CR>

"--- Easy delete current buffer
nnoremap <Leader>q :bd<CR>

"--- Remove trailing spaces
nnoremap <silent> <F3> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

"--- Esc with C-c
inoremap <C-c> <Esc>

"--- Use system clipboard with leader
if has("clipboard")
  noremap <Leader>y "+y
  noremap <Leader>p "+p
endif

" Enable/disable spelling check on current buffer
map <silent> <F2> :setlocal spell!<CR>

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

" ===========     a.vim     ===============
" nnoremap <silent> <Leader>a :A<CR>

" ===========  ALEFix       ==============
nnoremap <F4> :ALEFix<CR>
nmap <silent> <C-n> <Plug>(ale_next_wrap)
nmap <silent> <C-p> <Plug>(ale_previous_wrap)

" ===========  indent-gui   ==============
nnoremap <Leader>ig :IndentGuidesToggle<CR>

" ===========  Termdebug    ==============
" nnoremap <Leader>bt :Termdebug<CR>
" nnoremap <Leader>bb :Break<CR>
" nnoremap <Leader>bd :Delete<CR>
" nnoremap <Leader>bw :Watch<CR>
" nnoremap <Leader>bg :Gdb<CR>
" nnoremap <F8> :Step<CR>
" nnoremap <F9> :Over<CR>
" nnoremap <F7> :Finish<CR>

" ===========  YouComplMe   ==============
" nnoremap <Leader>gg :YcmCompleter GoTo<CR>
" nnoremap <Leader>gd :YcmCompleter GoToDeclaration<CR>
" nnoremap <Leader>gf :YcmCompleter GoToDefinition<CR>
" nnoremap <Leader>gr :YcmCompleter GoToReferences<CR>
" nnoremap <Leader>gi :YcmCompleter GoToImplementation<CR>
" nnoremap <Leader>gt :YcmCompleter GoToType<CR>
" nnoremap <Leader>gy :YcmCompleter GetType<CR>
" nnoremap <Leader>gk :YcmCompleter GetDoc<CR>

" ===========  Tagbar       ==============
" nnoremap <Leader>t :TagbarToggle<CR>



" ===========  Coc          ==============
" Use tab for trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
noremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}



" ===========  fzf          ==============
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@



" ===========  fzf          ==============
nnoremap <Leader>wt :Tags<CR>
nnoremap <Leader>wf :Files<CR>
