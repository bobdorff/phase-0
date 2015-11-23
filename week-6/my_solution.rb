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
=begin
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

=end


# Refactored Solution

class Die
  def initialize(labels)
  		@labels = labels
  		@side_num = labels.size	
  		raise ArgumentError if labels.size == 0
  end

  def sides
  	@side_num
  end

  def roll
  	@labels.sample
  end
end




=begin
# Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
	This was actually a much cleaner program than my last one, though they're both simple. The logic didn't need to change much at all. Instead of using a variable that held the supplied number, I created a number from the supplied array and was able to access the array's actual contents. 
What does this exercise teach you about making code that is easily changeable or modifiable? 
	It demonstrates that certain code constructions may be able to fit several different needs with minimal modification, which is good to keep in mind as I continue to address more problems. I should be able to rely on some work I've already done. 
What new methods did you learn when working on this challenge, if any?
	I learned about "sample" which returns a random value from an array. Very useful in this case!
What concepts about classes were you able to solidify in this challenge?
	I am feeling a bit better about instance and local variables, though I'm sure I'll continue to get confused as things progress.
=end