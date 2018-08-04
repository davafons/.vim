" Mappings for vim


" Move through visual lines
nnoremap j gj
nnoremap k gk


" Move through tabs with alt-j, alt-k
noremap <A-j> gT
noremap <A-k> gt


" Godmode backspace
set backspace=indent,eol,start


" Save with ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
