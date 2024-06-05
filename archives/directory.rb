p Dir.pwd
# p Dir.methods
p Dir.ancestors #何がクラスのなかがあるのか
Dir.glob('*.md').each_with_index do |file, i| #.rbのファイルを取得
  # p comm = ["cp", file, "file#{i}_#{file}"].join(" ") #コピーするコマンド
  p [file,file.match(/(.+)(.md)/)]
  # if file.match(/(.+)(.md)/) do |e|
file.match(/(.+)(.md)/) do |e|
    comm = ["cp", file, "#{e[1]}_#{i}_#{file}"].join(" ")


=begin
    puts "nil"
  else
    puts file
=end
    system(comm)  #コマンドを実行
  end

end
