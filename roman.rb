def roman(arabic)
  roman = ''
  if arabic == 4
    arabic.times do
      roman += 'I'
    end
    roman = 'IV'
  elsif arabic == 5
    roman = 'V'
  elsif arabic == 9
    arabic.times do
      roman += 'I'
    end
    roman = 'IX'
  elsif arabic >= 10
    roman = 'X'
    roman += roman(arabic-10)
  else
    arabic.times do
      roman += 'I'
    end
  end
end

def to_roman(arabic)
  roman = ''
  arabic.times do
    roman += 'I'
  end
  retunr roman
end

puts "index expected actual"
[[1,'I'],[2, 'II'], [3, 'III'], [4, 'IV'], [5, 'VI'], []
].each do |arabic, expected|
  actual = roman(arabic)
  p [arabic, expected, actual]
end
