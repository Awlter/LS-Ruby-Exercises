def substrings_at_start(string)
  result = []

  1.upto(string.size) do |indx|
    result << string[0...indx]
  end

  result
end

def substrings(string)
  result = []

  0.upto(string.size - 1) do |indx|
    result.concat(substrings_at_start(string[indx..-1]))
  end

  result
end

def palindromes(string)
  substrings(string).select do |sub_str|
    sub_str == sub_str.reverse && sub_str.length > 1
  end
end

puts palindromes('abcd') == []
p palindromes('madam')# == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]