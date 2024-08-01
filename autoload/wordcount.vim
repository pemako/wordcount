" autoload/wordcount.vim

function! wordcount#count_words()
  " 获取所有行的内容并拼接成一个字符串
  let l:all_text = join(getline(1, '$'), ' ')
  " 使用 \W\+ 分割字符串，计算单词数
  let l:word_count = len(split(l:all_text, '\W\+'))
  echo "Word count: " . l:word_count
endfunction

