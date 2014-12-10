" Comment NOTE highlights
syn keyword cNote contained NOTE
hi def link cNote Note

" Comment IMPORTANT highlights
syn keyword cImportant contained IMPORTANT
hi def link cImportant IMPORTANT

" Comment RESEARCH highlights
syn keyword cResearch contained RESEARCH
hi def link cResearch RESEARCH

syn cluster cCommentGroup contains=cTodo,cNote,cImportant,cResearch,cBadContinuation

" Function highlights
syn match cCustomParen "(" contains=cParen contains=cCppParen
syn match cFunction "\w\+\s*(\@=" contains=cCustomFunc
hi def link cFunction Function
