def greeting(n)
  puts "Hello, #{n}, how are you?"
  n
end

puts "Hello, whats your name?"

name = gets.chomp

greeting(name)
