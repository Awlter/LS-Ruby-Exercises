# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# version 1
# print 'What is the bill?'
# bill = gets.chomp.to_f
# print 'What is the tip percentage?'
# percent = gets.chomp.to_f

# tip = (bill * percent / 100).round(2)
# puts "This tip is $#{tip}"
# puts "This total is $#{tip + bill}"

# Further exploration with format

print 'What is the bill?'
bill = gets.chomp.to_f
print 'What is the tip percentage?'
percent = gets.chomp.to_f

tip = (bill * percent / 100).round(2)
# puts "This tip is $#{format("%.2f", tip)}"
# puts "This total is $#{format("%.2f", tip + bill)}"

puts "This tip is $%.2f" % [tip]
puts "This tip is $%.2f" % [bill + tip]
