if !has('python') && !has('python3')
  echo 'In order to use pymatcher plugin, you need +python or +python3 compiled vim'
else
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif
