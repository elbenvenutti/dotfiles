let g:solarized_termcolors=256
let g:solarized_termtrans=1

set background=dark
colorscheme solarized

function! Light()
    set background=light
    colorscheme solarized
    :hi IndentGuidesEven ctermfg=white ctermbg=black
    :hi IndentGuidesOdd ctermfg=white ctermbg=254
endfunction

function! Dark()
    set background=dark
    colorscheme solarized
    :hi IndentGuidesEven ctermfg=white ctermbg=236
    :hi IndentGuidesOdd ctermfg=white ctermbg=black
endfunction

if readfile('/tmp/kitty-theme') == ['light']
    :call Light()
endif

nnoremap <leader>l :call Light() <bar> !theme light<cr>
nnoremap <leader>d :call Dark() <bar> !theme dark<cr>
