# def convertFracts(lst)
#   denominators = lst.map { |pair| pair[1] }

#   common_denominator = 1

#   denominators.each do |denominator|
#     common_denominator = common_denominator.lcm(denominator)
#   end

#   lst.map { |pair| [common_denominator / pair[1] * pair[0], common_denominator]}
# end

#best practice

def convertFracts(lst)
  common_denominator = lst.reduce(1) { |cd, pair| cd.lcm(pair[1]) }
  lst.map { |pair| [common_denominator / pair[1] * pair[0], common_denominator]}
end

p convertFracts([[2, 3], [3, 4], [5, 9]])