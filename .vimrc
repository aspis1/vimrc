
" ----------------------------------------
" .vimrc File  
" ----------------------------------------

" --------------------
" pathogen
" --------------------
" Example - To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []

" for some reason the csscolor plugin is very slow when run on the terminal
" but not in GVim, so disable it if no GUI is running
if !has('gui_running')
    "call add(g:pathogen_disabled, 'csscolor')
endif

" Gundo requires at least vim 7.3
if v:version < '703' || !has('python')
    "call add(g:pathogen_disabled, 'gundo')
endif

if v:version < '702'
    "call add(g:pathogen_disabled, 'l9')
endif

filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()

" --------------------
" defaults
" --------------------
set nocompatible				" use vims defaults
set backspace=2					" allow backspacing over everything in insert mode - not working
set columns=120					" set the number of columns used on the screen
" set wrapmargin=8				" chars from right margin to begin wrapping - disabled, it writes EOL
set encoding=utf-8				" use utf-8 internally instead of latin-1 
set mouse=a						" use mouse on all
nmap <leader>vs :bel vsp<CR>	" open vertical split right and set focus

" --------------------
" tabs/spaces
" --------------------
" the following will set tabs only for indentation
set noexpandtab
set copyindent
set preserveindent
"set softtabstop=0
set softtabstop=4
set shiftwidth=4
set tabstop=4

" --------------------
" word wrap
" --------------------
nnoremap <leader>sw :call ToggleSoftWrap()<CR>		" toogle soft wrap
function! ToggleSoftWrap()
	set linebreak						" don't split words when word wrapping
	"set listchars=tab:▸\ ,eol:¬		" use these symbols for tabstops and EOL (see bindings for toggle)
	set listchars=tab:⡁\ ,eol:¬			" use these symbols for tabstops and EOL (see bindings for toggle)
	"set nolist							" disable special characters for tab EOL etc.. also list interferes with linebreak
	set showbreak=▸ 					" show this (...) as the line continuation character
	set textwidth=0	 					" prevent automatic line break insertion in newly entered text		
	set wrapmargin=0
	set nowrap!		
endfunc

" Toggle 80 column marker - requires vim 7.3
if v:version < '703'
	" don't ToggleColorColumn # conditional not working
else
	nnoremap <F2> :call ToggleColorColumn()<CR>

		func! ToggleColorColumn()
    		if exists("b:colorcolumnon") && b:colorcolumnon
        		let b:colorcolumnon = 0
        		exec ':set colorcolumn=0'
        		echo '80 column marker off'
    		else
        		let b:colorcolumnon = 1
        		exec ':set colorcolumn=80'
        		echo '80 column marker on'
    		endif    
		endfunc	
endif

" --------------------
" cursor
" --------------------
set cursorline																	" highlight current line
nnoremap <leader>c :set cursorline!<CR>											" toogle current line highlight
nnoremap <silent> <leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>	" <leader>l marks line, 'l to return, match to unmark
"if &term =~ "xterm\\|rxvt"														" only changes cursor color, doesn't restore on vim exit
  " use an orange cursor in insert mode											" this is a known bug probably in gnome-terminal
"let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
"  let &t_EI = "\<Esc>]12;purple\x7"
"  silent !echo -e "\033]12;purple\007"
  " reset cursor when vim exits
"  autocmd VimLeave * silent !echo -e "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
"endif

set scrolloff=3						" keep a few lines visable above and below the current line
set number							" show line numbers
set numberwidth=3					" set width of line number column

"set ruler							" curent row and column at bottom w/ current status line config only usefule with <Ctrl-G>
set hidden							" hide inactive buffers, avoids :b! <n>, :w, :q! etc. on buffer change
set history=500						" command, file history etc.

" --------------------
" status
" --------------------
"http://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim?rq=1
set statusline=									" clear the statusline when vimrc is reloaded
set statusline+=%1*\ %n\ %*						" buffer number
set statusline+=%1*%{v:register}\ %*			" active register
set statusline+=%1*%<%F\ %*						" full file path
set statusline+=%2*%m\ %*						" modified flag
set statusline+=%2*%r\ %*						" readonly flag
set statusline+=%1*%=							" left/right divider
set statusline+=%1*[%{strlen(&ft)?&ft:'none'},	" file type
set statusline+=%1*%{strlen(&fenc)?&fenc:&enc},	" file encoding
set statusline+=%1*%{&fileformat}]\ %*			" file format
set statusline+=%1*%5l%*						" current line
set statusline+=%1*,%-4v\ %*					" virtual column number
set statusline+=%1*%L\ %*						" total lines
set laststatus=2								" always show status line
set wildmode=longest,list						" cmd/file completion, show longest match first, then cycle list on <tab>
set wildmenu									" allow navigation with left and right keys though the completion list
"set showcmd									" show typed command on bottom
"set showmode 									" show current mode on bottom

" --------------------
" search
" --------------------
set incsearch						" use incremential search, show matches as each letter is typed
set ignorecase						" ignore case when searching
set smartcase						" don't ignore case when search string includes upper case characters
set hlsearch						" highlight matching search terms
set showmatch						" show matching brackets
set mat=5							" show matching brackets for 0.5 seconds
let hlstate=0						" <leader>h toggles search highlight 
nnoremap <leader>h :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>
nmap <leader>bs :Bsgrep <C-r>/<CR>	" search all buffers using buffersarus and vim search register


"Split windows below the current window. - no sure how useful this is - Note: may conflict with mini buffer explorer 
"set splitbelow 

" --------------------
" bindings
" --------------------
vmap <C-j> gj						" move the cursor by display lines use Ctrl + j, Ctrl + k etc
vmap <C-k> gk						" instead of using gj, gk, g$, g0, g^ 
vmap <C-4> g$						" Ctrl-4, Ctrl-0, Ctrl-6 not working
vmap <C-6> g^
vmap <C-0> g^
nmap <C-j> gj
nmap <C-k> gk
nmap <C-4> g$
nmap <C-6> g^
nmap <C-0> g^
nmap <C-n> :bnext<CR>				" go to next file in buffer
nmap <C-p> :bprev<CR>				" go to previous file in buffer
nmap <C-e> :e#<CR>					" return to the last viewed/used file in buffer
vnoremap <leader>sl :s/ /\r/ge<CR>	" split out a list
vnoremap <leader>jl :s/\n/ /ge<CR>	" join a list'
vnoremap <C-S-c> "+y				" copy to the system clipboard
nmap <leader>lt :set list!<CR>		" toggle :set list
nmap <leader>p :set paste!<CR>		" toogle paste mode
map <leader>cc <c-_><c-_>			" remap tcomments plugin - note: bug in tcomments when set paste is on
nmap gV `[v`]						" visually select the last edited/pasted text
nmap <C-Up> ddkP					" move single lines up using arrow key - note: unimpaired.vim does this better
nmap <C-Down> ddp					" move single lines down using arrow key
vmap <C-Up> xkP`[V`]				" move multiple lines up using arrow key
vmap <C-Down> xp`[V`]				" move multiple lines down using arrow key
nmap <leader>hm :cd ~/ <CR>:pwd<CR>	" go to home directory
map <F5> :setlocal spell! spelllang=en_us<CR>	" toggle spell check
" swap current word with next word
nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o>:noh<CR>w
" swap current word with previous word
nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>:noh<CR>

" resize vertical split (current window) with keypad + and - keys
if bufwinnr(1)
  map <kPlus> <C-w>>
  map <kMinus> <C-w><
endif

" move up through wrapped line in insert mode
imap <silent> <Up> <C-o>gk

" move down through wrapped line in insert mode
imap <silent> <Down> <C-o>gj
" --------------------
" plugins/macros
" --------------------
"
if v:version < '703' || !has('python')
	:source /usr/share/vim/vim72/macros/matchit.vim		" jump to matching tag using %
elseif v:version == '703'
	:source /usr/share/vim/vim73/macros/matchit.vim		" jump to matching tag using %
else
	:source /usr/share/vim/vim74/macros/matchit.vim		" jump to matching tag using %
endif
"let g:netrw_liststyle=3							" netrw use tree-mode as default view -disabled  even buggier than ever ...

" custom plugin to call various web based searches in a browser. See ~/.vim/bundle/vim-browseer/plugin/vim-browser.vim
nmap <leader>go :call SearchGoogle()<CR>
nmap <leader>gd :call GoogleDefine()<CR>
nmap <leader>th :call Thesaurus()<CR>
nmap <leader>cb :call CollinsBritish()<CR>
nmap <leader>ah :call AmericanHeritage()<CR>
nmap <leader>rz :call RhymeZone()<CR>
nmap <leader>wk :call Wiktionary()<CR>
nmap <leader>sc :call SearchCMU()<CR>

" --------------------
" filetypes
" --------------------  
filetype on  
filetype plugin on  
filetype indent on 
autocmd BufRead,BufNewFile *.poem set filetype=poem		"custom user defined file type see: ~/.vim/syntax/poem.vim

" --------------------
" buffers
" --------------------
let g:miniBufExplUseSingleClick = 1			" set mini buffer explorer plugin to switch buffer on single click
let g:statusLineText=""						" no status line text
let g:miniBufExplStatusLineText=""			" but can't change color http://dev.gentoo.org/~bass/configs/vimrc.html
let g:did_minibufexplorer_syntax_inits = 1	" keep mini buffer explorer from overriding syntax colors in themes etc

" --------------------
" files
" --------------------
" save backups to a common backup directory.
" if .vim-backup is in the current directory, use that
" otherwise save it to ~/.vim/backup or make one
" Note: this needs to be reworked to exclude sensitive documents.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" save swp files to a common swp directory.
" if .vim-swap is in the current directory, use that
" otherwise save it to ~/.vim/swap, ~/tmp or make one
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" store the vim global state
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

" compare current (unsaved) buffer (changes) with saved version
" on file system. using vim diff. Close with :diffoff
function! s:DiffWithSaved()
 let filetype=&ft
 diffthis
 vnew | r # | normal! 1Gdd
 diffthis
 exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" --------------------
" sessions
" --------------------

"command! -nargs=0 MySession call s:SaveSession()
"command! -nargs=1 MySession call s:SaveSession(<f-args>)
"cnoremap <C-O> source ~/Documents/vim_usual_session.vim
"cnoremap <C-S> mksession! ~/Documents/vim_usual_session.vim "<C-S>" toggles scrollbar in terminator

nnoremap <leader>ss :SaveSession <CR>
" write a funtion to locate, display and source sessions add to vim-session
" plugin
nnoremap <leader>os :source ~/Documents/vim_usual_session.vim <CR>

" save and read folds data in: ~/.vim/view/, will create a folds data file for
" every file opened, so it may need to limited to certain file type i.e. those
" that cannot be auto folded via their syntax.
"autocmd BufWinLeave ?* mkview
"autocmd BufWinEnter ?* silent loadview
" should probably use this more elegant solution instead
autocmd BufWrite * mkview
autocmd BufRead * silent loadview


" --------------------
" languages
" --------------------

" --------------------
" perl
" --------------------
"for quick script header, type '_perls' "
iab _perls #!/usr/bin/perl<CR><BS><CR><CR>use strict;<CR>use warnings;<CR>	

" --------------------
" theme
" --------------------
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
  set background=dark					" use colors which look good on a dark background
	" --------------------
	" syntax
	" --------------------
	if has("syntax")
		syntax on
	endif
	"colorscheme distinguished256
	"colorscheme mayansmoke				" has a 256 color section but doesn't look right
	"colorscheme strange				" too dark
	colorscheme vydark256				" my main theme needs name change to jkvydark256 or something as its under dev w/ major changes
	"colorscheme warm_grey_mod
	"colorscheme badwolf
	"colorscheme goodwolf
	"colorscheme apprentice
	"colorscheme moonshine
	"colorscheme moonshine_lowcontrast
	if &diff
		colorscheme moonshine_minimal	" good contrast for diffing purposes
	endif
else
	" --------------------
	" syntax
	" --------------------
	if has("syntax")
		syntax on
	endif
  colorscheme default
endif


" Show syntax highlighting groups for word under cursor
nmap <leader>syn :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" --------------------
" misc. abbreviations
" --------------------

iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  
iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

" --------------------
" status
" --------------------
" must define after colorscheme or it will be overwritten
hi User1 ctermfg=239 guifg=#4E4e4e
hi User2 ctermfg=88 guifg=#870000

" --------------------
" invisible
" --------------------
hi NonText ctermfg=238				" tab, EOL etc. indicators
hi SpecialKey ctermfg=238

" experiment with transparent background
"hi Normal guibg=NONE ctermbg=NONE
 "hi NonText ctermbg=none
 "hi Normal guibg=NONE ctermbg=NONE
