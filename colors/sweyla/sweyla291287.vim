" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/291287/

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla291287"

if version >= 700
  hi CursorLine     guibg=#FFFFFE ctermbg=231
  hi CursorColumn   guibg=#FFFFFE ctermbg=231
  hi MatchParen     guifg=#4667C4 guibg=#FFFFFE gui=bold ctermfg=62 ctermbg=231 cterm=bold
  hi Pmenu          guifg=#000000 guibg=#C8C8C8 ctermfg=16 ctermbg=251
  hi PmenuSel       guifg=#000000 guibg=#B8A072 ctermfg=16 ctermbg=143
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#000000 ctermbg=16 gui=none
hi Normal           guifg=#000000 guibg=#FFFFFE gui=none ctermfg=16 ctermbg=231 cterm=none
hi NonText          guifg=#000000 guibg=#F0F0EF gui=none ctermfg=16 ctermbg=255 cterm=none
hi LineNr           guifg=#B8B8B7 guibg=#E6E6E5 gui=none ctermfg=250 ctermbg=254 cterm=none
hi StatusLine       guifg=#000000 guibg=#F0ECE2 gui=italic ctermfg=16 ctermbg=255 cterm=italic
hi StatusLineNC     guifg=#000000 guibg=#D7D7D6 gui=none ctermfg=16 ctermbg=188 cterm=none
hi VertSplit        guifg=#000000 guibg=#E6E6E5 gui=none ctermfg=16 ctermbg=254 cterm=none
hi Folded           guifg=#000000 guibg=#FFFFFE gui=none ctermfg=16 ctermbg=231 cterm=none
hi Title            guifg=#B8A072 guibg=NONE	gui=bold ctermfg=143 ctermbg=NONE cterm=bold
hi Visual           guifg=#446FC4 guibg=#C8C8C8 gui=none ctermfg=62 ctermbg=251 cterm=none
hi SpecialKey       guifg=#957699 guibg=#F0F0EF gui=none ctermfg=246 ctermbg=255 cterm=none
"hi DiffChange       guibg=#FFFFB1 gui=none ctermbg=229 cterm=none
"hi DiffAdd          guibg=#D8D8FE gui=none ctermbg=189 cterm=none
"hi DiffText         guibg=#FFCBFE gui=none ctermbg=225 cterm=none
"hi DiffDelete       guibg=#FFBFBE gui=none ctermbg=217 cterm=none


" Syntax highlighting
hi Comment guifg=#B8A072 gui=none ctermfg=143 cterm=none
hi Constant guifg=#957699 gui=none ctermfg=246 cterm=none
hi Number guifg=#957699 gui=none ctermfg=246 cterm=none
hi Identifier guifg=#C44BB5 gui=none ctermfg=169 cterm=none
hi Statement guifg=#4667C4 gui=none ctermfg=62 cterm=none
hi Function guifg=#68856E gui=none ctermfg=65 cterm=none
hi Special guifg=#9868C4 gui=none ctermfg=98 cterm=none
hi PreProc guifg=#9868C4 gui=none ctermfg=98 cterm=none
hi Keyword guifg=#4667C4 gui=none ctermfg=62 cterm=none
hi String guifg=#446FC4 gui=none ctermfg=62 cterm=none
hi Type guifg=#34B7A1 gui=none ctermfg=73 cterm=none
hi pythonBuiltin guifg=#C44BB5 gui=none ctermfg=169 cterm=none
hi TabLineFill guifg=#B4C5E6 gui=none ctermfg=152 cterm=none

