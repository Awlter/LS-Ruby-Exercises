# def ascii_value(string)
#   string.chars.reduce(0) do |sum, char|
#     sum += char.ord
#   end
# end

# version 2

def ascii_value(string)
  string.chars.map{|s| s.ord}.reduce(0, :+)
end

puts  ascii_value('Four score') == 984
puts  ascii_value('Launch School') == 1251
puts  ascii_value('a') == 97
puts  ascii_value('') == 0