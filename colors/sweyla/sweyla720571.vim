" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/720571/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla720571"

if version >= 700
  hi CursorLine     guibg=#000000 ctermbg=16
  hi CursorColumn   guibg=#000000 ctermbg=16
  hi MatchParen     guifg=#AAA03A guibg=#000000 gui=bold ctermfg=143 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#41B374 ctermfg=255 ctermbg=72
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F0F0F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#303030 guibg=#191919 gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#0D2317 gui=italic ctermfg=255 ctermbg=233 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#282828 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#191919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#41B374 guibg=NONE	gui=bold ctermfg=72 ctermbg=NONE cterm=bold
hi Visual           guifg=#DD9206 guibg=#323232 gui=none ctermfg=172 ctermbg=236 cterm=none
hi SpecialKey       guifg=#FF7413 guibg=#0F0F0F gui=none ctermfg=208 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C4C00 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#25254C gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663266 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0000 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#DD9206 gui=bold ctermfg=172 cterm=bold


" Syntax highlighting
hi Comment guifg=#41B374 gui=none ctermfg=72 cterm=none
hi Constant guifg=#FF7413 gui=none ctermfg=208 cterm=none
hi Number guifg=#FF7413 gui=none ctermfg=208 cterm=none
hi Identifier guifg=#B49F00 gui=none ctermfg=142 cterm=none
hi Statement guifg=#AAA03A gui=none ctermfg=143 cterm=none
hi Function guifg=#876200 gui=none ctermfg=94 cterm=none
hi Special guifg=#A6494D gui=none ctermfg=131 cterm=none
hi PreProc guifg=#A6494D gui=none ctermfg=131 cterm=none
hi Keyword guifg=#AAA03A gui=none ctermfg=143 cterm=none
hi String guifg=#DD9206 gui=none ctermfg=172 cterm=none
hi Type guifg=#57FF00 gui=none ctermfg=82 cterm=none
hi pythonBuiltin guifg=#B49F00 gui=none ctermfg=142 cterm=none
hi TabLineFill guifg=#583A02 gui=none ctermfg=58 cterm=none

