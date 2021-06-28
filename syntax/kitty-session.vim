" Vim syntax file
" Language: Kitty session

if exists("b:current_syntax")
  finish
endif

syn match kittyKW '^\S*' contains=kittySessionCommand,kittyInvalidKeyword
syn match kittyInvalidKeyword '\S*' contained
syn match kittyComment /^\s*#.*$/ contains=kittyTodo
syn region kittyString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region kittyString start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn keyword kittyTodo contained TODO FIXME XXX contained

syn keyword kittySessionCommand
	\ new_tab
	\ new_os_window
	\ layout
	\ launch
	\ focus
	\ enabled_layouts
	\ cd
	\ title
	\ os_window_size
	\ os_window_class

hi def link kittySessionCommand Keyword
hi def link kittyComment Comment
hi def link kittyTodo	Todo
hi def link kittyInvalidKeyword Error
hi def link kittyString String
