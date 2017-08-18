def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3.0
  case mean
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  when (50...60) then 'E'
  else                'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
