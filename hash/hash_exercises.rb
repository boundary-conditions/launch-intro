#1
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

immediate_family = family.select { |k,v| k == :brothers || k == :sisters }

immediate_family_arr = immediate_family.values.flatten

#2 merge! is destructive, as in it modifies the hash its called on, whereas merge outputs a new hash.
h1 = {a: 1, b: 2, c: 3, d: 4}
h2 = {e: 5, f: 6, g: 7, h: 8}

def non_destructive(h1,h2)
  puts "This is what happens when you use regular merge"
  puts h1.merge(h2)
  puts "h1 remains the same, as merge outputs a new hash without modifying the original. \n#{h1}"
  puts "h2 remains unchanged \n#{h2}"
end

def destructive(h1,h2)
  puts "This is what happens when you use merge!"
  puts h1.merge!(h2)
  puts "This is the new version of h1 \n#{h1}"
  puts "h2 remains unchanged: \n#{h2}"
end

#3
person = {first_name: "Charles", last_name: "Keenan", age: 36, city: "Dartmouth"}

person.each_key { |k| puts k }
person.each_value { |v| puts v }
person.each { |k,v| puts "#{v} is his #{k}" }

#4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person.fetch(:name)
# or
person[:name]

#5
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
if person.has_value?("painting")
  puts "Yup it does!"
else
  puts "nopers"
end

#8 this is my crazy attempt:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

m_array = []
n_array = []
i_array = []
v_array = []
f_array = []

words.each do |a|
  if a.include?("m")
    m_array.push(a)
  elsif a.include?("n")
    n_array.push(a)
  elsif a.include?("i")
    i_array.push(a)
  elsif a.include?("v")
    v_array.push(a)
  elsif a.include?("f")
    f_array.push(a)
  end
end

i_array.each do |a|
  if a.include?("v")
    i_array.delete(a)
  end
end

#8 After I looked at the solution

solution_hash = {} #create a hash to hold the results

words.each do |word| #iterate over each word
  key = word.split('').sort.join #break each string down to individual letters, then sort them alphabetically before rejoing them as a string and assigning them to variable 'key'
  if solution_hash.has_key?(key) #check if the solution_hash has the sorted anagram
    solution_hash[key].push(word) #if it does, push the original word from the words array on to the value array
  else
    solution_hash[key] = [word] #if it doesn't have the sorted anagram, give it a new key, with the word in an array
  end
end

solution_hash.each_value do |v| #iterate over the new hash
  puts "------" #line between each value array
  p v #the arrays
end

