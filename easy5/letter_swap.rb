# Letter Swap
# def swap(string)
#   string.split(' ').map do |word|
#     word.size == 1 ? word : word[-1] + word[1..-2] + word[0]
#   end.join(' ')
# end

# # TA's version: assign two characters simutaniouly (exchange)

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  result = string.split(' ').map do |word|
    swap_first_last_characters(word)
  end

  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'