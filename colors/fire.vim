highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name='fire'

" background = '#2c2a2b'
" red = '#b65555'
" bright_red = '#eb4a36'
" bright_orange = '#ffba68'
" bright_green = '#82b963'

function! SynStack ()
    for i1 in synstack(line("."), col("."))
        let i2 = synIDtrans(i1)
        let n1 = synIDattr(i1, "name")
        let n2 = synIDattr(i2, "name")
        echo n1 "->" n2
    endfor
endfunction
map gm :call SynStack()<CR>

hi Normal            gui=None guifg=None guibg='#2c2a2b'
hi ColorColumn       gui=None guifg=None guibg='#2c2a2b'
hi Comment           gui=None guifg='#82b963' guibg=None

hi Constant          gui=None guifg=None guibg=None
hi String            gui=None guifg='#ffba68' guibg=None
hi Character         gui=None guifg=None guibg=None
hi Number            gui=None guifg=None guibg=None
hi Boolean           gui=None guifg=None guibg=None
hi Float             gui=None guifg=None guibg=None

hi Identifier        gui=None guifg=None guibg=None
"hi Function          gui=bold guifg=None guibg=None
hi Function          gui=None guifg='#eb4a36' guibg=None

hi Statement         gui=None guifg=None guibg=None
"hi Conditional       gui=italic guifg=None guibg=None
hi Conditional       gui=None guifg=None guibg=None
"hi Repeat            gui=italic guifg=None guibg=None
hi Repeat            gui=None guifg=None guibg=None
hi Label             gui=None guifg=None guibg=None
hi Operator          gui=None guifg=None guibg=None
hi Keyword           gui=None guifg='#b65555' guibg=None
hi Exception         gui=None guifg=None guibg=None

hi PreProc           gui=None guifg=None guibg=None
hi Include           gui=None guifg=None guibg=None
hi Define            gui=None guifg=None guibg=None
hi Macro             gui=None guifg=None guibg=None
hi PreCondit         gui=None guifg=None guibg=None

"hi Type              gui=bold guifg=None guibg=None
hi Type              gui=None guifg=None guibg=None
hi StorageClass      gui=None guifg=None guibg=None
hi Structure         gui=None guifg=None guibg=None
hi Typedef           gui=None guifg=None guibg=None

hi Special           gui=None guifg=None guibg=None
hi SpecialChar       gui=None guifg=None guibg=None
hi Tag               gui=None guifg=None guibg=None
hi Delimiter         gui=None guifg=None guibg=None
hi SpecialComment    gui=None guifg=None guibg=None
hi Debug             gui=None guifg=None guibg=None

hi Ignore            gui=None guifg=None guibg=None
hi Error             gui=None guifg=None guibg=None
hi Todo              gui=None guifg=None guibg=None
