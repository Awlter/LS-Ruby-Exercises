def oddities(arr)
  result = arr.select.with_index do |_, id|
    id.even?
  end

  result
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []