#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |i| puts i }

#Same as above, but only print out values greater than 5.

six_up_arr = []
arr.each do |i|
  if i > 5
    six_up_arr.push(i)
  end
end

puts six_up_arr

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

odd_arr = []
six_up_arr.select do |num|
  if num.odd?
  odd_arr.push(num)
  end
end

#Append 11 to the end of the original array. Prepend 0 to the beginning
arr.push(11)
arr.unshift(0)

#Get rid of 11. And append a 3
arr.pop
arr.insert(3,3) #.insert method takes a index and a value as arguments

#Get rid of duplicates without specifically removing any one value
arr.uniq! #uniq removes duplicates, with bang it modifies array, without returns new array.

#What's the major difference between an Array and a Hash?
#An array keeps items organized by index number, in order, a hash organizes things using descriptive pairs.