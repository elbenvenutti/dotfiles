let g:ctrlp_max_files = 0
let g:ctrlp_regexp = 0

if executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
