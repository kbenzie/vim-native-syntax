" auto is now a type keyword
syn keyword Type auto

" Template function highlights
syn region cppAngleBrackets matchgroup=AngleBracketContents start=
\"\v%(<operator\_s*)@<!%(%(\_i|template\_s*)@<=\<[<=]@!|\<@<!\<[[:space:]<=]@!)"
\ end='>' contains=@cppSTLgroup,cppStructure,cType,cCustomClass,
\cppAngleBrackets,cNumbers
syn match cppAngleBracket "<\|>" contains=cppAngleBrackets
syn match cppTemplateFunction "\w\+\s*<.*>(\@=" contains=cppAngleBracket,
\cppAngleBrackets
hi def link cppTemplateFunction Function

" Scope highlights
syn match cCustomScope "::"
syn match cCustomClass "\w\+\s*::" contains=cCustomScope
hi def link cCustomClass StorageClass
