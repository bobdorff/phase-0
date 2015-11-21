# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A string containing the integer with commas inserted
# What are the steps needed to solve the problem?
=begin
	If the integer is shorter than 4 characters, return it
	Else, convert the integer into an array and slice that into 3 item "small arrays" within a "big array"
		if the small array length ==3, insert a comma after position 0
	Flatten the big array to rejoin the small arrays with commas inserted
	convert big array to a string and return it	
=end


# 1. Initial Solution
def separate_comma(int)
   	 number_bucket = Array.new
   if int.to_s.length < 4
        return int.to_s
   else
    big_array = int.to_s.reverse!.split("")
   		big_array.each_slice(3) do |triplet| 
   			number_bucket.push(triplet)
   		end
   		number_bucket.each {|group| if group.size == 3; group.insert(3, ",") end }

    number_bucket.flatten!
    number_bucket.reverse!
    if number_bucket.first == ","
    	number_bucket.shift
    end
    return number_bucket.join.to_s
   end
end
 




###DRIVER CODE

p separate_comma(139290)

# 2. Refactored Solution


   			#if triplet.size == 3
   			#triplet.insert(3, ",")   		
   			#end




# 3. Reflection