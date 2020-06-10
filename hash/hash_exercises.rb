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
