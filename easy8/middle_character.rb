def center_of(string)
  length = string.size
  middle = length / 2

  if length.even?
    string[middle-1, 2]
  else
    string[middle]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'