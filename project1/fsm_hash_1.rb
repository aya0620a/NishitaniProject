TRANSITIONS = {
    :hash_search => [:block_search, "# "],
    :block_search => [:hash_search, "```"]
}

state,key = TRANSITIONS[:head_search]

file = 'tmp.md'
File.readlines(file)[0..11].each do |line|
  p [state, key, line]
  state, key = TRANSITIONS[state] if line.match(/^#{key}/)
  # state = :hash_search if line.match(/^```/)
end
