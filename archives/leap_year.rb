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
