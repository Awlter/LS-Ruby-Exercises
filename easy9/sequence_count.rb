# def sequence(count, start)
#   result = []

#   count.times do |indx|
#     result[indx] = start * (indx + 1)
#   end

#   result
# end

def sequence(count, start)
  (1..count).map do |expo|
    start * expo
  end
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []