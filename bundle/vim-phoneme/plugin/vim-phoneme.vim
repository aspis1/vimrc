" ----------------------------------------
" vim-phoneme.vim File  

" ----------------------------------------

" custom plugin/utility functions to match word under cursor to phenome data.
" TODO:
"

" define a command to call SearchCMU()
command! -nargs=0 SearchCMU call s:SearchCMU()

function! SearchCMU()
   let search_term = expand("<cword>")
  if search_term != ""
    let retVal = GetPhonemes(search_term)
		let winnr = bufwinnr('^_output$')
    if ( winnr >= 0 )
        execute winnr . 'wincmd w'
        normal gg"_dG
    else
        30vnew _output
        "setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
				setlocal buftype=nofile nobuflisted noswapfile nowrap
    endif

    if exists('retVal')
      "echo retVal
			"delete to black hole
			normal gg"_dG
			"append data to buffer
			:call append(0, retVal)
			"maybe useful to save search term
      ":let @0 = search_term
    else
      echo 'Error: nothing returned.'
    endif
  else
    echo "No search term under cursor."
  endif

endfunction


" subroutines ===============================================================


function! GetPhonemes(aString)
  perl << EOF

  use strict;
  use warnings FATAL => 'all';
  use warnings NONFATAL => 'redefine';

  my $string = VIM::Eval("a:aString");
  VIM::Msg("Ok searching for phonemes that match " . $string  . "...");

  # escape ' before returning data
  $string =~ s/'/''/g;

  VIM::DoCommand("return '$string'")

EOF
endfunction


