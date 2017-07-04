" Vim syntax file
" Version:      1

if exists("b:current_syntax")
  finish
endif


"syntax keyword poemMeter |

setlocal iskeyword+=|
setlocal iskeyword+=/
setlocal iskeyword+=x
setlocal iskeyword+=w
setlocal iskeyword+=c
setlocal iskeyword+=+
setlocal iskeyword+=?
setlocal iskeyword+=u
setlocal iskeyword+=M
syntax case ignore 

"syn match todoHome	"^h: "
"syn match todoWork	"^w: "
"syn match todoPersonal	"^p: "

"highlight link todoHome	Type
"highlight link todoWork	String
"highlight link todoPersonal	Statement

syntax match poemKeyword	"|"
syntax match poemKeyword	"|x"
syntax match poemKeyword	"|wc"
syntax match poemKeyword	"|wc?"
syntax match poemKeyword	"/"
syntax match poemKeyword	"/x"
syntax match poemKeyword	"/wc"
syntax match poemKeyword	"/wc?"
syntax match poemKeyword	"/+"
syntax match poemKeyword	"+?"
syntax match poemKeyword	"wc?"
syntax match poemKeyword	"x-"
syntax match poemKeyword	"-x"
syntax match poemKeyword	"x--"
syntax match poemKeyword	"^u\s"
syntax match poemKeyword	"\su\s"
syntax match poemKeyword	"\su$"
syntax match poemKeyword	"^M\s"
syntax match poemKeyword	"\sM\s"
syntax match poemKeyword	"\sM$"

highlight link poemKeyword Comment
let b:current_syntax = "poem"

