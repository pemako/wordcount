" plugin/wordcount.vim
" 定义一个命令 :WordCount 调用 wordcount#count_words 函数
"command! WordCount call wordcount#count_words()

lua << EOF
  vim.command('command! WordCount lua require("wordcount").count_words()')
EOF
