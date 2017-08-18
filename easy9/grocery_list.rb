def buy_fruit(list)
  result = []

  list.each do |item, num|
    result.concat([item] * num)
  end

  result
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]