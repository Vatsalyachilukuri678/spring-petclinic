" Vim indent file
" Language:		C-shell (tcsh)
<<<<<<< HEAD
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainer:	Gautam Iyer <gi1242+vim@NoSpam.com> where NoSpam=gmail (Original Author)
" Last Change:		2021 Oct 15
=======
" Maintainer:		GI <a@b.c>, where a='gi1242+vim', b='gmail', c='com'
" Last Modified:	Sat 10 Dec 2011 09:23:00 AM EST
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
    finish
endif

let b:did_indent = 1

setlocal indentexpr=TcshGetIndent()
<<<<<<< HEAD
setlocal indentkeys+=e,0=end
setlocal indentkeys-=0{,0},0),:,0#

let b:undo_indent = "setl inde< indk<"
=======
setlocal indentkeys+=e,0=end,0=endsw indentkeys-=0{,0},0),:,0#
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

" Only define the function once.
if exists("*TcshGetIndent")
    finish
endif

function TcshGetIndent()
    " Find a non-blank line above the current line.
    let lnum = prevnonblank(v:lnum - 1)

    " Hit the start of the file, use zero indent.
    if lnum == 0
	return 0
    endif

    " Add indent if previous line begins with while or foreach
    " OR line ends with case <str>:, default:, else, then or \
    let ind = indent(lnum)
    let line = getline(lnum)
    if line =~ '\v^\s*%(while|foreach)>|^\s*%(case\s.*:|default:|else)\s*$|%(<then|\\)$'
	let ind = ind + shiftwidth()
    endif

    if line =~ '\v^\s*breaksw>'
	let ind = ind - shiftwidth()
    endif

<<<<<<< HEAD
    " Subtract indent if current line has on end, endif, endsw, case commands
    let line = getline(v:lnum)
    if line =~ '\v^\s*%(else|end|endif|endsw)\s*$'
=======
    " Subtract indent if current line has on end, endif, case commands
    let line = getline(v:lnum)
    if line =~ '\v^\s*%(else|end|endif)\s*$'
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
	let ind = ind - shiftwidth()
    endif

    return ind
endfunction
