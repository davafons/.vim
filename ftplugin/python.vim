"  +----------------------------------------------+
"  |                                              |
"  |                    Python                    |
"  |                                              |
"  +----------------------------------------------+

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1



" ================ Indentation  ====================
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal formatoptions=croql



" ================   Mappings   ====================
nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>



" ================  Virtualenv  ====================
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
