def uppercase?(string)
  string.scan(/[a-zA-Z]/).all? do |chr|
    chr == chr.upcase
  end
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true