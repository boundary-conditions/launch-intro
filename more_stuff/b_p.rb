def take_block(&block) #the ampersand is the important thing here. what comes after it can be anything
  block.call
end
 
take_block do 
  puts "I'm a block being called inside a method"
end

def take_block2(number, &block)
  block.call(number) #I don't really get this bit yet
end

x = 42

take_block2(x) do |num|
  puts "block being called in the method! #{num}"
end

