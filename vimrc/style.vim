" Colors configuration for vim and gVim

set t_Co=256
set guifont="Consolas NF 12"   " Consolas NF patched

" gVim
if has("gui_running")
    set guioptions-=L   " Remove left scrollbar
    set guioptions-=T   " Remove toolbar
endif

" Colorschemes
set background=dark
colorscheme solarized 
