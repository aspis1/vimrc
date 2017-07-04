"
" Vim colour file
"
" Maintainer:  Vy-Shane Sin Fat <shane@node.mu>
" Version:     1.2
"
" This colour file is meant for GUI use.
"

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="vydark256"


hi Normal        guifg=#bbbbbb ctermfg=248  guibg=#282828 ctermbg=235
hi Title         cterm=none ctermbg=235 ctermfg=248
hi Cursor        guibg=#ffffff ctermbg=15
"hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none 
hi LineNr        guifg=#444455 ctermfg=239  guibg=#292929 ctermbg=235
hi Visual        guibg=#555555 ctermbg=240
hi NonText       guifg=#292929 ctermfg=235  guibg=#292929 ctermbg=235
hi StatusLine    guifg=#bbbbbb ctermfg=248  guibg=#353535 ctermbg=236  gui=none
hi StatusLineNC  guifg=#777777 ctermfg=243  guibg=#353535 ctermbg=236  gui=none
hi VertSplit     guifg=#353535 ctermfg=236  guibg=#353535 ctermbg=236  gui=none
hi ModeMsg       guifg=#99dd99 ctermfg=114  guibg=#394439 ctermbg=237  gui=none
hi ErrorMsg      guifg=#222222 ctermfg=235  guibg=#ff8888 ctermbg=210  gui=none
hi Error         guifg=#ffaaaa ctermfg=217  guibg=#333333 ctermbg=236  gui=none
hi FoldColumn    guifg=#444455 ctermfg=239  guibg=#292929 ctermbg=235
hi Folded        guifg=#666677 ctermfg=242  guibg=#242424 ctermbg=235 


" Vim 7.x specific
if version >= 700
  hi MatchParen  guibg=#364836 ctermbg=102 gui=none
  hi Pmenu       guifg=#bbbbbb ctermfg=248  guibg=#444444 ctermbg=238  gui=none
  hi PmenuSel    guifg=#222222 ctermfg=235  guibg=#99bbdd ctermbg=110  gui=none
  hi PmenuSbar   guifg=#494949 ctermfg=238  guibg=#494949 ctermbg=238  gui=bold
  hi PmenuThumb  guifg=#666666 ctermfg=241  guibg=#666666 ctermbg=241  gui=bold
  hi Search      guifg=#dddd99 ctermfg=186  guibg=#444433 ctermbg=237  gui=none
  hi IncSearch   guifg=#eeeeaa ctermfg=229  guibg=#666633 ctermbg=240  gui=bold
  hi CursorLine  cterm=NONE guibg=#353535 ctermbg=236  gui=none
  hi ColorColumn guibg=#252525 ctermbg=235
  hi SpellBad    guisp=#774444
  hi SpellCap    guisp=#774444
  hi SpellLocal  guisp=#774444
  hi SpellRare   guisp=#774444
endif


" Syntax highlighting 
"hi Comment       guifg=#666677 ctermfg=242  gui=none
"hi Todo          guifg=#8888aa ctermfg=103  guibg=#303030 ctermbg=236  gui=italic
"hi Operator      guifg=#bbbbbb ctermfg=250  gui=none
"hi Identifier    guifg=#bbbbbb ctermfg=250  gui=none
"hi Statement     guifg=#bbbbbb ctermfg=250  gui=none
"hi Type          guifg=#99bbcc ctermfg=110  gui=none
"hi Constant      guifg=#88cc99 ctermfg=114  gui=none
"hi Conditional   guifg=#99bbcc ctermfg=110  gui=none
"hi Delimiter     guifg=#99bbdd ctermfg=110  gui=none
"hi PreProc       guifg=#88ddcc ctermfg=116  gui=none
"hi Special       guifg=#99dd99 ctermfg=114  gui=bold
"hi Keyword       guifg=#bbbbbb ctermfg=250  gui=none

" Syntax highlighting 
hi Comment       guifg=#666677 ctermfg=242  gui=none
hi Todo          guifg=#8888aa ctermfg=103  guibg=#303030 ctermbg=235  gui=italic
hi Operator      guifg=#bbbbbb ctermfg=248  gui=none
hi Identifier    guifg=#bbbbbb cterm=none  ctermfg=186  gui=none						"perl variables
hi Statement     guifg=#bbbbbb ctermfg=101  gui=none
hi Type          guifg=#99bbcc ctermfg=110  gui=none
hi Constant      guifg=#88cc99 ctermfg=102  gui=none									" was 114 ug green
hi Conditional   guifg=#99bbcc ctermfg=248  gui=none
hi Delimiter     guifg=#99bbdd ctermfg=110  gui=none
hi PreProc       guifg=#88ddcc ctermfg=116  gui=none
hi Special       guifg=#99dd99 ctermfg=186  gui=bold
hi Keyword       guifg=#bbbbbb ctermfg=248  gui=none

hi Number		cterm=none ctermbg=235 ctermfg=209
hi Question    cterm=none ctermbg=235 ctermfg=186
hi htmlLink		cterm=none ctermbg=235 ctermfg=102 

hi link Function        Normal
hi link Character       Constant
hi link String          Constant
hi link Boolean         Constant
"hi link Number          Constant
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         Normal
hi link Define          Type
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" ---------------------
" mini buffer explorer
" ---------------------
hi MBENormal                   cterm=none ctermbg=none ctermfg=242     " buffers unchanged, not visible
hi MBEChanged                  cterm=none ctermbg=none ctermfg=242     " buffers changed, not visible
hi MBEVisibleNormal            cterm=none ctermbg=none ctermfg=242     " buffers unchanged, visible
hi MBEVisibleActive            cterm=none ctermbg=none ctermfg=242     " buffers unchanged, visible, active
hi MBEVisibleChanged           cterm=none ctermbg=none ctermfg=242     " buffers changed, visible
hi MBEVisibleChangedActive     cterm=none ctermbg=none ctermfg=242     " buffers changed, visible, active



