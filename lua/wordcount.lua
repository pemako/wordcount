-- lua/wordcount.lua
local M = {}

function M.count_words()
    local lines
    if vim.api then
        -- 获取当前缓冲区的所有行并拼接成一个字符串
        lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    else
        -- 使用 Vim 命令获取当前缓冲区的所有行并拼接成一个字符串
        lines = vim.fn.getline(1, '$')
    end
    local all_text = table.concat(lines, " ")
    -- 使用模式匹配来分割单词
    local _, word_count = all_text:gsub("%w+", "")
    -- 显示单词数量
    print("Word count: " .. word_count)
end

return M
