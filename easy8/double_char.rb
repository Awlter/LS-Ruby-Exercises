def repeater(string)
  result = ''

  string.each_char do |chr|
    result << chr * 2
  end
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''