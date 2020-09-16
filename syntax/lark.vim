

if exists("b:current_syntax")
  finish
endif

"To do : 
"- disable higlight on pattern_group for ()[]{} if there are preseded by \

syn keyword pattern_agroup /
syn match statement +^\( \|\t\)*!\?%\(\(ignore\)\|\(import\)\|\(declare\)\)+
syn match rule			"^\( \|\t\)*!\?[_?]\?\l\(\l\|[_0-9]\)*" 
syn match token  "^\( \|\t\)*_\?\u\(_\|\u\|\d\)*"
syn match inner_token "\(\l\|\u\|_\)\@<!\(\u\|_\)\+"
syn match separators +|\|:\|\(->\)+
syn match agroup     +"\|(\|)\|{\|}\|\[\|\]+
syn region comment start="//" end="\n" 

"The pattern \(\\\)\@<!\(\\\\\)*\\/ match a odd count
"of '\'  non preceded by '\'
syn region pattern matchgroup=pattern_agroup  start="/\(/\)\@!" end="/\|\n" skip="\(\\\)\@<!\(\\\\\)*\\/" contains=agroup
syn region string matchgroup=agroup  start='"' end='"\|\n' skip='\(\\\)\@<!\(\\\\\)*\\"'



let b:current_syntax = "lark"

hi def link statement   Statement
hi def link rule				Identifier
hi def link token				Type
hi def link inner_token        Type
hi def link separators  Operator 
hi def link agroup			Operator
hi def link pattern_agroup Operator
hi def link comment     Comment
hi def link pattern			String 
hi def link string      String
