puts "What would you like to do?"
user_input = gets.chomp
while user_input != "STOP"
  puts "What would you like to do?"
  user_input = gets.chomp
end

def countdown(i)
  if i == 0
  else
    i -= 1
    puts i
    countdown(i)
  end
end

puts "What number do you want to countdown from?"
user_integer = gets.chomp.to_i
countdown(user_integer)