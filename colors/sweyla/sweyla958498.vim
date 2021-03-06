" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/958498/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla958498"

if version >= 700
  hi CursorLine     guibg=#000004 ctermbg=16
  hi CursorColumn   guibg=#000004 ctermbg=16
  hi MatchParen     guifg=#A6A270 guibg=#000004 gui=bold ctermfg=143 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#00DF89 ctermfg=255 ctermbg=42
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000004 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F0F13 gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#303033 guibg=#19191D gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#002C1E gui=italic ctermfg=255 ctermbg=234 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#28282C gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#19191D gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000004 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#00DF89 guibg=NONE	gui=bold ctermfg=42 ctermbg=NONE cterm=bold
hi Visual           guifg=#60DA5E guibg=#323232 gui=none ctermfg=77 ctermbg=236 cterm=none
hi SpecialKey       guifg=#699B89 guibg=#0F0F13 gui=none ctermfg=66 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C02 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#25254F gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663268 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0003 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#60DA5E gui=bold ctermfg=77 cterm=bold


" Syntax highlighting
hi Comment guifg=#00DF89 gui=none ctermfg=42 cterm=none
hi Constant guifg=#699B89 gui=none ctermfg=66 cterm=none
hi Number guifg=#699B89 gui=none ctermfg=66 cterm=none
hi Identifier guifg=#938C65 gui=none ctermfg=101 cterm=none
hi Statement guifg=#A6A270 gui=none ctermfg=143 cterm=none
hi Function guifg=#00CE81 gui=none ctermfg=42 cterm=none
hi Special guifg=#05CBFF gui=none ctermfg=45 cterm=none
hi PreProc guifg=#05CBFF gui=none ctermfg=45 cterm=none
hi Keyword guifg=#A6A270 gui=none ctermfg=143 cterm=none
hi String guifg=#60DA5E gui=none ctermfg=77 cterm=none
hi Type guifg=#557547 gui=none ctermfg=240 cterm=none
hi pythonBuiltin guifg=#938C65 gui=none ctermfg=101 cterm=none
hi TabLineFill guifg=#265728 gui=none ctermfg=235 cterm=none

