#Little program that will help decide if I should walk my dog.

def decision_maker(a)
  if a == "y"
    puts "Do you have time? y or n"
    b = gets.chomp
    if b == "y"
      puts "Go for a walk!"
    else
      puts "Too bad, go for a walk anyway!"
    end
  else
    puts "Do you need a walk? y or n"
    b = gets.chomp
    if b == "y"
      puts "Dogs love walks, go get some excercise!"
    else
      puts "Get back to work!"
    end
  end
end



puts "Initializing Dog Walk Decider..."
puts "Does your dog need a walk? y or n"
a = gets.chomp

decision_maker(a)
