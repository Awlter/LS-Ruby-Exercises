require 'pry'

NUMBERS = %w(zero one two three four five six seven eight nine)

# def word_to_digit(string)
#   string.split(' ').map do |word|
#     pure_word = word.scan(/\w+/)[0]
#     indx = NUMBERS.index(pure_word)

#     if indx
#       word.sub(/\w+/, indx.to_s)
#     else
#       word
#     end
#   end
#   .join(' ')
# end

def word_to_digit(words)
  NUMBERS.each do |number|
    words.gsub!(/\b#{number}\b/, NUMBERS.index(number).to_s)
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
