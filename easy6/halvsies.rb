def halvsies(arr)
  middle = arr.length / 2
  middle += 1 if arr.length % 2 != 0

  [arr[0...middle], arr[middle..-1]]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]