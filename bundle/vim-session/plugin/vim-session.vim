" ----------------------------------------
" vim-session.vim File  

" ----------------------------------------

" define a command to call SaveSession()
command! -nargs=0 SaveSession call s:SaveSession()

"nnoremap <leader>ss :call <SID>SaveSession()) <CR>
"nnoremap <Plug>SaveSession :call <sid>SaveSession()<cr>
"if !hasmapto('<Plug>SaveSession', 'n')
"	    nmap <leader>ss <Plug>SaveSession
"endif

function! s:SaveSession()
"function! s:SaveSession(fileName)

" Writes a session file to either a customizable default or user specified 
" directory.  Upon confirmation, creates directorys if needed. Uses a 
" customizable default file naming format or an ad hoc file name when 
" saving the session file.

	"defaults
	let sessionDir = 'Documents'		"default directory for session files
	let filePrefx ='vim_'			"default session file prefix
	let fileExt = '_session.vim'	"default session file extension

	"get user input for session file directory and name
	call inputsave()
	let fileInput = input('Name of session file to save - <CR> to cancel: ')
	call inputrestore()

	"cancel save session file on empty user input
	if(empty(fileInput)) | echo 'Save session cancelled.' | return | endif

	"check input for a user specified directory
	if (empty(matchstr(fileInput, '\/'))) 
		"check if default directory exists
		if isdirectory($HOME . '/' . sessionDir) == 0
			let userChoice = AskQuit("Default session directory '" . $HOME . '/' . sessionDir .
 		   	  \ "' doesn't exist.", "&Create it?")
			if (userChoice == 2)
				try
					"create default session directory
					call mkdir( $HOME . '/' . sessionDir, 'p' )
				catch
					echoerr "Could not create '" . $HOME . '/' . sessionDir . "'."
				endtry
			endif
		endif
		try
			"write session file using default directory and naming conventions
			exec "mksession! " . $HOME . '/' . sessionDir . "/" . filePrefx .
 		   	 \ fileInput . fileExt 
		catch
			echoerr "Could not create session file '" . $HOME . '/' . sessionDir . 
			 \ "/" . filePrefx . fileInput .fileExt "'."
		endtry	
		echom "Session file '" . $HOME .  '/' . sessionDir . "/" . filePrefx . 
		 \ fileInput . fileExt . "' written."
	else
		"write session file to a user specified directory
		if isdirectory(fnamemodify( fileInput, ':p:h')) == 0
			let userChoice = AskQuit("Directory '" . fnamemodify( fileInput, ':p:h') . "'
 		   	  \ doesn't exist.", "&Create it?")
			if (userChoice == 2)
				try
					call mkdir( fnamemodify( fileInput, ':p:h'), 'p' )
				catch
					echoerr "Could not create '" . fnamemodify( fileInput,
 				   	 \ ':p:h') . "'."
				endtry
			endif
		endif
		try
			exec "mksession! " .  fileInput
		catch
			echoerr "Could not create session file '" . fileInput . "'."
		endtry
		echo "Session file '" .  fileInput . "' written."
	endif
endfunction

function! AskQuit (msg, proposed_action)
	    "if confirm(a:msg, "&Quit?\n" . a:proposed_action) == 1
	    " let userChoice = confirm(a:msg, "&Quit?\n" . a:proposed_action)
			"echo 'choice is: ' . userChoice
			return confirm(a:msg, "&Quit?\n" . a:proposed_action)
			"exit
		"endif
endfunction
