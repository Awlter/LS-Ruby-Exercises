# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

arr = []

1.upto(5) do |n|
  puts "==> Enter the #{n}st number:"
  num = gets.chomp.to_i
  arr << num
end

puts "==> Enter the last number:"
last_num = gets.chomp.to_i

if arr.include? last_num
  puts "The number #{last_num} appears in #{arr}."
else
  puts "The number #{last_num} does not appear in #{arr}."
end