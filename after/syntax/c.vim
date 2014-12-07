" Comment NOTE highlights
syn keyword cNote contained NOTE
syn cluster cCommentGroup contains=cTodo,cNote,cBadContinuation
hi def link cNote Note

" Function highlights
syn match cCustomParen "(" contains=cParen contains=cCppParen
syn match cFunction "\w\+\s*(\@=" contains=cCustomFunc
hi def link cFunction Function
