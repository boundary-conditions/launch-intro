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

#Create a Hash, with one key-value pair, using both Ruby syntax styles.
literal_hash = {:l_key => "value"}
hash = Hash.new
hash[:key] = "value"
new_hash = {n_key: "value"}

#Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
h[:b]
#2 Add to this hash the key:value pair `{e:5}`
h[:e] = 5
#3 Remove all key:value pairs whose value is less than 3.5
h.each do |k,v|
  if v < 3.5
    h.delete(k)
  end
end

#Can hash values be arrays? Can you have an array of hashes? (give examples)
arrays_as_values = {:hash1 => [1,2,3,4,5]}
#yes arrays can be used as a value in a hash key:value pair
hash_arr = [{a: 2, b: 3},{c: 4, d: 5}] #Yes hashes can be stored in an array
hash_arr[0][:b] #to access the hash you use array index number followed by the key.

#Given the following data structures. Write a program that copies the information 
#from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each do |a|
  a.each do |b|
    if b.include?("joe")
      contacts["Joe Smith"] = {:email => a[0],:address => a[1],:phone => a[2]}
    else
      contacts["Sally Johnson"] = {:email => a[0],:address => a[1],:phone => a[2]}
    end
  end 
end




  
  

