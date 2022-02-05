" Vim indent file
<<<<<<< HEAD
" Language:		Eterm configuration file
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainer:	Nikolai Weibull <now@bitwi.se>
" Last Change:		24 Sep 2021
=======
" Language:             Eterm configuration file
" Previous Maintainer:  Nikolai Weibull <now@bitwi.se>
" Latest Revision:      2006-12-20
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=GetEtermIndent()
setlocal indentkeys=!^F,o,O,=end
setlocal nosmartindent

<<<<<<< HEAD
let b:undo_indent = "setl inde< indk< si<"

=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
if exists("*GetEtermIndent")
  finish
endif

function GetEtermIndent()
  let lnum = prevnonblank(v:lnum - 1)
  if lnum == 0
    return 0
  endif

  let ind = indent(lnum)

  if getline(lnum) =~ '^\s*begin\>'
    let ind = ind + shiftwidth()
  endif

  if getline(v:lnum) =~ '^\s*end\>'
    let ind = ind - shiftwidth()
  endif

  return ind
endfunction
