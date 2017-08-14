def after_midnight(time)
  hour, min = time.split(':')
  total_mins = hour.to_i * 60 + min.to_i
  total_mins % 1440
end

def before_midnight(time)
  (1440 - after_midnight(time)) % 1440
end

puts  after_midnight('00:00') == 0
puts  before_midnight('00:00') == 0
puts  after_midnight('12:34') == 754
puts  before_midnight('12:34') == 686
puts  after_midnight('24:00') == 0
puts  before_midnight('24:00') == 0