# def increment_string(input)
#   if input.empty?
#     return '1'
#   end

#   non_num_str, num_str = divide(input)

#   if num_str.nil?
#     return non_num_str + '1'
#   end

#   new_num_str = (num_str.to_i + 1).to_s

#   (num_str.size - new_num_str.size).times do
#     new_num_str = '0' + new_num_str
#   end

#   non_num_str + new_num_str
# end

# def divide(input)
#   nums = []
#   arr = input.split('')

#   while arr[-1].to_i.to_s == arr[-1]
#     nums.unshift(arr.pop)
#   end

#   [arr.join(''), nums.join('')]
# end

# Best practice version

def increment_string(input)
  input.sub(/\d*$/) { |num| num.empty? ? '1' : num.succ }
end