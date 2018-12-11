def int_to_binary(x)
  p = 0
  two_p = 0
  output = ''

  while two_p * 2 <= x
    two_p = 2**p
    output << ((two_p & x) == two_p ? '1' : '0')
    p += 1
  end

  # Reverse output to match the endianness of %b
  output.reverse
end

p int_to_binary(9)
