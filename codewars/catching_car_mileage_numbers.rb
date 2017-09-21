def is_interesting(number, awesome_phrases)
  return 0 if number <= 97
  return 1 if number <= 99

  return 2 if yes?(number, awesome_phrases)
  return 1 if yes?(number + 1, awesome_phrases) || yes?(number + 2, awesome_phrases)
  0
end

def yes?(num, awesome_phrases)
  followed_zeros?(num) || all_same_digit?(num) || sequential_inc?(num) || sequential_dec?(num) || palindrome?(num) || awesome_phrase?(num, awesome_phrases)
end

def followed_zeros?(num)
  num.to_s.split('')[1..-1].uniq == ['0']
end

def all_same_digit?(num)
  nums = num.to_s.split('')
  nums.uniq == [nums[0]]
end

def sequential_inc?(num)
  nums = num.to_s.split('').map(&:to_i)
  nums[1..-1].each_with_index do |num, indx|
    if num == 0 && nums[indx] == 9
      break if nums[indx + 2].nil?
    end
    return false if num - nums[indx] != 1
  end
  true
end

def sequential_dec?(num)
  nums = num.to_s.split('').map(&:to_i)
  nums[1..-1].each_with_index do |num, indx|
    return false if nums[indx] - num != 1
  end
  true
end

def palindrome?(num)
  nums = num.to_s.split('')
  nums == nums.reverse
end

def awesome_phrase?(num, awesome_phrases)
  awesome_phrases.include?(num)
end


def is_interesting(number, awesome_phrases)
  return 2 if is_great(number, awesome_phrases)
  return 1 if is_great(number + 1, awesome_phrases) or
              is_great(number + 2, awesome_phrases)
  return 0
end

def is_great(number, awesome_phrases)
  return (number.to_s.size >= 3 and (
          awesome_phrases.include?(number) or
          "1234567890".include?(number.to_s) or
          "9876543210".include?(number.to_s) or
          number.to_s == number.to_s.reverse or
          number.to_s =~ /^(\d)(\1*|0*)$/ ))
end