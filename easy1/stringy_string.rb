#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# version 1

# def stringy(n)
#   result = ''

#   n.times do |index|
#     if index.even?
#       result << '1'
#     else
#       result << '0'
#     end
#   end

#   result
# end

# version 2

# def stringy(n)
#   result_array = Array.new(n)

#   result_array.map.with_index { |e, i| i.even? ? '1' : '0' }.join('')
# end

# Further explortation

def stringy(n, start_num = '1')
  alt_num = start_num == '1' ? '0' : '1'
  result_array = Array.new(n)

  result_array.map.with_index { |e, i| i.even? ? start_num : alt_num }.join('')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, '0') == '010101'
puts stringy(9, '0') == '010101010'
puts stringy(4, '0') == '0101'
puts stringy(7, '0') == '0101010'