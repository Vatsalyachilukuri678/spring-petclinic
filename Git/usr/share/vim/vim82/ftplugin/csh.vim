" Vim filetype plugin file
<<<<<<< HEAD
" Language:		csh
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainer:	Dan Sharp <dwsharp at users dot sourceforge dot net>
" Contributor:		Johannes Zellner <johannes@zellner.org>
" Last Change:		2021 Oct 15
=======
" Language:	csh
" Maintainer:	Dan Sharp <dwsharp at users dot sourceforge dot net>
" Last Changed: 20 Jan 2009
" URL:		http://dwsharp.users.sourceforge.net/vim/ftplugin
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

<<<<<<< HEAD
let s:save_cpo = &cpo
set cpo-=C

setlocal comments=:#
=======
" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
setlocal commentstring=#%s
setlocal formatoptions-=t
setlocal formatoptions+=crql

<<<<<<< HEAD
let b:undo_ftplugin = "setlocal com< cms< fo<"

=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Csh:  thanks to Johannes Zellner
" - Both foreach and end must appear alone on separate lines.
" - The words else and endif must appear at the beginning of input lines;
"   the if must appear alone on its input line or after an else.
" - Each case label and the default label must appear at the start of a
"   line.
" - while and end must appear alone on their input lines.
<<<<<<< HEAD
if exists("loaded_matchit") && !exists("b:match_words")
  let s:line_start = '\%(^\s*\)\@<='
  let b:match_words =
	\ s:line_start .. 'if\s*(.*)\s*then\>:' ..
	\   s:line_start .. 'else\s\+if\s*(.*)\s*then\>:' .. s:line_start .. 'else\>:' ..
	\   s:line_start .. 'endif\>,' ..
	\ s:line_start .. '\%(\<foreach\s\+\h\w*\|while\)\s*(:' ..
	\   '\<break\>:\<continue\>:' ..
	\   s:line_start .. 'end\>,' ..
	\ s:line_start .. 'switch\s*(:' ..
	\   s:line_start .. 'case\s\+:' .. s:line_start .. 'default\>:\<breaksw\>:' ..
	\   s:line_start .. 'endsw\>'
  unlet s:line_start
  let b:undo_ftplugin ..= " | unlet b:match_words"
endif

if (has("gui_win32") || has("gui_gtk")) && !exists("b:browsefilter")
  let  b:browsefilter="csh Scripts (*.csh)\t*.csh\n" ..
	\	      "All Files (*.*)\t*.*\n"
  let b:undo_ftplugin ..= " | unlet b:browsefilter"
endif

=======
if exists("loaded_matchit")
    let b:match_words =
      \ '^\s*\<if\>.*(.*).*\<then\>:'.
      \   '^\s*\<else\>\s\+\<if\>.*(.*).*\<then\>:^\s*\<else\>:'.
      \   '^\s*\<endif\>,'.
      \ '\%(^\s*\<foreach\>\s\+\S\+\|^s*\<while\>\).*(.*):'.
      \   '\<break\>:\<continue\>:^\s*\<end\>,'.
      \ '^\s*\<switch\>.*(.*):^\s*\<case\>\s\+:^\s*\<default\>:^\s*\<endsw\>'
endif

" Change the :browse e filter to primarily show csh-related files.
if has("gui_win32")
    let  b:browsefilter="csh Scripts (*.csh)\t*.csh\n" .
		\	"All Files (*.*)\t*.*\n"
endif

" Undo the stuff we changed.
let b:undo_ftplugin = "setlocal commentstring< formatoptions<" .
		\     " | unlet! b:match_words b:browsefilter"

" Restore the saved compatibility options.
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
let &cpo = s:save_cpo
unlet s:save_cpo
