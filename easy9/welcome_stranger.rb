def greetings(name_arr, info_hash)
  "Hello, #{name_arr.join(' ')}!" \
  " Nice to have a #{info_hash[:title]} #{info_hash[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
