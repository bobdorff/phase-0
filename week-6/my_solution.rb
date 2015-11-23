# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [] hours on this challenge.

# Pseudocode

# Input: An array of strings.
# Output: Returns a random string from the initial array.
# Steps: 
=begin
1. Create a class called "Die"
2. Write an initialize method for Die that takes a single array.
2a. Make the program throw an argument error if it is initialized with an empty array.
3. Write a method "sides" that will return the number of sides on the die. This is equal to the number of strings fed to initialize.
4. Write a method "roll" that returns one of the strings fed into initialize at random. 
=end

# Initial Solution

class Die
  def initialize(labels)
  		@labels = labels
  		@side_num = labels.size	
  		if labels.size == 0
  			raise ArgumentError
  		end
  end

  def sides
  	@side_num
  end

  def roll
  	@labels.shuffle!
  	return @labels[0]
  end
end



# Refactored Solution








# Reflection