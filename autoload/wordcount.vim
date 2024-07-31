" autoload/wordcount.vim

function! wordcount#count_words()
  let l:word_count = len(split(getline(1, '$'), '\W\+'))
  echo "Word count: " . l:word_count
endfunction
