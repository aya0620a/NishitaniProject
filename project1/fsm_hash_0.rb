file = 'tmp.md'
File.readlines(file).each do |line|
  if line.include?('# ')
    p line if line.match(/^# /)
    p line if line.match(/^```/)
  end
end
