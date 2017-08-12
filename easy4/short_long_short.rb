def short_long_short(s1, s2)
  if s1.size > s2.size
    s2 + s1 + s2
  else
    s1 + s2 + s1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
