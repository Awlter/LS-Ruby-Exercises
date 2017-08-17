# def substrings_at_start(string)
#   result = []

#   1.upto(string.size) do |indx|
#     result << string[0...indx]
#   end

#   result
# end

# def substrings(string)
#   result = []

#   0.upto(string.size - 1) do |indx|
#     result << substrings_at_start(string[indx..-1])
#   end

#   result.flatten
# end

# input:  a string
# output: substrings leading with the length kinds

def substrings(string)

end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]