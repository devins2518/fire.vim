highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name='fire'

" background            = '#2c2a2b'
" red                   = '#b65555'
" orange1               = '#e05e00'
" orange2               = '#ffa333'
" pink                  = '#fb5189'
" bright_red            = '#eb4a36'
" bright_orange         = '#ffba68'
" bright_green          = '#82b963'
" faded_red             = '#5e3131'
" dark_red              = '#800000'
" purple                = '#400080'
" yellow                = '#eee172'

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
hi SignColumn        gui=None guifg=None guibg='#2c2a2b'
hi ColorColumn       gui=None guifg=None guibg='#5e3131'
hi CursorLine        gui=None guifg=None guibg='#5e3131'
hi Comment           gui=None guifg='#82b963' guibg=None
hi LineNr            gui=None guifg='#FFA333' guibg=None
hi CursorLineNR      gui=None guifg='#e05e00' guibg=None

hi String            gui=None guifg='#ffba68' guibg=None
hi Variable          gui=None guifg='#ffba68' guibg=None
hi Character         gui=None guifg='#ffba68' guibg=None
hi Number            gui=None guifg=None guibg=None
hi Boolean           gui=None guifg=None guibg=None
hi Float             gui=None guifg=None guibg=None

hi Identifier        gui=None guifg='#f7e883' guibg=None
hi Function          gui=bold guifg='#d42525' guibg=None

hi Statement         gui=None guifg=None guibg=None
hi Conditional       gui=italic guifg='#f8675d' guibg=None
hi Repeat            gui=italic guifg=None guibg=None
hi Label             gui=None guifg=None guibg=None
hi Operator          gui=None guifg=None guibg=None
hi Keyword           gui=None guifg='#ff901a' guibg=None
hi Exception         gui=None guifg=None guibg=None

hi PreProc           gui=None guifg='#e73c58' guibg=None
hi Include           gui=None guifg='#69a3ab' guibg=None
hi Define            gui=None guifg=None guibg=None
hi PreCondit         gui=None guifg=None guibg=None

hi Type              gui=bold guifg='#FF9233' guibg=None
hi StorageClass      gui=None guifg='#ff6684' guibg=None
hi Structure         gui=None guifg='#d2b4de' guibg=None
hi Typedef           gui=None guifg=None guibg=None

hi Special           gui=None guifg=None guibg=None
hi SpecialChar       gui=None guifg=None guibg=None
hi NonText           gui=None guifg='#b21a1a' guibg=None
hi Tag               gui=None guifg=None guibg=None
hi Delimiter         gui=None guifg=None guibg=None
hi SpecialComment    gui=None guifg=None guibg=None
hi Debug             gui=None guifg=None guibg=None

hi Info              gui=None guifg='#edff54' guibg='#47d361'
hi Ignore            gui=None guifg=None guibg=None
hi Warning           gui=undercurl guifg='#e6bb50' guibg=None
hi Error             gui=underline,bold guifg=None guibg='#FF3333'
hi Todo              gui=None guifg='#edff54' guibg='#47d361'

hi Wildmenu          gui=None guifg='#d39847' guibg='#d34747'
hi op_lv0            gui=None guifg='#ff93d6' guibg=None

hi link              Macro              Function

" Vim
hi link              VimLet             Keyword
hi link              VimHighlight       Function
hi link              VimFunction        Function
"hi link              VimIsCommand       Conditional

" COCs
hi link             CocWarningHighlight Warning
hi link             CocErrorHighlight   Error
hi link             CocWarningSign      Warning
hi link             CocErrorSign        Error
hi link             CocInfoSign         Info
hi link             CocHintSign         Ignore
