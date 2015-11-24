# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A class that is initialized with an iteger called answer. A method that accepts an integer as a guess.
# Output: Symbols indicating if answer is less or more than guess and a boolean value if the guess is exactly the answer.
# Steps:
=begin
1. Create a class called GuessingGame
2. Initialize that class with a single argument "answer"
2a. Set 'answer' equal to a corresponding instance variable
3. Define a method "guess" that accepts a single argument
3a. Make the method return :high if guess is > answer, :low if it is < answer and :correct if the guess is dead on
4. Define a method, solved, which returns true if the guess method returned :correct. 
	
=end


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@last_guess = nil
  	@last_result = nil
  end
  def guess(guess)
  	@last_guess = guess
  	if guess < @answer
  		@last_result = :low
  	elsif guess > @answer
  		@last_result = :high
  	else 
  		@last_result = :correct
  	end
  def solved?
  	@last_result == :correct
  end
  return @last_result
end 
end


=end

# LET'S TAKE A TRIP TO CENTRAL REFACTORING!

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@last_guess = nil
  	@last_result = nil
  end
  def guess(guess)
  	@last_guess = guess
  	guess < @answer ? @last_guess = :low  :  @last_guess = :high 
  	@last_guess = :correct if guess == @answer 	
  def solved?
  	@last_guess == :correct
  end
  return @last_guess
  end 
end
=begin
# Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	An instance variable is accessible throughout all the methods that are part of a class instance. This means that you can modify an instance variable throughout the class object and it will maintain those changes when you pass it between methods. I'm not sure what the question is asking regarding real world objects. I think of instance variables like things that I carry with me. I always have my phone no matter where I am. That's like an instance variable. A local variable is like an object that stays in my house, like a computer. I know that I can access it inside my house (method), but elsewhere it's not accessible.
When should you use instance variables? What do they do for you?
	You should use instance variables when you'll need to pass information between different methods within a certain instance of a class. They'll retain their information when you pass them, so you can chain more complex behaviors. 
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	I conceptualize flow control as a series of gates that dictate how information is passed through a program. You can use flow control to set parameters. If the data in the program meets certain criteria, it will go through one series of events, if it meets other criteria it will go through other events. I didn't have difficult with flow control in here, but learning about the ternary operator really opens up some doors for the future. 
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	I would expect that we return symbols here because we are passing data between methods. Symbols are unique, and remain consistent across different parts of the program. When you access a symbol, you're accessing the same symbol you always access with that name, which is not the case with strings. 