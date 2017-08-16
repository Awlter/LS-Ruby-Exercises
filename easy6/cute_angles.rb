SECONDS_PER_MIN = 60
MINS_PER_DEGREE = 60

def dms(degree)
  seconds = degree * SECONDS_PER_MIN * MINS_PER_DEGREE

  degrees, seconds = seconds.divmod(MINS_PER_DEGREE * SECONDS_PER_MIN)
  mins, seconds = seconds.divmod(MINS_PER_DEGREE)

  format("%d°%02d'%02d\"", degrees, mins, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")