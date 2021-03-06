" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/819402/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla819402"

if version >= 700
  hi CursorLine     guibg=#000003 ctermbg=16
  hi CursorColumn   guibg=#000003 ctermbg=16
  hi MatchParen     guifg=#1DF0FF guibg=#000003 gui=bold ctermfg=51 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#3CFFB2 ctermfg=255 ctermbg=85
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000003 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F0F12 gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#303032 guibg=#19191C gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#0C3326 gui=italic ctermfg=255 ctermbg=235 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#28282B gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#19191C gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000003 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#3CFFB2 guibg=NONE	gui=bold ctermfg=85 ctermbg=NONE cterm=bold
hi Visual           guifg=#0DA77E guibg=#323232 gui=none ctermfg=36 ctermbg=236 cterm=none
hi SpecialKey       guifg=#7EBEA0 guibg=#0F0F12 gui=none ctermfg=109 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C02 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#25254E gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663267 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0002 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#0DA77E gui=bold ctermfg=36 cterm=bold


" Syntax highlighting
hi Comment guifg=#3CFFB2 gui=none ctermfg=85 cterm=none
hi Constant guifg=#7EBEA0 gui=none ctermfg=109 cterm=none
hi Number guifg=#7EBEA0 gui=none ctermfg=109 cterm=none
hi Identifier guifg=#D5A4E3 gui=none ctermfg=182 cterm=none
hi Statement guifg=#1DF0FF gui=none ctermfg=51 cterm=none
hi Function guifg=#5DFFFF gui=none ctermfg=87 cterm=none
hi Special guifg=#858AC8 gui=none ctermfg=104 cterm=none
hi PreProc guifg=#858AC8 gui=none ctermfg=104 cterm=none
hi Keyword guifg=#1DF0FF gui=none ctermfg=51 cterm=none
hi String guifg=#0DA77E gui=none ctermfg=36 cterm=none
hi Type guifg=#0089FF gui=none ctermfg=33 cterm=none
hi pythonBuiltin guifg=#D5A4E3 gui=none ctermfg=182 cterm=none
hi TabLineFill guifg=#054234 gui=none ctermfg=236 cterm=none

