def double_consonants(string)
  result = ''

  string.each_char do |chr|
    if chr.downcase =~ /[aeiou|0-9|\W]/i
      result << chr
    else
      result << chr << chr
    end
  end

  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hel.lo-World!") == "HHell.llo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""