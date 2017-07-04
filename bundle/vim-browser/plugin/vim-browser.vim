" ----------------------------------------
" vim-browser.vim File  

" ----------------------------------------

" custom plugin/utility functions to call various web-based searches in a browser.
" TODO:
" rewrite common code to functions


" define a command to call SearchGoogle()
command! -nargs=0 SearchGoogle call s:SearchGoogle()

function! SearchGoogle()
 let keyword = expand("<cword>")
 let url = "http://www.google.com/search?q=" . keyword
 if keyword != ""
	silent exec "!xdg-open '".url."'" | redraw! 
	echo "opened ".url
 else
	echo "No keyword under cursor."
 endif
endfunction

" define a command to call GoogleDefine()
command! -nargs=0 GoogleDefine call s:GoogleDefine()

function! GoogleDefine()
 let keyword = expand("<cword>")
 let url = "https://www.google.com/search?q=define:" . keyword
 if keyword != ""
	silent exec "!xdg-open '".url."'" | redraw! 
	echo "opened ".url
 else
	echo "No keyword under cursor."
 endif
endfunction

" define a command to call Thesaurus()
command! -nargs=0 Thesaurus call s:Thesaurus()

function! Thesaurus()
 let keyword = expand("<cword>")
 let url = "http://thesaurus.com/browse/" . keyword
 if keyword != ""
	silent exec "!xdg-open '".url."'" | redraw! 
	echo "opened ".url
 else
	echo "No keyword under cursor."
 endif
endfunction

" define a command to call CollinsBritish()
command! -nargs=0 CollinsBritish call s:CollinsBritish()

function! CollinsBritish()
 let keyword = expand("<cword>")
 let url = "http://www.collinsdictionary.com/dictionary/english/" . keyword
 if keyword != ""
	silent exec "!xdg-open '".url."'" | redraw! 
	echo "opened ".url
 else
	echo "No keyword under cursor."
 endif
endfunction

" define a command to call AmericanHeritage()
command! -nargs=0 AmericanHeritage call s:AmericanHeritage()

function! AmericanHeritage()
 let keyword = expand("<cword>")
 let url = "http://www.ahdictionary.com/word/search.html?q=" . keyword
 if keyword != ""
	silent exec "!xdg-open '".url."'" | redraw! 
	echo "opened ".url
 else
	echo "No keyword under cursor."
 endif
endfunction

" define a command to call Wiktionary()
command! -nargs=0 Wiktionary call s:Wiktionary()

function! Wiktionary()
 let keyword = expand("<cword>")
 let url = "https://en.wiktionary.org/wiki/" . keyword . "\\#Pronunciation"

 if keyword != ""
	silent exec "!xdg-open '".url."'" | redraw! 
	echo "opened ".url
 else
	echo "No keyword under cursor."
 endif
endfunction

" define a command to call RhymeZone()
command! -nargs=0 RhymeZone call s:RhymeZone()

function! RhymeZone()
 let keyword = expand("<cword>")
 let url = "http://www.rhymezone.com/r/rhyme.cgi?Word=" . keyword . "&typeofrhyme=perfect&org1=syl&org2=l&org3=y"
 if keyword != ""
	silent exec "!xdg-open '".url."'" | redraw! 
	echo "opened ".url
 else
	echo "No keyword under cursor."
 endif
endfunction



