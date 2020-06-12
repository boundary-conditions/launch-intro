#Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

def lab_check(word)
  if word =~ /lab/ #returns boolean
      puts word
  else
    puts "No lab-o"
  end
end


#4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }



