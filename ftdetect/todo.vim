" Vim filetype detection file
" Language:	Simple Todo
" Maintainer:	Ryland Wharton
" URL: http://github.com/ryland/todo_vim
" Filetypes: *.todo

augroup todo
     au! BufRead,BufNewFile *.todo   setfiletype todo
augroup END
