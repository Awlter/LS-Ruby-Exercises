# STRING_TO_INTEGER = {'0' => 0, '1' => 1, '2' => 2, '3' => 3,
#                      '4' => 4, '5' => 5, '6' => 6, '7' => 7,
#                      '8' => 8, '9' => 9}

# def string_to_integer(digits)
#   total = 0

#   digits.reverse.chars.each_with_index do |digit, indx|
#     total += STRING_TO_INTEGER[digit] * 10 ** indx
#   end

#   total
# end

# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570

#

# # Further exploration

STRING_TO_INTEGER = {'0' => 0, '1' => 1, '2' => 2, '3' => 3,
                     '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                     '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
                     'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

def hexadecimal_to_integer(digits)
  total = 0

  digits.reverse.chars.each_with_index do |digit, indx|
    total += STRING_TO_INTEGER[digit.upcase] * 10 ** indx
  end

  total
end

puts hexadecimal_to_integer('4D9f') == 19871