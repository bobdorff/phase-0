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

#How do you define a local variable?
	#Local variables are assigned using the = sign between the variable name and the value you want to give it.
#How do you define a method?
	#Methods are definied by typing 'def' and then naming the method. You can then explain what the method will do in the following lines. You complete the definition by typing 'end'.
#What's the difference between a local variable and a method?
	#Local variables hold a chunk of information, while methods can manipulate information in a set way. You use variables to hold information that gets manipulated by mthods. 
#How to run ruby programs from the command line?
	#Just type 'ruby' followed by the file path.
#How to run RSpec files?
	#You run them in the same way you run ruby programs, but type rspec instead of ruby.
#What was confusing/what made sense?
	#The material itself made sense, but I didn't understand that RSpec was not going to pass me if I used puts instead of p. That led to half an hour of intense frustration!

	https://github.com/bobdorff/phase-0/blob/master/week-4/define-method/my_solution.rb
	https://github.com/bobdorff/phase-0/blob/master/week-4/define-method/math/my_solution.rb	
	https://github.com/bobdorff/phase-0/blob/master/week-4/define-method/address/my_solution.rb
	