"  +----------------------------------------------+
"  |                                              |
"  |                Style Settings                |
"  |                                              |
"  +----------------------------------------------+


" ================    Console    ====================
set t_Co=256 " Enable full color palette


" ================     gVim     ====================
if has("gui_running")
  set guifont=Consolas_NF:h12   " Consolas NF patched
  set guioptions-=L   " Remove left scrollbar
  set guioptions-=T   " Remove toolbar
endif



" ================ Colorscheme  ====================
set background=dark
colorscheme solarized


