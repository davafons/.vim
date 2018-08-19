" Mappings for vim
let mapleader=","



"""" Movement mappings 

" Move through visual lines
nnoremap j gj
nnoremap k gk

" Move through tabs with alt-j, alt-k
noremap <A-j> gT
noremap <A-k> gt

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disable key arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Go to declaration
nmap <Leader>d <C-]>
" Go to definition
nmap <Leader>gd g<C-]>

" Move to next/prev error
nnoremap <C-n> :lnext<CR>
nnoremap <C-p> :lprev<CR>



""""" Shortcut mappings

" Save with ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Disable search highligh
nnoremap <silent> <Leader><space> :nohlsearch<CR>

" Change to pastemode
set pastetoggle=<F2>

" Easy quit shortcut
nnoremap <Leader>q :q<CR>

" Close buffer without closing window
nmap <silent> <Leader>c :bp<bar>sp<bar>bn<bar>bd<CR>



""""" Plugin mappings

" NERDTree
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" a.vim
" Switch to header/cpp
nnoremap <silent> <Leader>a :A<CR>
nnoremap <silent> <Leader>s :AS<CR>

" vim-clang-format
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd Filetype c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

" Syntastic
nnoremap <Leader>cc :SyntasticCheck cpplint<CR>
