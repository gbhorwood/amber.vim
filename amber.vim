" Amber syntax file
" Language: Amber
" Maintainer: grant horwood <ghorwood@fruitbat.studio>
" URL:
"

if exists("b:current_syntax")
  finish
endif

syn keyword amberPreProc       import from __name__ main
syn keyword amberTypes         Num Text Bool Null
syn keyword amberBooleans      true false
syn keyword amberConditionals  if if: else else: then
syn keyword amberUnsafe        unsafe
syn keyword amberErrorHandling silent failed fail
syn keyword amberKeywords      let echo status fun return
syn keyword amberRepeats       loop in
syn keyword amberStd           input replace_once replace replace_regex dir_exist file_exist file_read file_write file_append split
syn keyword amberStd           lines words join trim_left trim_right trim lower upper len parse chars sum has_failed exit includes

syn match amberReserved        '__[^ ]*'
syn match amberComment         '//.*$'
syn match amberString          '"[^"]*"'


" Use bash highlighting inside command delimiters
syn include @bashTop syntax/bash.vim
unlet b:current_syntax
syn region amberShellCommand start=+\$+ skip=+\\\$+ end=+\$+ contains=@bashTop keepend

let b:current_syntax = "amber"

hi def link amberPreProc        PreProc
hi def link amberTypes          Type
hi def link amberBooleans       Constant
hi def link amberConditionals   Conditional
hi def link amberUnsafe         Underlined
hi def link amberErrorHandling  Structure
hi def link amberKeywords       Keyword
hi def link amberRepeats        Repeat
hi def link amberStd            Label
hi def link amberReserved       SpecialChar
hi def link amberComment        Comment
hi def link amberString         String
