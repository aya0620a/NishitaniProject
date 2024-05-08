# def roman(arabic)
#   roman = ''
#   if arabic == 1

#   if arabic == 4
#     arabic.times do
#       roman += 'IV'
#     end
#     roman = 'IV'
#   elsif arabic == 5
#     roman = 'V'
#   elsif arabic.times do
#     roman += 'I'
#   end
#   return roman
# end

# def to_roman(arabic)
#   roman = ''
#   p quo= arabic/10
#   roman += 'X'*quo
#   p resideual = arabic%10
#   roman += 'I'*resideual
#   return roman
# end


#refuctoring -> テスト駆動
def to_roman(arabic)
  roman = ''

  [
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [50, 'L'],
    [19, 'XIX'],
    [15, 'XV'],
    [14, 'XIV'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [1, 'I'],
  ].each do |divider, character|
      quo = arabic / divider
      roman += character * quo
      resideual = arabic % divider
      arabic = resideual
      # roman += 'I'*resideual
  end

=begin
  divider, character = 10, 'X'

  p quo= arabic / divider
  roman += character * quo
  p resideual = arabic % divider
  roman += 'I'*resideual
=end
  return roman
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
  actual = to_roman(arabic)
  p [arabic, expected, actual, expected == actual]
end
