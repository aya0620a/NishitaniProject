require 'pp'
file ='tmp.md'
#　＃と```をキーとする
keys = ['#', '```']
state = 'head_search'
File.readlines(file)[0..4].each do |line, i| #readlineは一行ずつ読み込む readは全部読み込む
  p [ state, line, line.include?(keys[0])]
    if line.include?(keys[0])
      p 'block_head'
      state = 'block_search'
    end
  # lineにキーが含まれているか
end
