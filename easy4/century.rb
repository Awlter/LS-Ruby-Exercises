def century(year)
  y100, y1 = year.divmod(100)
  y100 += 1 if y1 != 0

  if y100 % 100 >= 11 && y100 % 100 <= 13
    appendix = 'th'
  else
    appendix = case y100 % 10
      when 1 then 'st'
      when 2 then 'nd'
      when 3 then 'rd'
      else 'th'
    end
  end

  "#{y100.to_s + appendix}"
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'