MINS_PER_DAY = 60 * 24

# def time_of_day(mins)
#   mins_passed = mins % MINS_PER_DAY
#   hours, mins = mins_passed.divmod(60)

#   "%.2d:%.2d" % [hours, mins]
# end

# Further exploration with Date

require 'date'

WEEK_DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

def time_of_day(delta_mins)
  # now = Time.new(2017, 8, 12) + delta_mins * 60

  # "#{WEEK_DAYS[now.wday]} %.2d:%.2d" % [now.hour, now.min]

  time_now = Time.new(2017, 8, 12)
  time_then = time_now + (delta_mins * 60)
  "#{time_then.strftime('%A, %H:%M')}"
end

puts time_of_day(0) #== "00:00"
puts time_of_day(-3) #== "23:57"
puts time_of_day(35) #== "00:35"
puts time_of_day(-1437) #== "00:03"
puts time_of_day(3000) #== "02:00"
puts time_of_day(800) #== "13:20"
puts time_of_day(-4231) #== "01:29"