def twice(number)
  number_str = number.to_s
  return number * 2 if number_str.length.odd?

  middle_indx = number_str.length / 2

  left_side = number_str[0...middle_indx]
  right_side = number_str[middle_indx..-1]

  left_side == right_side ? number : number * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10