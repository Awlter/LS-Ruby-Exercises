print "Please write word or multiple words: "
string = gets.chomp

puts "There are #{string.delete(' ').length} in \"#{string}\""