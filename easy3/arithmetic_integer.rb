#Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

puts '==> Enter the first num'
num_1 = gets.chomp.to_f

puts '==> Enter the second num'
num_2 = gets.chomp.to_f

puts "#{num_1} + #{num_2} = #{num_1 + num_2}"