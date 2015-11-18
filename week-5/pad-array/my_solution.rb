# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

​
# What is the input? array, min-size, value (defaults to nil)
# What is the output? (i.e. What should the code return?) modified array padded by value (or not modified)
# What are the steps needed to solve the problem?
=begin
retrieve array size
if array size >= min-size
return array
else
insert value (min_size-array size) amount of times
return modified array to array (for destructive method)
=end
​


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
=begin

1. Were you successful in breaking the problem down into small steps
Definitely, we approached things in a very methodical way, and our pseudocoding discussion was extremely helpful when we needed to create actual code. 
2. Once we had written the pseudocode, was it easy to translate?
Sort of. I feel like the pseudocoding session was very useful, mainly because of the discussion it prompted. We did not do a great job of writing pseudocode that reflected that discussion, however. That meant we did have some difficulty making the code, because we overlooked some simple elements more comprehensive pseudocode could have helped us see. 
3. Was our initial solution successful at passing the tests?
Nope. The first thing we came up with didn't pass the majority of the tests for a few reasons. The biggest issue we encountered was naming a new variable and having it refer to an older variable. We set this up as though the newly named variable would point to a differnet object, but that's not the case. It was a simple misunderstanding about how variables behave. They don't hold a value, they simply point to a specific value. 
4. What did we find when we refactored?
Honestly, we had some difficulty with the refactoring section. We eliminated an unncessary variable and made everything more readable, but we didn't find methods that would significantly improve the code. I'm sure that there are ways to make this program EXTREMELY slick...unfortunately we couldn't find them. 
5. How readable is your solution?
I think it's quite readable. We actually eliminated any variable names that weren't established in the my_solutions.rb doc we recieved. I'd say those names are good and descriptive. 
6. What's the diff between destructive and non-destructive methods?
Destructive methods modify things in place, which means the original data gets changed to new values or erased. Non-descructive methods create a new version of the data that reflects the applied changes. 
	
rescue Exception => e
	
end