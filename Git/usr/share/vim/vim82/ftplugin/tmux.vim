" Vim filetype plugin file
" Language: 	tmux(1) configuration file
" URL: 		https://github.com/ericpruitt/tmux.vim/
" Maintainer: 	Eric Pruitt <eric.pruitt@gmail.com>
" Last Changed: 2017 Mar 10

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

<<<<<<< HEAD
let b:undo_ftplugin = "setlocal comments< commentstring<"

setlocal comments=:#
=======
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
setlocal commentstring=#\ %s
