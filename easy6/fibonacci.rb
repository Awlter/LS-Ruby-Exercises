# - input
  # - the length of the digits contained by the fibonacci number hit when iterating
  # - < 2?
# => output
 # => the index(started from 1) of first fibonacci number that hit the required length of input

# => rules
  # => fibonacci number
    # =>

# def find_fibonacci_index_by_length(size)
#   fib_arr = [1, 1]

#   while fib_arr[-1].to_s.length < size
#     fib_arr << fib_arr[-1] + fib_arr[-2]
#   end

#   fib_arr.length
# end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847