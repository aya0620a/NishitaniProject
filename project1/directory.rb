p Dir.pwd
# p Dir.methods
p Dir.ancestors #何がクラスのなかがあるのか
Dir.glob('*.md').each_with_index do |file, i| #.rbのファイルを取得
  # p comm = ["cp", file, "file#{i}_#{file}"].join(" ") #コピーするコマンド
  p [file,file.match(/(.+)(.md)/)]
  # if file.match(/(.+)(.md)/) do |e|
file.match(/(.+)(.md)/) do |e|
    p [($1+file).downcase, $1]
    p [($1+file).gsub('md', 'txt'), $1]



=begin
    puts "nil"
  else
    puts file
=end

  end
  system(comm)  #コマンドを実行
end
