"  +----------------------------------------------+
"  |                                              |
"  |                   C-Family                   |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1


" ================ Indentation  ====================
setlocal tabstop=2           " Number of visual spaces per TAB
setlocal shiftwidth=2        " When indenting with '>', use 4 spaces width
setlocal expandtab           " Tabs are spaces
setlocal smarttab            " Insert tabs according to shiftwidth, not tabstop
setlocal autoindent          " Enable auto indentation
setlocal copyindent          " Copy previous indentation on autoindenting
setlocal shiftround          " Use multiples of shiftwidth when indenting
setlocal cinoptions+=L0      " Don't indent when typing std::
setlocal cinoptions+=g0      " Don't indent private:, public: ... labels



" ================   Mappings   ====================
nnoremap <buffer> <F5> :make<CR>
