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
