# def triangle(n)
#   1.upto(n) do |i|
#     puts ('*' * i).rjust(n)
#   end
# end

def triangle(n)
  1.upto(n) do |i|
    puts ' ' * i + '*' * (n-i)
  end
end

triangle(9)