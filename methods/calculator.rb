#fun test for myself, to build a simple calculator app to be run from the command line


def multiply(x,y)
  x * y
end

def add(x,y)
  x + y
end

def sub(x,y)
  x - y
end

def divide(x,y)
  x / y
end


puts "What function would you like to perform?"
puts "1--add"
puts "2--subtract"
puts "3--divide"
puts "4--multiply"

function_input = gets.chomp
function_input = function_input.to_i

user_function = ""

case function_input
when 1 then user_function = "add"
when 2 then user_function = "subtract"
when 3 then user_function = "divide"
when 4 then user_function = "multiply"
end

puts "You have chosen to #{user_function}, what is the first number?"
x = gets.chomp
x = x.to_i
puts "What is the second number?"
y = gets.chomp
y = y.to_i


case function_input
when 1
  solution = add(x,y)
when 2
  solution = sub(x,y)
when 3
  solution = divide(x,y)
when 4
  solution = multiply(x,y)
end

puts "When I #{user_function} #{x.to_s} with #{y.to_s} the answer is #{solution}."