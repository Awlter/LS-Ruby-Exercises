# def print_in_box(text)
#   text_size = text.size
#   puts liner(text_size)
#   puts white_liner(text_size)

#   puts "| #{text} |"

#   puts white_liner(text_size)
#   puts liner(text_size)
# end

TEXT_SIZE = 20

def liner
  "+#{'-' * (TEXT_SIZE + 2)}+"
end

def white_liner
  "| #{' ' * TEXT_SIZE } |"
end

def print_in_box(text)

  puts liner
  puts white_liner

  text.scan(/.{20}/).each {|line| puts "| #{line} |"}

  puts white_liner
  puts liner
end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

print_in_box('To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.')