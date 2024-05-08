
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
