# def crunch(string)
#   string.squeeze
# end

# def crunch(string)
#   result = ''

#   string.chars.each do |char|
#     result << char if char != result[-1]
#   end

#   result
# end

def crunch(str)
  str.scan(/(.)(?=\1)/)
end

p crunch('ddaaiillyy ddoouubbllee')# == 'daily double'
p crunch('4444abcabccba')# == '4abcabcba'
puts crunch('ggggggggggggggg') #== 'g'
puts crunch('a') == 'a'
puts crunch('') == ''