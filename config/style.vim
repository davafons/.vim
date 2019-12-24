"  +----------------------------------------------+
"  |                                              |
"  |                Style Settings                |
"  |                                              |
"  +----------------------------------------------+


" ================   Terminal    ====================
if v:version >= 800
  set termguicolors
endif



" ================  Colour scheme  ====================
set background=dark
silent! colorscheme solarized8



" ================  Buftabline   ====================
hi link BufTabLineCurrent LightlineLeft_normal_1
hi link BufTabLineActive ToolbarButton
hi link BufTabLineHidden SignColumn
hi link BufTabLineFill CursorLine
hi link debugPC CursorLine
hi link debugBreakpoint Error
