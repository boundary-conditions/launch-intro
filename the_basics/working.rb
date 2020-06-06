first_name = "Charles"
last_name = "Keenan"

full_name = "#{first_name} #{last_name}"

puts full_name

puts 1234 / 1000
puts 1234 / 100 % 10
puts 1234 / 10 % 10
puts 1234 % 10

movies = {"Fight Club": 1996, "Pulp Fiction": 1991, "Unforgiven": 1992}

movies.each { |k,v| puts v }

puts movies[:"Fight Club"]

date_array = []

movies.each { |k,v| date_array += [v] }

puts date_array