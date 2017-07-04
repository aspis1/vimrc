set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "warm_grey_mod"

if version >= 700
  hi CursorLine guibg=#e4e2e0 ctermbg=7
  hi CursorColumn guibg=#e4e2e0 ctermbg=7
  hi MatchParen guifg=#ffffff ctermfg=15 guibg=#747270 ctermbg=243

  "Tabpages
  hi TabLine guifg=#000000 ctermfg=0 guibg=#b0b8c0 ctermbg=250
  hi TabLineFill guifg=#9098a0 ctermfg=246
  hi TabLineSel guifg=#000000 ctermfg=0 guibg=#f0f0f0 ctermbg=7

  "P-Menu (auto-completion)
  hi Pmenu guifg=#ffffff ctermfg=15 guibg=#a4a2a0 ctermbg=247
  "PmenuSel
  "PmenuSbar
  "PmenuThumb
endif
"
" Html-Titles
hi Title      guifg=#202020 ctermfg=234
hi Underlined  guifg=#202020 ctermfg=234


hi Cursor    guifg=#000000 ctermfg=0   guibg=#b8b4b0 ctermbg=249
hi lCursor   guifg=#000000 ctermfg=0   guibg=#ffffff ctermbg=15
hi LineNr    guifg=#646260 ctermfg=241 guibg=#d8d4d0 ctermbg=188

hi Normal    guifg=#444240 ctermfg=238   guibg=#f0f0f0 ctermbg=236

hi StatusLine guifg=#ffffff ctermfg=15 guibg=#888480 ctermbg=102
hi StatusLineNC guifg=#848280 ctermfg=244 guibg=#c8c4c0 ctermbg=251
hi VertSplit guifg=#c8c4c0 ctermfg=251 guibg=#c8c4c0 ctermbg=251 gui=NONE

" hi Folded    guifg=#708090 ctermfg=66 guibg=#c0d0e0 ctermbg=152
hi Folded    guifg=#848280 ctermfg=244 guibg=#e8e4e0 ctermbg=7

hi NonText   guifg=#c0c0c0 ctermfg=250 guibg=#e0e0e0 ctermbg=7
" Kommentare
hi Comment   guifg=#848280 ctermfg=244

" Konstanten
hi Constant  guifg=#000000 ctermfg=0
hi String    guifg=#804020 ctermfg=94
hi Number    guifg=#406020 ctermfg=58
hi Float     guifg=#204000 ctermfg=22
"hi Statement guifg=#0070e0 ctermfg=26 gui=NONE
" Python: def and so on, html: tag-names
"hi Statement  guifg=#607080 ctermfg=60 gui=bold

" . D: debug, mixin, scope, throw, Python: def
hi Statement   guifg=#607080 ctermfg=60
hi Operator  guifg=#747270 ctermfg=243
" HTML: arguments
"hi Type       guifg=#202020 ctermfg=234 gui=none
hi Type        guifg=#606060 ctermfg=59
" Python: Standard exceptions, True&False
hi Structure  guifg=#405060 ctermfg=239
hi Function   guifg=#203040 ctermfg=236


hi Macro   guifg=#545250 ctermfg=239 gui=none
hi Directory   guifg=#949290 ctermfg=246 gui=none


hi Identifier guifg=#545250 ctermfg=239 gui=none

hi Repeat      guifg=#545250 ctermfg=239
hi Conditional guifg=#545250 ctermfg=239

" Cheetah: #-Symbol, function-names, D: import
hi PreProc    guifg=#705060 ctermfg=59
" Cheetah: def, attr, for and so on, Python: Decorators
hi Define      guifg=#905080 ctermfg=96

hi Error      guifg=#a02000 ctermfg=124 guibg=#ffffff ctermbg=15
hi Todo       guifg=#848280 ctermfg=244 guibg=NONE

" Python: %(...)s - constructs, encoding, D: \n etc
hi Special    guifg=#602000 ctermfg=52 gui=none


" color of <TAB>s etc...  
"hi SpecialKey guifg=#d8a080 ctermfg=180 guibg=#e8e8e8 ctermbg=7 gui=italic  
hi SpecialKey guifg=#c4c2c0 ctermfg=251 guibg=#e4e2e0 ctermbg=7

" Diff
hi DiffChange guifg=NONE guibg=#e4e2e0 ctermbg=7
hi DiffText guifg=NONE guibg=#f0e0a0 ctermbg=223 gui=none
hi DiffAdd guifg=NONE guibg=#c0e0d0 ctermbg=152 gui=bold
hi DiffDelete guifg=NONE guibg=#f0a0a0 ctermbg=217


