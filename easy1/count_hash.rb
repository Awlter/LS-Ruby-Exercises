# How many?

# Write a method that counts the number of occurrences of each element in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# version 1

# def count_occurrences(input)
#   result = Hash.new(0)
#   input.each {|item| result[item] += 1}

#   result.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end

# version 2

def count_occurrences(array)
  result = {}

  array.uniq.each do |element|
    result[element] = array.count(element)
  end

  result.each do |element, count|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)