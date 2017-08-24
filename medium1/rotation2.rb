# - input
#   two arguments: series of integers and an integer
# - output
#   series of integers
# - rule
#   the last "integer" numbers of digits got rotated
def rotate(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(digits, n)
  str = digits.to_s
  rotated_str = str[0...-n] + rotate(str[-n..-1])
  rotated_str.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917