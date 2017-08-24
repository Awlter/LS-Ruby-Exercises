
def rotate(str)
  str[1..-1] + str[0]
end

def max_rotation(number)
  num_str = number.to_s
  num_str.length.downto(2) do |i|
    num_str[-i..-1] = rotate(num_str[-i..-1])
  end
  num_str.to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845