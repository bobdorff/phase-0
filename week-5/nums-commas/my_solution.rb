# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A string containing the integer with commas inserted
# What are the steps needed to solve the problem?

#	If the integer is shorter than 4 characters, return it
#	Else, convert the integer into an array and slice that into 3 item "small arrays" within a "big array"
#		if the small array length ==3, insert a comma after position 0
#	Flatten the big array to rejoin the small arrays with commas inserted
#	convert big array to a string and return it	

# 1. Initial Solution
=begin
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
 
=end
 

# 2. Refactored Solution

def separate_comma(int)
  number_bucket = Array.new
    if int.to_s.length < 4; return int.to_s
   else
    big_array = int.to_s.reverse!.split("")
    big_array.each_slice(3) { |triplet| number_bucket.push(triplet) }
    number_bucket.each {|group| if group.size == 3; group.insert(3, ",") end }.flatten!.reverse!
    if number_bucket.first == ","; number_bucket.shift; end
    return number_bucket.join.to_s
   end
end



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
  I tried to analyze what made the problem difficult, and settled on the variability of the first comma's position. It will be behind either 1, 2 or 3 characters. Every other comma will come after three characters, and I decided to leverage that consistency by reversing the number before inserting commas. Once I hit on that idea, I became obsessed with finding a way to make it work, so I didn't consider many other options. It seemed to be the simplest way to reach my goal. 
Was your pseudocode effective in helping you build a successful initial solution?
  My pseudocode was critical, and I am constantly getting better at that stage of the process. It's a necessary step to avoid issues down the line. That doesn't mean I didn't overlook some important elements in my pseudo code, but the issues I encountered were minor. Thanks to the pseudocode, I knew my basic idea was sound. 
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  I didn't use any new methods when refactoring my code, but I changed how the methods I was using were implemented. I learned late in the week that you could call methods on code blocks associated with enumerators. That was a genuine breakthrough, and I was able to clean up this program considerably and repeat myself much less by using this construction. 
How did you initially iterate through the data structure?
My iterations are simple. I slice the number up into smaller arrays and then iterate through those arrays using each to check their length and see if they need a comma.
Do you feel your refactored solution is more readable than your initial solution? Why?
  I think the refactored version is much cleaner and tighter and easier to read. It still has a clunky bit at the end where I shear off any unwanted commas that get appended to the front fo the number, but I honestly couldn't find a method that would help me eliminate that. I'm sure there's a cleaner way to do this, but I think my refactored solution is pretty smooth. 
=end

