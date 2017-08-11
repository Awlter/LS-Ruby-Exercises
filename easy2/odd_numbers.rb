# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# (1..99).to_a.each { |num| puts num if num.odd?}

# 1.upto(3) {|num| puts num if num.odd?}

# puts (1..99).select{ |i| i.odd? }

(1..99).each { |num| puts num if num < 10}