# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin

def pad!(array, min_size, value = nil) #destructive
 if array.size >= min_size
   return array
 elsif array.empty? 
 	array + Array.new(min_size, value)	
 else
   diff = array.size - min_size
   array + Array.new(diff.abs, value)
 end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
 new_array = [] + array
 if array.size >= min_size
   return new_array
 elsif array.empty? 
 	new_array = new_array + Array.new(min_size, value)
 else
   diff = array.size - min_size
   new_array = new_array + Array.new(diff.abs, value)
   end
   return new_array	
end

=end
# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 if array.size >= min_size
   return array
 elsif array.empty? 
 	array + Array.new(min_size, value)	
 else
   array + Array.new((array.size - min_size).abs, value)
 end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
 new_array = [] + array
 if array.size >= min_size
 elsif array.empty? 
 	new_array = new_array + Array.new(min_size, value)
 else
   new_array = new_array + Array.new((array.size - min_size).abs, value)
   end
   return new_array	
end



# 4. Reflection