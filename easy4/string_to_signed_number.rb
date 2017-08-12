STRING_TO_INTEGER = {'0' => 0, '1' => 1, '2' => 2, '3' => 3,
                     '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                     '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
                     'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

def decimal_to_integer(digits)
  total = 0

  digits.reverse.chars.each_with_index do |digit, indx|
    total += STRING_TO_INTEGER[digit.upcase] * 10 ** indx
  end

  total
end

# def string_to_signed_integer(digits)
#   first = digits[0]
#   digits = digits[1..-1] if first == '-' || first == '+'

#   number = decimal_to_integer(digits)

#   number *= -1 if first == '-'

#   number
# end

# # TA's version

def string_to_signed_integer(string)
  case string[0]
  when '-' then -decimal_to_integer(string[1..-1])
  when '+' then decimal_to_integer(string[1..-1])
  else decimal_to_integer(string)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100