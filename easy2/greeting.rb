# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

print 'What is your name? => '
user_name = gets.chomp.capitalize

if user_name.include? '!'
  greeting = "Hello #{user_name.chop}. why are you screaming?".upcase
else
  greeting = "Hello, #{user_name}!"
end

puts greeting