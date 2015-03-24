" Operator highlights
let g:native_syntax#highlight_operators =
      \ get(g:, "native_syntax#highlight_operators", 0)
if g:native_syntax#highlight_operators
  "syntax keyword Boolean true false NULL TRUE FALSE
  "syntax keyword Statement namespace stderr stdin stdout new this delete

  "syn match cBlock "[{}]"
  syn match cBracket "[\[\]]"
  "syn match cOperator display "[-+&|<>=!\/~.,;:*%&^?()]"
  syn match cOperator display "[-+&|<>=!~.,;:*%&^?]"
  "syn region cComment start="\/\*" end="\*\/"
  "syn match cComment "\/\/.*$"

  "hi cBlock guifg=yellow1 guibg=NONE gui=none
  hi link cBracket Operator
  hi link cOperator Operator
  "hi link cComment Comment
endif

" Comment TODO FIXME XXX HACK highlights
syn keyword	cTodo contained TODO FIXME XXX HACK

" Comment NOTE highlights
syn keyword cNote contained NOTE
hi def link cNote Note

" Comment IMPORTANT highlights
syn keyword cImportant contained IMPORTANT
hi def link cImportant Important

" Comment RESEARCH highlights
syn keyword cResearch contained RESEARCH
hi def link cResearch Research

syn cluster cCommentGroup contains=cTodo,cNote,cImportant,cResearch,cBadContinuation

" Function highlights
syn match cCustomParen "(" contains=cParen contains=cCppParen
syn match cFunction "\w\+\s*(\@=" contains=cCustomFunc
hi def link cFunction Function
