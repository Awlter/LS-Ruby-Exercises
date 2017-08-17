# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map do |sub_arr|
#     sub_arr.reduce(:*)
#   end
#   .sort
# end

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |(num1, num2)| num1 * num2 }.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
