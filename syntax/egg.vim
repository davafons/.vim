" Vim syntax file
" Language: Egg
" Maintainer: David Afonso (Dibad)
" Latest Revision: 28 May 2019


if exists("b:current_syntax")
  finish
endif

""""""" Keywords
syn keyword eggSpecialForms do if while for foreach do def define fun set nextgroup=eggBody
syn region eggBody start="[\(\{\[]" end="[\)\}\]]" fold transparent skipwhite contains=ALLBUT,eggFunctionName,eggFunctionAttr

syn keyword eggSpecial this


""""""" Constants
syn region eggString start='"' skip='\\"' end='"'

" Regular int like number with - + or nothing in front
syn match eggNumber "\d\+"
syn match eggNumber "[-+]\d\+"

" Floating point number with decimal no E or e (+,-)
syn match eggFloat "[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+"
syn match eggFloat "\d[[:digit:]]*[eE][\-+]\=\d\+"

" Floating point like number with E and decimal point (+,-)
syn match eggFloat "[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+"
syn match eggFloat "\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+"

" Boolean
syn keyword eggBoolean true false


""""""" Operators
syn match eggOperator "[:<>!=+-]" nextgroup=eggBody


""""""" Structures
syn keyword eggStruct object obj array map


""""""" Functions
syn match eggFunctionDecl "\v\i+[(]" contains=eggFunctionName
syn match eggFunctionName "\i" contained

syn match eggFunctionEnd "[\.]\i+" contains=eggFunctionAttr
syn match eggFunctionAttr "\i" contained



""""""" Comments
syn match eggComment "[#;].*$" contains=eggTodo
syn region eggComment start="/\*" end="\*/" contains=eggTodo
syn keyword eggTodo contained TODO FIXME XXX NOTE WARNING



" Highlight groups
hi def link eggSpecialForms   Keyword
hi def link eggSpecial        Special

hi def link eggFunctionName   Function
hi def link eggFunctionAttr   Special

hi def link eggString         String
hi def link eggNumber         Number
hi def link eggFloat          Float
hi def link eggBoolean        Boolean

hi def link eggOperator       Type

hi def link eggStruct         Structure

hi def link eggComment        Comment
hi def link eggTodo           Todo
