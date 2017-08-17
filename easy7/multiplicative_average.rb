def show_multiplicative_average(arr)
  result = arr.reduce(:*) / arr.length.to_f
  format('%.3f', result)
end

p show_multiplicative_average([3, 5]) #== 7.500
puts show_multiplicative_average([6]) == 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667