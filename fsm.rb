require 'pp'
def write_file(cont)
  p file_name  = cont[0][2..-3]+".md"
  File.write(file_name, cont.join(''))
end

file = 'tmp.md'
keys =['# ','```']
state= :head_search
cont = []
File.readlines(file)[0..11].each do |line|
    case state
    when :head_search
        # p [state,line.include?(keys[0]),line]
        if line.include?(keys[0])
            if cont[0]
                write_file(cont)
            end
            cont = [line]
            state = :block_search
        else
            cont << line
        end
    when :block_search
        # p [state,line.include?(keys[1]),line]
        if line.include?(keys[1])
            cont << line
            state = :head_search
        end
    end

end
write_file(cont)
