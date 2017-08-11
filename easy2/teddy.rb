# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# version 1

# def teddy_age
#   age = 20 + rand(180)
#   puts age
# end

# version 2

def age(name = 'Teddy')
  age = rand(20..200)
  puts "#{name}'s age is #{age}"
end

puts "What's your name?"
name = gets.chomp

if name == ''
  age
else
  age(name)
end