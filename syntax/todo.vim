" Vim syntax file
" Language:	Simple Todo
" Maintainer:	Ryland Wharton
" URL:		http://github.com/ryland/todo_vim
" Filetypes: *.todo

if exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword todoPanic        TODO FIXME XXX NOTE REFACTOR WTF ??? AI

syn match  todoProject      /^.\+:\s*$/
syn match  todoItem         /^\s*[-+]\s\+/ 
syn match  todoContext      /@[A-Za-z0-9_]\+/
syn match  todoDone         /^\s*[-+]\s\+.*@[Dd][Oo][Nn][Ee].*$/
syn match  todoDoneX        /^\s*x\s\+.*$/ 
syn match  todoResponsible  /(.\{-})\s*/

syn sync fromstart

hi def link todoItem         Identifier
hi def link todoContext      Identifier
hi def link todoResponsible  Identifier
hi def link todoProject      Title
hi def link todoDone         NonText
hi def link todoDoneX        NonText
hi def link todoPanic        Todo

let b:current_syntax = "todo"

" vim: ts=8
