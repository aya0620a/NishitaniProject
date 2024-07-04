file = 'README.org'

# TRANSITIONS = {
#   head_search: [:val_search, :idleing, '**'],
#   val_search: [:head_search, :idleing, '- '],
#   idleing: [:idleing, :val_search,  '\n']
# }

TRANSITIONS = {
  '**' => :head_search,
  '- ' => :val_search,
}

key = '**'

# state, key = TRANSITIONS[:head_search]
# p [state, key]
lines = File.readlines(file)
lines[12..24].each do |line|

  # if line[0..1] == key
  #   p line
  #   state, key = TRANSITIONS[state]
  #   p [state, key]
  # end

  action = TRANSITIONS[line[0..1]]

  # 有限状態機械の状態遷移
  # パーサー？

  case action
  when :head_search
    p line
  when :val_search
    p line
  end

  # puts line if line.match(/\*/)   #matchメソッドで*を含む行を表示
  # puts line if line.match(/^-/)
end
