def multiply_list(arr1, arr2)
  arrs_nested = arr1.zip(arr2)

  arrs_nested.map do |sub_arr|
    sub_arr.reduce(:*)
  end
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]