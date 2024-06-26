file = 'README.org'
# regular expression -> 正規表現
# バックスラッシュはエスケープ文字
# バックスラッシュを含む行を表示
File.readlines(file).each do |line|
  puts line if line.match(/\*/)   #matchメソッドで*を含む行を表示
  puts line if line.match(/^-/)
end
