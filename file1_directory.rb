p Dir.pwd
# p Dir.methods
p Dir.ancestors
Dir.glob('*.rb').each_with_index do |file, i|
  p comm = ["cp", file, "file#{i}_#{file}"].join(" ")
  system(comm)
end
