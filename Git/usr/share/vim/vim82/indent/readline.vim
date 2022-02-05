" Vim indent file
<<<<<<< HEAD
" Language:		readline configuration file
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainer:	Nikolai Weibull <now@bitwi.se>
" Last Change:		24 Sep 2021
=======
" Language:             readline configuration file
" Previous Maintainer:  Nikolai Weibull <now@bitwi.se>
" Latest Revision:      2006-12-20
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=GetReadlineIndent()
setlocal indentkeys=!^F,o,O,=$else,=$endif
setlocal nosmartindent

<<<<<<< HEAD
let b:undo_indent = "setl inde< indk< si<"

=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
if exists("*GetReadlineIndent")
  finish
endif

function GetReadlineIndent()
  let lnum = prevnonblank(v:lnum - 1)
  if lnum == 0
    return 0
  endif

  let ind = indent(lnum)

  if getline(lnum) =~ '^\s*$\(if\|else\)\>'
    let ind = ind + shiftwidth()
  endif

  if getline(v:lnum) =~ '^\s*$\(else\|endif\)\>'
    let ind = ind - shiftwidth()
  endif

  return ind
endfunction
