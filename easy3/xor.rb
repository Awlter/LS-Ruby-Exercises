# Exclusive or: only one is truthy!

def xor?(con_1, con_2)
  !(con_1 == con_2)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false