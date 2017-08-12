# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(n, n)
  n * n
end

# def square(n)
#   multiply(n, n)
# end

# recursion!!!!!
def power(num, n)
  return num if n == 1
  multiply(num, power(num, n - 1))
end