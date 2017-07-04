" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/672191/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla672191"

if version >= 700
  hi CursorLine     guibg=#080300 ctermbg=16
  hi CursorColumn   guibg=#080300 ctermbg=16
  hi MatchParen     guifg=#C99D99 guibg=#080300 gui=bold ctermfg=247 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#F8FFFC ctermfg=255 ctermbg=231
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#080300 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#17120F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#373230 guibg=#211C19 gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#383532 gui=italic ctermfg=255 ctermbg=236 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#302B28 gui=none ctermfg=255 ctermbg=236 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#211C19 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#080300 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#F8FFFC guibg=NONE	gui=bold ctermfg=231 ctermbg=NONE cterm=bold
hi Visual           guifg=#AE6CB3 guibg=#323232 gui=none ctermfg=133 ctermbg=236 cterm=none
hi SpecialKey       guifg=#FFFF5E guibg=#17120F gui=none ctermfg=227 ctermbg=233 cterm=none
"hi DiffChange       guibg=#524E00 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#2B274C gui=none ctermbg=236 cterm=none
"hi DiffText         guibg=#6A3366 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#450200 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#AE6CB3 gui=bold ctermfg=133 cterm=bold


" Syntax highlighting
hi Comment guifg=#F8FFFC gui=none ctermfg=231 cterm=none
hi Constant guifg=#FFFF5E gui=none ctermfg=227 cterm=none
hi Number guifg=#FFFF5E gui=none ctermfg=227 cterm=none
hi Identifier guifg=#FFE1B5 gui=none ctermfg=223 cterm=none
hi Statement guifg=#C99D99 gui=none ctermfg=247 cterm=none
hi Function guifg=#B2FFFF gui=none ctermfg=159 cterm=none
hi Special guifg=#50FF66 gui=none ctermfg=83 cterm=none
hi PreProc guifg=#50FF66 gui=none ctermfg=83 cterm=none
hi Keyword guifg=#C99D99 gui=none ctermfg=247 cterm=none
hi String guifg=#AE6CB3 gui=none ctermfg=133 cterm=none
hi Type guifg=#66AF53 gui=none ctermfg=71 cterm=none
hi pythonBuiltin guifg=#FFE1B5 gui=none ctermfg=223 cterm=none
hi TabLineFill guifg=#4A2D47 gui=none ctermfg=238 cterm=none

