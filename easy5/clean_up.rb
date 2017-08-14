def cleanup(string)
  string.gsub(/\W+/, ' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '