def one_method(proc) #method takes a proc as an argument
  [1,2,3,4,5].each do |number| #block of code the method executes, in this case iterates over an array temporarily assiging each value to the variable number
    proc.call number #call the proc and pass it the number variable from the method block (each item from the array one at a time)
  end
end

proc = Proc.new do |x| #define a variable called proc, and assign it to a new proc that performs a block of code. The code takes one argument, x, and then executes the puts command using it. Because the 'number' parameter is passed to the proc in the method, it replaces the x parameter here with the argument from the each method being performed on the array.
  puts "#{x} the proc is being called in the method"
end
