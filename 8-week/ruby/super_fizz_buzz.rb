# I worked on this challenge by myself.
# This challenge took me [#] hours.
# Pseudocode

#1. create a function that accepts an array as its argument
#2. iterate through the array with map!
#3. check to see if the number is divisible by three
#4. if so, replace it with fizz, else just leave the number
#5 check to see if the number is divisible by 5
#6. if so, replace it with buzz, else just leave the number.
#7. check to see if number is divisible by both 3 and five. If so, replace with FizzBuzz, else leave the number.
#8. return the array which has been changed in place. 
# Initial Solution
# def super_fizzbuzz(array)
# 	array.map! do |num|
# 		if num % 3 == 0 && num % 5 != 0
# 			num = "Fizz"
# 		elsif num % 5 == 0 && num % 3 != 0
# 			num = "Buzz"
# 		elsif num % 15 == 0
# 			num = "FizzBuzz"
# 		else
# 			num = num
# 		end
# 	end
# return array		
# end
# Refactored Solution
def super_fizzbuzz(array)
	array.map! do |num|
		if num % 15 == 0
			num = "FizzBuzz"
		elsif num % 3 == 0
			num = "Fizz"
		elsif num % 5 == 0
			num = "Buzz"
		else
			num = num
		end
	end
return array		
end

# Reflection

