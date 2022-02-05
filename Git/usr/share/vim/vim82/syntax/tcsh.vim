<<<<<<< HEAD
" Vim syntax file
" Language:		tcsh scripts
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainer:	Gautam Iyer <gi1242+vim@NoSpam.com> where NoSpam=gmail (Original Author)
" Last Change:		2021 Oct 15

=======
" tcsh.vim: Vim syntax file for tcsh scripts
" Maintainer:	Gautam Iyer <gi1242@gmail.com>
" Modified:	Thu 17 Dec 2009 06:05:07 PM EST
"
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Description: We break up each statement into a "command" and an "end" part.
" All groups are either a "command" or part of the "end" of a statement (ie
" everything after the "command"). This is because blindly highlighting tcsh
" statements as keywords caused way too many false positives. Eg:
"
" 	set history=200
"
" causes history to come up as a keyword, which we want to avoid.

" Quit when a syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

let s:oldcpo = &cpo
set cpo&vim " Line continuation is used

<<<<<<< HEAD
syn iskeyword @,48-57,_,192-255,-

syn case match

" ----- Clusters ----- {{{1
syn cluster tcshModifiers	contains=tcshModifier,tcshModifierError
syn cluster tcshQuoteList	contains=tcshDQuote,tcshSQuote,tcshBQuote
syn cluster tcshStatementEnds	contains=@tcshQuoteList,tcshComment,@tcshVarList,tcshRedir,tcshMeta,tcshHereDoc,tcshSpecial,tcshArgument
=======
setlocal iskeyword+=-

syn case match

" ----- Clusters -----
syn cluster tcshModifiers	contains=tcshModifier,tcshModifierError
syn cluster tcshQuoteList	contains=tcshDQuote,tcshSQuote,tcshBQuote
syn cluster tcshStatementEnds	contains=@tcshQuoteList,tcshComment,@tcshVarList,tcshRedir,tcshMeta,tcshHereDoc,tcshSpecial,tcshArguement
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
syn cluster tcshStatements	contains=tcshBuiltin,tcshCommands,tcshIf,tcshWhile
syn cluster tcshVarList		contains=tcshUsrVar,tcshArgv,tcshSubst
syn cluster tcshConditions	contains=tcshCmdSubst,tcshParenExpr,tcshOperator,tcshNumber,@tcshVarList

<<<<<<< HEAD
" ----- Errors ----- {{{1
" Define first, so can be easily overridden.
syn match tcshError contained '\v\S.+'

" ----- Statements ----- {{{1
=======
" ----- Errors -----
" Define first, so can be easily overridden.
syn match tcshError contained '\v\S.+'

" ----- Statements -----
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Tcsh commands: Any filename / modifiable variable (must be first!)
syn match tcshCommands	'\v[a-zA-Z0-9\\./_$:-]+' contains=tcshSpecial,tcshUsrVar,tcshArgv,tcshVarError nextgroup=tcshStatementEnd

" Builtin commands except those treated specially. Currently (un)set(env),
" (un)alias, if, while, else, bindkey
<<<<<<< HEAD
syn keyword tcshBuiltin nextgroup=tcshStatementEnd alloc bg break breaksw builtins bye case cd chdir complete continue default dirs echo echotc end endif endsw eval exec exit fg filetest foreach getspath getxvers glob goto hashstat history hup inlib jobs kill limit log login logout ls ls-F migrate newgrp nice nohup notify onintr popd printenv pushd rehash repeat rootnode sched setpath setspath settc setty setxvers shift source stop suspend switch telltc termname time umask uncomplete unhash universe unlimit ver wait warp watchlog where which
=======
syn keyword tcshBuiltin nextgroup=tcshStatementEnd alloc bg break breaksw builtins bye case cd chdir complete continue default dirs echo echotc end endif endsw eval exec exit fg filetest foreach getspath getxvers glob goto hashstat history hup inlib jobs kill limit log login logout ls ls-F migrate newgrp nice nohup notify onintr popd printenv pushd rehash repeat rootnode sched setpath setspath settc setty setxvers shift source stop suspend switch telltc time umask uncomplete unhash universe unlimit ver wait warp watchlog where which
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

" StatementEnd is anything after a built-in / command till the lexical end of a
" statement (;, |, ||, |&, && or end of line)
syn region tcshStatementEnd	transparent contained matchgroup=tcshBuiltin start='' end='\v\\@<!(;|\|[|&]?|\&\&|$)' contains=@tcshStatementEnds

" set expressions (Contains shell variables)
<<<<<<< HEAD
syn keyword tcshShellVar contained addsuffix afsuser ampm anyerror argv autocorrect autoexpand autolist autologout autorehash backslash_quote catalog cdpath cdtohome color colorcat command compat_expr complete continue continue_args correct csubstnonl cwd dextract dirsfile dirstack dspmbyte dunique echo echo_style edit editors ellipsis euid euser fignore filec gid globdot globstar group highlight histchars histdup histfile histlit history home ignoreeof implicitcd inputmode killdup killring listflags listjobs listlinks listmax listmaxrows loginsh logout mail matchbeep nobeep noclobber noding noglob nokanji nonomatch nostat notify oid owd padhour parseoctal path printexitvalue prompt prompt2 prompt3 promptchars pushdtohome pushdsilent recexact recognize_only_executables rmstar rprompt savedirs savehist sched shell shlvl status symlinks tcsh term time tperiod tty uid user verbose version vimode visiblebell watch who wordchars
=======
syn keyword tcshShellVar contained afsuser ampm argv autocorrect autoexpand autolist autologout backslash_quote catalog cdpath color colorcat command complete continue continue_args correct cwd dextract dirsfile dirstack dspmbyte dunique echo echo_style edit ellipsis fignore filec gid group histchars histdup histfile histlit history home ignoreeof implicitcd inputmode killdup killring listflags listjobs listlinks listmax listmaxrows loginsh logout mail matchbeep nobeep noclobber noding noglob nokanji nonomatch nostat notify oid owd path printexitvalue prompt prompt2 prompt3 promptchars pushdtohome pushdsilent recexact recognize_only_executables rmstar rprompt savedirs savehist sched shell shlvl status symlinks tcsh term time tperiod tty uid user verbose version visiblebell watch who wordchars
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
syn keyword tcshBuiltin	nextgroup=tcshSetEnd set unset
syn region  tcshSetEnd	contained transparent matchgroup=tcshBuiltin start='' skip='\\$' end='$\|;' contains=tcshShellVar,@tcshStatementEnds

" setenv expressions (Contains environment variables)
syn keyword tcshEnvVar contained AFSUSER COLUMNS DISPLAY EDITOR GROUP HOME HOST HOSTTYPE HPATH LANG LC_CTYPE LINES LS_COLORS MACHTYPE NOREBIND OSTYPE PATH PWD REMOTEHOST SHLVL SYSTYPE TERM TERMCAP USER VENDOR VISUAL
syn keyword tcshBuiltin	nextgroup=tcshEnvEnd setenv unsetenv
syn region  tcshEnvEnd	contained transparent matchgroup=tcshBuiltin start='' skip='\\$' end='$\|;' contains=tcshEnvVar,@tcshStatementEnds

" alias and unalias (contains special aliases)
syn keyword tcshAliases contained beepcmd cwdcmd jobcmd helpcommand periodic precmd postcmd shell
syn keyword tcshBuiltin	nextgroup=tcshAliCmd skipwhite alias unalias
syn match   tcshAliCmd	contained nextgroup=tcshAliEnd skipwhite '\v(\w|-)+' contains=tcshAliases
syn region  tcshAliEnd	contained transparent matchgroup=tcshBuiltin start='' skip='\\$' end='$\|;' contains=@tcshStatementEnds

" if statements
syn keyword tcshIf	nextgroup=tcshIfEnd skipwhite if
syn region  tcshIfEnd	contained start='\S' skip='\\$' matchgroup=tcshBuiltin end='\v<then>|$' contains=@tcshConditions,tcshSpecial,@tcshStatementEnds
syn region  tcshIfEnd	contained matchgroup=tcshBuiltin contains=@tcshConditions,tcshSpecial start='(' end='\v\)%(\s+then>)?' skipwhite nextgroup=@tcshStatementEnds 
syn region  tcshIfEnd	contained matchgroup=tcshBuiltin contains=tcshCommands,tcshSpecial start='\v\{\s+' end='\v\s+\}%(\s+then>)?' skipwhite nextgroup=@tcshStatementEnds keepend

" else statements
syn keyword tcshBuiltin	nextgroup=tcshIf skipwhite else

" while statements (contains expressions / operators)
syn keyword tcshBuiltin	nextgroup=@tcshConditions,tcshSpecial skipwhite while

" Conditions (for if and while)
syn region tcshParenExpr contained contains=@tcshConditions,tcshSpecial matchgroup=tcshBuiltin start='(' end=')'
syn region tcshCmdSubst  contained contains=tcshCommands matchgroup=tcshBuiltin start='\v\{\s+' end='\v\s+\}' keepend

" Bindkey. Internal editor functions
syn keyword tcshBindkeyFuncs contained backward-char backward-delete-char
	    \ backward-delete-word backward-kill-line backward-word
	    \ beginning-of-line capitalize-word change-case
	    \ change-till-end-of-line clear-screen complete-word
	    \ complete-word-fwd complete-word-back complete-word-raw
	    \ copy-prev-word copy-region-as-kill dabbrev-expand delete-char
	    \ delete-char-or-eof delete-char-or-list
	    \ delete-char-or-list-or-eof delete-word digit digit-argument
	    \ down-history downcase-word end-of-file end-of-line
	    \ exchange-point-and-mark expand-glob expand-history expand-line
	    \ expand-variables forward-char forward-word
	    \ gosmacs-transpose-chars history-search-backward
	    \ history-search-forward insert-last-word i-search-fwd
	    \ i-search-back keyboard-quit kill-line kill-region
	    \ kill-whole-line list-choices list-choices-raw list-glob
<<<<<<< HEAD
	    \ list-or-eof load-average magic-space newline newline-and-hold
	    \ newline-and-down-history normalize-path normalize-command
	    \ overwrite-mode prefix-meta quoted-insert redisplay
	    \ run-fg-editor run-help self-insert-command sequence-lead-in
	    \ set-mark-command spell-word spell-line stuff-char
	    \ toggle-literal-history transpose-chars transpose-gosling
	    \ tty-dsusp tty-flush-output tty-sigintr tty-sigquit tty-sigtsusp
	    \ tty-start-output tty-stop-output undefined-key
	    \ universal-argument up-history upcase-word
=======
	    \ list-or-eof load-average magic-space newline normalize-path
	    \ normalize-command overwrite-mode prefix-meta quoted-insert
	    \ redisplay run-fg-editor run-help self-insert-command
	    \ sequence-lead-in set-mark-command spell-word spell-line
	    \ stuff-char toggle-literal-history transpose-chars
	    \ transpose-gosling tty-dsusp tty-flush-output tty-sigintr
	    \ tty-sigquit tty-sigtsusp tty-start-output tty-stop-output
	    \ undefined-key universal-argument up-history upcase-word
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
	    \ vi-beginning-of-next-word vi-add vi-add-at-eol vi-chg-case
	    \ vi-chg-meta vi-chg-to-eol vi-cmd-mode vi-cmd-mode-complete
	    \ vi-delprev vi-delmeta vi-endword vi-eword vi-char-back
	    \ vi-char-fwd vi-charto-back vi-charto-fwd vi-insert
	    \ vi-insert-at-bol vi-repeat-char-fwd vi-repeat-char-back
	    \ vi-repeat-search-fwd vi-repeat-search-back vi-replace-char
	    \ vi-replace-mode vi-search-back vi-search-fwd vi-substitute-char
	    \ vi-substitute-line vi-word-back vi-word-fwd vi-undo vi-zero
	    \ which-command yank yank-pop e_copy_to_clipboard
	    \ e_paste_from_clipboard e_dosify_next e_dosify_prev e_page_up
	    \ e_page_down
syn keyword tcshBuiltin nextgroup=tcshBindkeyEnd bindkey
<<<<<<< HEAD
syn region tcshBindkeyEnd contained transparent matchgroup=tcshBuiltin start='' skip='\\$' end='$' contains=@tcshQuoteList,tcshComment,@tcshVarList,tcshMeta,tcshSpecial,tcshArgument,tcshBindkeyFuncs
=======
syn region tcshBindkeyEnd contained transparent matchgroup=tcshBuiltin start='' skip='\\$' end='$' contains=@tcshQuoteList,tcshComment,@tcshVarList,tcshMeta,tcshSpecial,tcshArguement,tcshBindkeyFuncs
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

" Expressions start with @.
syn match tcshExprStart '\v\@\s+' nextgroup=tcshExprVar
syn match tcshExprVar	contained '\v\h\w*%(\[\d+\])?' contains=tcshShellVar,tcshEnvVar nextgroup=tcshExprOp
syn match tcshExprOp	contained '++\|--'
syn match tcshExprOp	contained '\v\s*\=' nextgroup=tcshExprEnd
syn match tcshExprEnd	contained '\v.*$'hs=e+1 contains=@tcshConditions
syn match tcshExprEnd	contained '\v.{-};'hs=e	contains=@tcshConditions

<<<<<<< HEAD
" ----- Comments: ----- {{{1
=======
" ----- Comments: -----
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
syn match tcshComment	'#\s.*' contains=tcshTodo,tcshCommentTi,@Spell
syn match tcshComment	'\v#($|\S.*)' contains=tcshTodo,tcshCommentTi
syn match tcshSharpBang '^#! .*$'
syn match tcshCommentTi contained '\v#\s*\u\w*(\s+\u\w*)*:'hs=s+1 contains=tcshTodo
syn match tcshTodo	contained '\v\c<todo>'

<<<<<<< HEAD
" ----- Strings ----- {{{1
=======
" ----- Strings -----
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Tcsh does not allow \" in strings unless the "backslash_quote" shell
" variable is set. Set the vim variable "tcsh_backslash_quote" to 0 if you
" want VIM to assume that no backslash quote constructs exist.

" Backquotes are treated as commands, and are not contained in anything
<<<<<<< HEAD
if exists('tcsh_backslash_quote') && tcsh_backslash_quote == 0
=======
if(exists('tcsh_backslash_quote') && tcsh_backslash_quote == 0)
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
    syn region tcshSQuote	keepend contained start="\v\\@<!'" end="'"
    syn region tcshDQuote	keepend contained start='\v\\@<!"' end='"' contains=@tcshVarList,tcshSpecial,@Spell
    syn region tcshBQuote	keepend start='\v\\@<!`' end='`' contains=@tcshStatements
else
    syn region tcshSQuote	contained start="\v\\@<!'" skip="\v\\\\|\\'" end="'"
    syn region tcshDQuote	contained start='\v\\@<!"' end='"' contains=@tcshVarList,tcshSpecial,@Spell
    syn region tcshBQuote	keepend matchgroup=tcshBQuoteGrp start='\v\\@<!`' skip='\v\\\\|\\`' end='`' contains=@tcshStatements
endif

<<<<<<< HEAD
" ----- Variables ----- {{{1
=======
" ----- Variables -----
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Variable Errors. Must come first! \$ constructs will be flagged by
" tcshSpecial, so we don't consider them here.
syn match tcshVarError	'\v\$\S*'	contained

" Modifiable Variables without {}.
syn match tcshUsrVar contained '\v\$\h\w*%(\[\d+%(-\d+)?\])?' nextgroup=@tcshModifiers contains=tcshShellVar,tcshEnvVar
syn match tcshArgv   contained '\v\$%(\d+|\*)' nextgroup=@tcshModifiers

" Modifiable Variables with {}.
syn match tcshUsrVar contained '\v\$\{\h\w*%(\[\d+%(-\d+)?\])?%(:\S*)?\}' contains=@tcshModifiers,tcshShellVar,tcshEnvVar
syn match tcshArgv   contained '\v\$\{%(\d+|\*)%(:\S*)?\}' contains=@tcshModifiers

" Un-modifiable Substitutions. Order is important here.
syn match tcshSubst contained	'\v\$[?#$!_<]' nextgroup=tcshModifierError
syn match tcshSubst contained	'\v\$[%#?]%(\h\w*|\d+)' nextgroup=tcshModifierError contains=tcshShellVar,tcshEnvVar
syn match tcshSubst contained	'\v\$\{[%#?]%(\h\w*|\d+)%(:\S*)?\}' contains=tcshModifierError contains=tcshShellVar,tcshEnvVar

" Variable Name Expansion Modifiers (order important)
syn match tcshModifierError	contained '\v:\S*'
syn match tcshModifier		contained '\v:[ag]?[htreuls&qx]' nextgroup=@tcshModifiers

<<<<<<< HEAD
" ----- Operators / Specials ----- {{{1
=======
" ----- Operators / Specials -----
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Standard redirects (except <<) [<, >, >>, >>&, >>!, >>&!]
syn match tcshRedir contained	'\v\<|\>\>?\&?!?'

" Meta-chars
syn match tcshMeta  contained	'\v[]{}*?[]'

" Here documents (<<)
syn region tcshHereDoc contained matchgroup=tcshShellVar start='\v\<\<\s*\z(\h\w*)' end='^\z1$' contains=@tcshVarList,tcshSpecial
syn region tcshHereDoc contained matchgroup=tcshShellVar start="\v\<\<\s*'\z(\h\w*)'" start='\v\<\<\s*"\z(\h\w*)"$' start='\v\<\<\s*\\\z(\h\w*)$' end='^\z1$'

" Operators
syn match tcshOperator	contained '&&\|!\~\|!=\|<<\|<=\|==\|=\~\|>=\|>>\|\*\|\^\|\~\|||\|!\|%\|&\|+\|-\|/\|<\|>\||'
"syn match tcshOperator	contained '[(){}]'

" Numbers
syn match tcshNumber	contained '\v<-?\d+>'

" Arguments
<<<<<<< HEAD
syn match tcshArgument	contained '\v\s@<=-(\w|-)*'
=======
syn match tcshArguement	contained '\v\s@<=-(\w|-)*'
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

" Special characters. \xxx, or backslashed characters.
"syn match tcshSpecial	contained '\v\\@<!\\(\d{3}|.)'
syn match tcshSpecial	contained '\v\\%([0-7]{3}|.)'

<<<<<<< HEAD
" ----- Synchronising ----- {{{1
=======
" ----- Synchronising -----
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
if exists('tcsh_minlines')
    if tcsh_minlines == 'fromstart'
	syn sync fromstart
    else
	exec 'syn sync minlines=' . tcsh_minlines
    endif
else
    syn sync minlines=100	" Some completions can be quite long
endif

<<<<<<< HEAD
" ----- Highlighting ----- {{{1
=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Define highlighting of syntax groups
hi def link tcshError		Error
hi def link tcshBuiltin		Statement
hi def link tcshShellVar	Preproc
hi def link tcshEnvVar		tcshShellVar
hi def link tcshAliases		tcshShellVar
hi def link tcshAliCmd		Identifier
hi def link tcshCommands	Identifier
hi def link tcshIf		tcshBuiltin
hi def link tcshWhile		tcshBuiltin
hi def link tcshBindkeyFuncs	Function
hi def link tcshExprStart	tcshBuiltin
hi def link tcshExprVar		tcshUsrVar
hi def link tcshExprOp		tcshOperator
hi def link tcshExprEnd		tcshOperator
hi def link tcshComment		Comment
hi def link tcshCommentTi	Preproc
hi def link tcshSharpBang	tcshCommentTi
hi def link tcshTodo		Todo
hi def link tcshSQuote		Constant
hi def link tcshDQuote		tcshSQuote
hi def link tcshBQuoteGrp	Include
hi def link tcshVarError	Error
hi def link tcshUsrVar		Type
hi def link tcshArgv		tcshUsrVar
hi def link tcshSubst		tcshUsrVar
<<<<<<< HEAD
hi def link tcshModifier	tcshArgument
=======
hi def link tcshModifier	tcshArguement
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
hi def link tcshModifierError	tcshVarError
hi def link tcshMeta		tcshSubst
hi def link tcshRedir		tcshOperator
hi def link tcshHereDoc		tcshSQuote
hi def link tcshOperator	Operator
hi def link tcshNumber		Number
<<<<<<< HEAD
hi def link tcshArgument	Special
hi def link tcshSpecial		SpecialChar
" }}}
=======
hi def link tcshArguement	Special
hi def link tcshSpecial		SpecialChar
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

let &cpo = s:oldcpo
unlet s:oldcpo

let b:current_syntax = 'tcsh'
<<<<<<< HEAD

" vim: nowrap sw=2 sts=2 ts=8 noet fdm=marker:
=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
