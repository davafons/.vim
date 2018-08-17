" Colors configuration for vim and gVim


"Colorschemes
colorscheme codedark " VS color scheme

" gVim
if has("gui_running")
    set guioptions-=L   " Remove left scrollbar
    set guioptions-=T   " Remove toolbar
    set guifont=Consolas_NF:h12:cANSI:qDRAFT    " Consolas NF patched
endif
