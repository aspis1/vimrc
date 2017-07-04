" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/862302/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla862302"

if version >= 700
  hi CursorLine     guibg=#000006 ctermbg=16
  hi CursorColumn   guibg=#000006 ctermbg=16
  hi MatchParen     guifg=#97562B guibg=#000006 gui=bold ctermfg=94 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#95512A ctermfg=255 ctermbg=94
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000006 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F0F15 gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#303035 guibg=#19191F gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#1D100D gui=italic ctermfg=255 ctermbg=233 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#28282E gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#19191F gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000006 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#95512A guibg=NONE	gui=bold ctermfg=94 ctermbg=NONE cterm=bold
hi Visual           guifg=#84007B guibg=#323232 gui=none ctermfg=90 ctermbg=236 cterm=none
hi SpecialKey       guifg=#FB4938 guibg=#0F0F15 gui=none ctermfg=203 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C04 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#252550 gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663269 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0004 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#84007B gui=bold ctermfg=90 cterm=bold


" Syntax highlighting
hi Comment guifg=#95512A gui=none ctermfg=94 cterm=none
hi Constant guifg=#FB4938 gui=none ctermfg=203 cterm=none
hi Number guifg=#FB4938 gui=none ctermfg=203 cterm=none
hi Identifier guifg=#990C49 gui=none ctermfg=89 cterm=none
hi Statement guifg=#97562B gui=none ctermfg=94 cterm=none
hi Function guifg=#844076 gui=none ctermfg=96 cterm=none
hi Special guifg=#CB3F02 gui=none ctermfg=166 cterm=none
hi PreProc guifg=#CB3F02 gui=none ctermfg=166 cterm=none
hi Keyword guifg=#97562B gui=none ctermfg=94 cterm=none
hi String guifg=#84007B gui=none ctermfg=90 cterm=none
hi Type guifg=#8A008D gui=none ctermfg=90 cterm=none
hi pythonBuiltin guifg=#990C49 gui=none ctermfg=89 cterm=none
hi TabLineFill guifg=#340034 gui=none ctermfg=236 cterm=none
