p Dir.pwd
# p Dir.methods
p Dir.ancestors
2.times do |j|
  Dir.glob('*.md').each_with_index do |file, i|
    p comm = ["cp", file, "#{j}_#{i}"].join(" ")
    # system(comm)
  end
end
