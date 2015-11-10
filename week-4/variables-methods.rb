puts "What is your first name?"
first_name = gets.chomp 
puts "What is your middle name?"
middle_name = gets.chomp 
puts "What is your last name?"
last_name = gets.chomp
puts "Nice to formally meet you, " + first_name + " " + middle_name + " " + last_name + "!"

puts "Say, " + first_name + ", what's your favorite number?"
fav_number = gets.chomp.to_i
better_number = fav_number + 1
puts "What if you made " + better_number.to_s + " your favorite? It's bigger and better!"