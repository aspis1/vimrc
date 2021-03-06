" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/404765/

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla404765"

if version >= 700
  hi CursorLine     guibg=#FFFDFF ctermbg=231
  hi CursorColumn   guibg=#FFFDFF ctermbg=231
  hi MatchParen     guifg=#745742 guibg=#FFFDFF gui=bold ctermfg=240 ctermbg=231 cterm=bold
  hi Pmenu          guifg=#000000 guibg=#C8C8C8 ctermfg=16 ctermbg=251
  hi PmenuSel       guifg=#000000 guibg=#4E0036 ctermfg=16 ctermbg=53
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#000000 ctermbg=16 gui=none
hi Normal           guifg=#000000 guibg=#FFFDFF gui=none ctermfg=16 ctermbg=231 cterm=none
hi NonText          guifg=#000000 guibg=#F0EEF0 gui=none ctermfg=16 ctermbg=255 cterm=none
hi LineNr           guifg=#B8B6B8 guibg=#E6E4E6 gui=none ctermfg=250 ctermbg=254 cterm=none
hi StatusLine       guifg=#000000 guibg=#DBCAD6 gui=italic ctermfg=16 ctermbg=188 cterm=italic
hi StatusLineNC     guifg=#000000 guibg=#D7D5D7 gui=none ctermfg=16 ctermbg=188 cterm=none
hi VertSplit        guifg=#000000 guibg=#E6E4E6 gui=none ctermfg=16 ctermbg=254 cterm=none
hi Folded           guifg=#000000 guibg=#FFFDFF gui=none ctermfg=16 ctermbg=231 cterm=none
hi Title            guifg=#4E0036 guibg=NONE	gui=bold ctermfg=53 ctermbg=NONE cterm=bold
hi Visual           guifg=#974B8C guibg=#C8C8C8 gui=none ctermfg=96 ctermbg=251 cterm=none
hi SpecialKey       guifg=#003C00 guibg=#F0EEF0 gui=none ctermfg=22 ctermbg=255 cterm=none
"hi DiffChange       guibg=#FFFDB2 gui=none ctermbg=229 cterm=none
"hi DiffAdd          guibg=#D8D6FF gui=none ctermbg=189 cterm=none
"hi DiffText         guibg=#FFC9FF gui=none ctermbg=225 cterm=none
"hi DiffDelete       guibg=#FFBDBF gui=none ctermbg=217 cterm=none


" Syntax highlighting
hi Comment guifg=#4E0036 gui=none ctermfg=53 cterm=none
hi Constant guifg=#003C00 gui=none ctermfg=22 cterm=none
hi Number guifg=#003C00 gui=none ctermfg=22 cterm=none
hi Identifier guifg=#000004 gui=none ctermfg=16 cterm=none
hi Statement guifg=#745742 gui=none ctermfg=240 cterm=none
hi Function guifg=#00005B gui=none ctermfg=17 cterm=none
hi Special guifg=#0019B3 gui=none ctermfg=19 cterm=none
hi PreProc guifg=#0019B3 gui=none ctermfg=19 cterm=none
hi Keyword guifg=#745742 gui=none ctermfg=240 cterm=none
hi String guifg=#974B8C gui=none ctermfg=96 cterm=none
hi Type guifg=#24005E gui=none ctermfg=17 cterm=none
hi pythonBuiltin guifg=#000004 gui=none ctermfg=16 cterm=none
hi TabLineFill guifg=#D5B5D1 gui=none ctermfg=182 cterm=none

