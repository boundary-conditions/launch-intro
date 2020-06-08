puts "Hello, I am Mac. What's your first name?"
first_name = gets.chomp
puts "I like that, what is your last name?"
last_name = gets.chomp

name = "#{first_name} #{last_name}"

puts "Hello #{name}, it's nice to meet you..."

puts "I really like your name #{name}, I just want to say it over and over and over and over...."
10.times { print "#{name}, " }
puts "\n There....that's better #{name}."