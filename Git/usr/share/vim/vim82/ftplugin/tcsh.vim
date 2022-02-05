" Vim filetype plugin file
<<<<<<< HEAD
" Language:		tcsh
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainer:	Dan Sharp <dwsharp at users dot sourceforge dot net>
" Last Change:		2021 Oct 15

if exists("b:did_ftplugin") | finish | endif

=======
" Language:	tcsh
" Maintainer:	Dan Sharp <dwsharp at users dot sourceforge dot net>
" Last Changed: 20 Jan 2009
" URL:		http://dwsharp.users.sourceforge.net/vim/ftplugin

if exists("b:did_ftplugin") | finish | endif

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
let s:save_cpo = &cpo
set cpo-=C

" Define some defaults in case the included ftplugins don't set them.
let s:undo_ftplugin = ""
<<<<<<< HEAD
let s:browsefilter = "csh Files (*.csh)\t*.csh\n" ..
=======
let s:browsefilter = "csh Files (*.csh)\t*.csh\n" .
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
	    \	     "All Files (*.*)\t*.*\n"

runtime! ftplugin/csh.vim ftplugin/csh_*.vim ftplugin/csh/*.vim
let b:did_ftplugin = 1

" Override our defaults if these were set by an included ftplugin.
if exists("b:undo_ftplugin")
    let s:undo_ftplugin = b:undo_ftplugin
endif
if exists("b:browsefilter")
    let s:browsefilter = b:browsefilter
endif

<<<<<<< HEAD
if (has("gui_win32") || has("gui_gtk"))
    let  b:browsefilter="tcsh Scripts (*.tcsh)\t*.tcsh\n" .. s:browsefilter
endif

let b:undo_ftplugin = "unlet! b:browsefilter | " .. s:undo_ftplugin

=======
" Change the :browse e filter to primarily show tcsh-related files.
if has("gui_win32")
    let  b:browsefilter="tcsh Scripts (*.tcsh)\t*.tcsh\n" . s:browsefilter
endif

" Undo the stuff we changed.
let b:undo_ftplugin = "unlet! b:browsefilter | " . s:undo_ftplugin

" Restore the saved compatibility options.
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
let &cpo = s:save_cpo
unlet s:save_cpo
