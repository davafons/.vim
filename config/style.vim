"  +----------------------------------------------+
"  |                                              |
"  |                Style Settings                |
"  |                                              |
"  +----------------------------------------------+


" ================   Terminal    ====================
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif



" ================  Colour scheme  ====================
set background=dark
silent! colorscheme solarized8

hi QuickFixLine guibg=0



" ================  Buftabline   ====================
hi link BufTabLineCurrent LightlineLeft_normal_1
hi link BufTabLineActive ToolbarButton
hi link BufTabLineHidden SignColumn
hi link BufTabLineFill CursorLine
hi link debugPC CursorLine
hi link debugBreakpoint Error
