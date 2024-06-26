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
end
File.write("tmp.md", txt.join("\n"))
