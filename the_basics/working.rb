first_name = "Charles"
last_name = "Keenan"

full_name = "#{first_name} #{last_name}"

puts full_name

puts 1234 / 1000
puts 1234 / 100 % 10
puts 1234 / 10 % 10
puts 1234 % 10

# Exercise 3, movie hash
movies = {"Fight Club": 1996, "Pulp Fiction": 1991, "Unforgiven": 1992}

movies.each { |k,v| puts v }

puts movies[:"Fight Club"]

# Exercise 4, create date array
date_array = []

movies.each { |k,v| date_array += [v] }

puts date_array

#factorial of 8
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# square of random float
puts 4.567**2