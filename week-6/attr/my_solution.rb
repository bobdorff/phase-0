#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


class NameData
  attr_reader :name
  def initialize
    @name = "Bob"
  end
  def puts_stuff
  	puts "Howdy, #{@name}."
  end
end
class Greetings
 def initialize
  @info = NameData.new
  end
  def say_hi
  	puts @info.puts_stuff
  end
end

greet = Greetings.new
greet.say_hi



# Reflection
=begin
For release_1
	What are these methods doing?
		These methods retrieve and modify the instance variables created in the initialized method of the Person class. They replace the variables' original values with new values that are entered when the methods are called.
	
	How are they modifying or returning the value of instance variables?
		They modify the value in the most basic way: by setting the instance variable equal to the new value so it references that value instead of its original value. 
For release_2
	What changed between the last release and this release?
		Between releases, the attr_reader :age command was added. This made it possible to get rid of the method that simply returned the current value for @age, and allowed the programmer to call #age later on instead of calling the method they defined in release 1. 
	What was replaced?
		See above
	Is this code simpler than the last?
		Yes. By eliminating an extra method definition they've streamlined things considerably. There are simply less lines on the page!
For release_3
	What changed between the last release and this release?
		The attr_writer command was added for :age. This means that the value can both be retrieved and modified. That allows the programmer to remove the method definition that allowed them to modify the value for @age and also let them call it more simply to modify it further down in the program. 
	What was replaced?
	see above
	Is this code simpler than the last?
	Yep. Fewer method definitions and the same results seems simpler to me.
For my_solution
	What is a reader method?
		A reader method can be viewed from outside a class, but cannot be edited outside of the class where it's created.
	What is a writer method?
		A writer method cannot be viewed from outside the class where it's created, but can be edited.
	What do the attr methods do for you?
		These methods create the "setter" and "getter" method for methods in a Ruby class. These methods define a reader method that returns the value associated to an instance variable with the name initialized and define a writer method that will modify the value that instance variable refers to. 
	Should you always use an accessor to cover your bases? Why or why not?
		No! If you don't need to edit the value or you won't need to reassign the value it points to, there is no reason to give it those traits. By limiting what these elements can do, you streamline your code and make it more secure.
	What is confusing to you about these methods?
		I think I understand them, but I'm still having trouble with scope. I don't understand why the instance variable @name in the above example can't be accessed anywhere in the Greetings class after I initialized the NameData class within the Greetings class. 
=end