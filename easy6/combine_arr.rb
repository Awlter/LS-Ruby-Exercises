def merge(arr1, arr2)
  result = []

  arr1.each do |ele|
    result << ele unless result.include? ele
  end

  arr2.each do |ele|
    result << ele unless result.include? ele
  end

  result
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]