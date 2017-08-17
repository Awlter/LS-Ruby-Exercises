def promt_input(msg)
  print "Enter a #{msg}: "
end

promt_input('noun')
noun = gets.chomp

promt_input('verb')
verb = gets.chomp

promt_input('adjective')
adjective = gets.chomp

promt_input('adverb')
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample
