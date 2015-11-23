=begin
class Die
	def initialize(side_count)
		@side_count = side_count
		if side_count < 1
			raise ArgumentError
		end
	end

	def sides
		@side_count.to_i
	end

	def roll
		die_choices = (1..@side_count).to_a
		die_choices.shuffle!
		return die_choices[1]
	end
end
=end

###GREETINGS FROM REFACTOR TOWN
class Die
	def initialize(side_count)
		@side_count = side_count
		raise ArgumentError if side_count < 1
	end
	def sides
		@side_count
	end
	def roll
		die_choices = (1..@side_count).to_a.shuffle!
		return die_choices[1]
	end
end

=begin
What is an ArgumentError and why would you use one?
ArgumentErrors get thrown when the arguments fed to a method do not meet the method's criteria. Basically, they are an indication that the information supplied to a method is not sufficient for that method to complete itself.  
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I didn't impletment anything I hadn't in the past, though I am very fond of shuffle! It's a great way to randomize things simply. I didn't have any real challenges on this project, though I did have to review class creation and the initialize method.
What is a Ruby class?
A class is a collection of methods. When you create an object that belongs to a class, it is able to access all the methods you defined as being part of that class. This saves you a lot of work, becuase you only need to write those methods once and can use them in several places. 
Why would you use a Ruby class?
To save work when creating objects that will need to access the same methods. By making those items belong to a specific class, you ensure they have access to the specific method's they'll need and make it so you only need to write the methods once. 
What is the difference between a local variable and an instance variable?
A local variable is only usable within the method where it's definied while an instance variable can be used in any method that is used on an object that is part of a class using that instance variable. 
Where can an instance variable be used?	
Within any method that is called after an object that is part of a class featuring those instance variables is created. 
	
=end