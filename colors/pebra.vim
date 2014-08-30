set background=light
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="pebra"
hi Normal guifg=#5974ab guibg=#ffffff
hi Comment guifg=#808ba8 guibg=NONE
hi Constant guifg=#5974ab guibg=NONE
hi String guifg=#0055ff guibg=NONE
hi htmlTagName guifg=#cf0c5d guibg=NONE
hi Identifier guifg=#5600f7 guibg=NONE
hi Statement guifg=#aa4444 guibg=NONE
hi PreProc guifg=#ff80ff guibg=NONE
hi Type guifg=#965300 guibg=NONE
hi Function guifg=#cf0c5d guibg=NONE
hi Repeat guifg=#cc7298 guibg=NONE
hi Operator guifg=#cf0c5d guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special