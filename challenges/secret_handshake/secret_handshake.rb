require 'pry'
# CODE = { 1 => "wink",
#   10 => "double blink",
#   100 => "close your eyes",
#   1000 => "jump"
# }

# class SecretHandshake
#   attr_reader :num
#   def initialize(num)
#     @num = get_binary_string(num)
#   end

#   def commands
#     result = []
#     num.split('').reverse.each_with_index do |n, i|
#       next if n == "0"
#       result << CODE[10 ** i]
#     end

#     result = result.reverse if num.length == 5 && num[0] == 1
#     result
#   end

#   def get_binary_string(num)
#     return num if num.kind_of? String

#     pos = 0
#     two_p = 0
#     output = ''

#     while two_p * 2 <= num
#       two_p = 2 ** pos
#       output << ((two_p & num) == two_p ? "1" : "0")
#       pos += 1
#     end

#     output.reverse
#   end
# end

# Implementation 2
CODE = ['wink', 'double blink', 'close your eyes', 'jump'].freeze

class SecretHandshake
  attr_reader :num
  def initialize(num)
    @num = get_binary_string(num)
  end

  def commands
    result = []
    num.split('').reverse.each_with_index do |n, i|
      result << CODE[i] if n == '1'
    end

    result = result.reverse if num.length == 5 && num[0] == 1
    result
  end

  def get_binary_string(num)
    return num if num.is_a? String

    pos = 0
    two_p = 0
    output = ''

    while two_p * 2 <= num
      two_p = 2**pos
      output << ((two_p & num) == two_p ? '1' : '0')
      pos += 1
    end

    output.reverse
  end
end
