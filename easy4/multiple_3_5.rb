# Multiples of 3 and 5

# def multisum(num)
#   (1..num).reduce(0) do |sum, n|
#     if n % 3 == 0 || n % 5 == 0
#       sum + n
#     else
#       sum
#     end
#   end
# end

def multisum(num)
  (1..num).reduce(0) {|sum, n| n % 3 == 0 || n % 5 == 0 ? sum + n : sum}
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

# # recursion

# def multisum(number)
#   return 0 if number == 1
#   if number % 3 == 0 or number % 5 == 0
#       number += multisum(number - 1)
#   else
#     multisum(number - 1)
#   end
# end