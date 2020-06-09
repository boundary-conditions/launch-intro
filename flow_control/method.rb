def string_method(string)
  if string.length > 10
    string.upcase!
    return string
  else
    return "Not long enough"
  end
end

puts "Give me a number!"
user_number = gets.chomp.to_i
if user_number < 0
  puts "Number is less than 0"
elsif user_number < 51
  puts "Number is between 0 and 50!"
elsif user_number < 101
  puts "Number is between 51 and 100!"   
 else
  puts "Number is over 100!"
end