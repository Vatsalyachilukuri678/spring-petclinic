" Vim indent file
" Language:	Tera Term Language (TTL)
"		Based on Tera Term Version 4.100
" Maintainer:	Ken Takata
" URL:		https://github.com/k-takata/vim-teraterm
<<<<<<< HEAD
" Last Change:	2021-10-18
=======
" Last Change:	2018-08-31
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Filenames:	*.ttl
" License:	VIM License

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal nosmartindent
setlocal noautoindent
setlocal indentexpr=GetTeraTermIndent(v:lnum)
setlocal indentkeys=!^F,o,O,e
setlocal indentkeys+==elseif,=endif,=loop,=next,=enduntil,=endwhile

<<<<<<< HEAD
let b:undo_indent = "setl ai< inde< indk< si<"

=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
if exists("*GetTeraTermIndent")
  finish
endif

function! GetTeraTermIndent(lnum)
  let l:prevlnum = prevnonblank(a:lnum-1)
  if l:prevlnum == 0
    " top of file
    return 0
  endif

  " grab the previous and current line, stripping comments.
  let l:prevl = substitute(getline(l:prevlnum), ';.*$', '', '')
  let l:thisl = substitute(getline(a:lnum), ';.*$', '', '')
  let l:previ = indent(l:prevlnum)

  let l:ind = l:previ

  if l:prevl =~ '^\s*if\>.*\<then\>'
    " previous line opened a block
    let l:ind += shiftwidth()
  endif
  if l:prevl =~ '^\s*\%(elseif\|else\|do\|until\|while\|for\)\>'
    " previous line opened a block
    let l:ind += shiftwidth()
  endif
  if l:thisl =~ '^\s*\%(elseif\|else\|endif\|enduntil\|endwhile\|loop\|next\)\>'
    " this line closed a block
    let l:ind -= shiftwidth()
  endif

  return l:ind
endfunction

" vim: ts=8 sw=2 sts=2
