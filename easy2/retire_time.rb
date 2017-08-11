# Build a program that displays when the user will retire and how many years she has to work till retirement.

print "What's your age? => "
age = gets.chomp.to_i

print 'At what age would like to retire? => '
retire_age = gets.chomp.to_i

year_to_go = retire_age - age

this_year = Time.new.year
puts "It's #{this_year}, you will retire in #{this_year + year_to_go}"
puts "You.. #{year_to_go}"