# Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def prompt(msg)
  puts ">> #{msg}"
end

prompt("Please enter an integer greater than 0")
n = gets.chomp.to_i

operation = ''
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  operation = gets.chomp
  break if operation == 's' || operation == 'p'
end

result = if operation == 's'
  (1..n).to_a.reduce(:+)
else
  (1..n).to_a.reduce(:*)
end

puts result