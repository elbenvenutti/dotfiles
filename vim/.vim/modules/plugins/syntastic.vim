let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_javascript_checkers = ['eslint', 'jshint', 'standard']
" needs 'brew install tidy-html5'
let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_always_populate_loc_list = 0
