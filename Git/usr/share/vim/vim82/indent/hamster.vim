" Vim indent file
" Language:    Hamster Script 
<<<<<<< HEAD
" Version:     2.0.6.1
" Last Change: 2021 Oct 11
" Maintainer:  David Fishburn <dfishburn dot vim at gmail dot com>
" Download: https://www.vim.org/scripts/script.php?script_id=1099
"
"    2.0.6.1 (Oct 2021)
"        Added b:undo_indent
"        Added cpo check
"
=======
" Version:     2.0.6.0
" Last Change: Wed Nov 08 2006 12:02:42 PM
" Maintainer:  David Fishburn <fishburn@ianywhere.com>
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentkeys+==~if,=~else,=~endif,=~endfor,=~endwhile
setlocal indentkeys+==~do,=~until,=~while,=~repeat,=~for,=~loop
setlocal indentkeys+==~sub,=~endsub

<<<<<<< HEAD
let b:undo_indent = "setl indentkeys<"

=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Define the appropriate indent function but only once
setlocal indentexpr=HamGetFreeIndent()
if exists("*HamGetFreeIndent")
  finish
endif

<<<<<<< HEAD
let s:keepcpo = &cpo
set cpo&vim

=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
function HamGetIndent(lnum)
  let ind = indent(a:lnum)
  let prevline=getline(a:lnum)

  " Add a shiftwidth to statements following if,  else, elseif,
  " case, select, default, do, until, while, for, start
  if prevline =~? '^\s*\<\(if\|else\%(if\)\?\|for\|repeat\|do\|while\|sub\)\>' 
    let ind = ind + shiftwidth()
  endif

  " Subtract a shiftwidth from else, elseif, end(if|while|for), until
  let line = getline(v:lnum)
  if line =~? '^\s*\(else\|elseif\|loop\|until\|end\%(if\|while\|for\|sub\)\)\>'
    let ind = ind - shiftwidth()
  endif

  return ind
endfunction

function HamGetFreeIndent()
  " Find the previous non-blank line
  let lnum = prevnonblank(v:lnum - 1)

  " Use zero indent at the top of the file
  if lnum == 0
    return 0
  endif

  let ind=HamGetIndent(lnum)
  return ind
endfunction

<<<<<<< HEAD
" Restore:
let &cpo = s:keepcpo
unlet s:keepcpo

=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" vim:sw=2 tw=80
