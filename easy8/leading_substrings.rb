def substrings_at_start(string)
  result = []

  1.upto(string.size) do |indx|
    result << string[0...indx]
  end

  result
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']