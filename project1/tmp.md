# Hello

```ruby
p name = ARGV[0] ||"Aoto Nishi"
puts "Hello #{name}!"
p num = ARGV[1].to_f   #型変換
puts "Hello #{num}!"

```

# fibonacci

```ruby

def fibonacci(index)
  if index == 0
    return 1
  elsif index == 1
    return 1
  else
    return fibonacci(index-1) + fibonacci(index-2)
  end
end
puts "index expected actual"
[[0,1],
 [1,1],
 [2,2],[3,3],[4,5],[5,8],[6,13],[7,21],[8,34],[9,55],[10,89],[11,144]
].each do |index, expected|
  actual = fibonacci(index)
  p [index, expected, actual]
end

```

# leap_year

```ruby
def leap_year?(num)
  # p num
  # if (num % 4 == 0 && num % 100 != 0) || (num % 400 == 0)
  #   return true
  # else
  #   return false
  # end
  if(num%400 == 0)
    return true
  elsif(num%100 == 0)
    return false
  elsif(num%4 == 0)
    return true
  else
    return false
end
[2023, 2024, 1900, 2000].each do |num|
  puts "leap year? #{num}, #{leap_year?(num)}"
end

```

# roman_class

```ruby
class Integer #上書きするので、Integerクラスを拡張する
  def to_roman
    arabic = self
    roman = ''

    [
      [1000, 'M']
      [500, 'D'],
      [400, 'CD'],
      [100, 'C'],
      [50, 'L'],
      [19, 'XIX'],
      [15, 'XV'],
      [14, 'XIV'],
      [10, 'X'],
      # 他の要素をここに追加
    ].each do |divider, character|
      quo = arabic / divider
      roman += character * quo
      arabic %= divider
    end

    roman
  end
end

[
  # [1,'I'],
  # [2, 'II'],
  # [3, 'III'],
  [6, "VI"],
  [7, "VII"],
  [9, "IX"],
  [11, 'XI'],
  [14, 'XIV'],
  [15, 'XV'],
  [16, 'XVI'],
  [19, 'XIX'],
  [38, 'XXXVIII'],
  [40, 'XL'],
  [42, 'XLII'],
  [49, 'XLIX'],
  [50, 'L'],
  [51, 'LI'],
  [90, 'XC'],
  [100, 'C'],
  [400, 'CD'],
  [500, 'D'],
  [1000, 'M'],
].each do |arabic, expected|
  actual = arabic.to_roman  #integerがto_romanの関数を持ってる
  p [arabic, expected, actual, expected == actual]
end

```


# hello_class

```ruby
require 'colorize'

class String
    def hello
      name = self
      return "Hello #{name}"
    end
end
# p 'Hello'.class

p name = ARGV[0] ||"world"
# p name.class
# p name.methods
# puts hello(name)
puts name.hello.red

```


# roman

```ruby
#refuctoring -> テスト駆動
def to_roman(arabic)
  roman = ""

  [
    [500, "D"],
    [400, "CD"],
    [100, "C"],
    [50, "L"],
    [19, "XIX"],
    [15, "XV"],
    [14, "XIV"],
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [1, "I"],
  ].each do |divider, character|
    quo = arabic / divider
    roman += character * quo
    resideual = arabic % divider
    arabic = resideual
    # roman += 'I'*resideual
  end
  roman
end

[
  # [1,'I'],
  # [2, 'II'],
  # [3, 'III'],
  [6, "VI"],
  [7, "VII"],
  [9, "IX"],
  [11, "XI"],
  [14, "XIV"],
  [15, "XV"],
  [16, "XVI"],
  [19, "XIX"],
  [38, "XXXVIII"],
  [40, "XL"],
  [42, "XLII"],
  [49, "XLIX"],
  [50, "L"],
  [51, "LI"],
  [90, "XC"],
  [100, "C"],
  [400, "CD"],
  [500, "D"],
  [1000, "M"],
].each do |arabic, expected|
  actual = to_roman(arabic)
  p [arabic, expected, actual, expected == actual]
end

```


# directory

```ruby
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

```


# directory_cp

```ruby
p Dir.pwd
# p Dir.methods
p Dir.ancestors
2.times do |j|
  Dir.glob('*.md').each_with_index do |file, i|
    p comm = ["cp", file, "#{j}_#{i}"].join(" ")
    # system(comm)
  end
end

```


# fsm

```ruby
require 'pp'
file ='Hello.rb'
File.readlines(file).each do |line, i| #readlineは一行ずつ読み込む readは全部読み込む
  p line
end

```


# mk_hyper_txt

```ruby
require 'pp'

all_data = []
Dir.glob('*.rb').each_with_index do |file, i|
  all_data << [File.mtime(file).to_s, file]
end
txt = []
all_data.sort.each do |mtime, file|
  p head = '# ' + file.split(".")[0]
  txt << head + "\n"
  txt << '```ruby'
  txt << File.read(file)
  txt << '```'
  txt << "\n"

end
File.write("tmp.md", txt.join("\n"))

```

