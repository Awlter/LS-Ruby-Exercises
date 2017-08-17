# def swapcase(string)
#   string.chars.map do |chr|
#     case chr
#     when 'a'..'z'
#       chr.upcase
#     when 'A'..'Z'
#       chr.downcase
#     else
#       chr
#     end
#   end
#   .join('')
# end

def swapcase(string)
  result = ''
  indx = 0

  while indx < string.length
    chr = string[indx]

    if chr =~ /[a-z]/
      result << chr.upcase
    elsif chr =~ /[A-Z]/
      result << chr.downcase
    else
      result << chr
    end

    indx += 1
  end

  result
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'