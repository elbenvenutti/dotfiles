" let g:solarized_termcolors=256
" let g:solarized_termtrans=1

set termguicolors

" function FixLspHighlight()
"     if has('nvim')
"         :hi Special None
"         :hi link Special Type
"         :hi! link LspDiagnosticsDefaultError CodeError
"         :hi! link LspDiagnosticsDefaultWarning CodeWarning
"         :hi! link LspDiagnosticsDefaultInformation CodeInfo
"         :hi! link LspDiagnosticsDefaultHint CodeHint
"         :hi! link LspDiagnosticsSignError ErrorSign
"         :hi! link LspDiagnosticsSignWarning WarningSign
"         :hi! link LspDiagnosticsSignInformation InfoSign
"         :hi! link LspDiagnosticsSignHint HintSign
"         :hi! link LspReferenceText IdentifierUnderCaret
"         :hi! link LspReferenceRead IdentifierUnderCaret
"         :hi! link LspReferenceWrite IdentifierUnderCaretWrite
"         :hi! link LspDiagnosticsUnderlineError CodeError
"         :hi! link LspDiagnosticsUnderlineWarning CodeWarning
"         :hi! link LspDiagnosticsUnderlineInformation CodeInfo
"         :hi! link LspDiagnosticsUnderlineHint CodeHint
"         :hi! link LspDiagnosticsFloatingError NormalFloat
"         :hi! link LspDiagnosticsFloatingWarning NormalFloat
"         :hi! link LspDiagnosticsFloatingInformation NormalFloat
"         :hi! link LspDiagnosticsFloatingHint NormalFloat
"     endif
" endfunction

function! Light()
    set background=light
    colorscheme tokyonight
    syntax on
    " :hi IndentGuidesEven ctermfg=white ctermbg=black
    " :hi IndentGuidesOdd ctermfg=white ctermbg=254
    " :call FixLspHighlight()
endfunction

function! Dark()
    set background=dark
    colorscheme tokyonight
    syntax on
    " :hi IndentGuidesEven ctermfg=white ctermbg=236
    " :hi IndentGuidesOdd ctermfg=white ctermbg=black
    " :call FixLspHighlight()
endfunction

function! DetectTheme()
    if readfile('/tmp/kitty-theme') == ['light']
        :call Light()
    else
        :call Dark()
    endif
endfunction

:call Dark()

augroup theme_switcher
    autocmd!
    autocmd VimEnter,Colorscheme * :call DetectTheme()
augroup END

nnoremap <leader>l :call Light() <bar> !theme light<cr>
nnoremap <leader>d :call Dark() <bar> !theme dark<cr>
