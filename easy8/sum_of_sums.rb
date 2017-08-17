require 'pry'

# def sum_of_sums(arr)
#   indx = 1

#   arr.reduce(0) do |sum, ele|
#     sum += arr.first(indx).reduce(:+)
#     indx += 1
#     sum
#   end
# end

def sum_of_sums(arr)
  sum_total = 0
  1.upto(arr.size) do |indx|
    sum_total += arr.first(indx).reduce(:+)
  end
  sum_total
end

puts sum_of_sums([3, 5, 2])# == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35