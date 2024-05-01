[0].each do |num|
  p num
end

# def fibonacci(n)
#   if n == 0
#     return 1
#   elsif n == 1
#     return 1
#   else
#     return fibonacci(n-1) + fibonacci(n-2)
#   end
# end

# (0..10).each do |n|
#   puts "fibonacci(#{n}) = #{fibonacci(n)}"
# end

def fibonacci(index)
  if index == 0
    return 1
  elsif index == 1
    return 1
  else
    return fibonacci(index-1) + fibonacci(index-2)
  end
end
[[0,1],
 [1,1],
 [2,2],[3,3]
].each do |index, expected|
  actual = fibonacci(index)
  p [index, expected, actual]
end
