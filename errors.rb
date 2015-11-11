# Analyze the Errors
# I worked on this challenge [by myself, with: ].
#myself
# I spent [#] hours on this challenge.
# --- error -------------------------------------------------------
#{}"Screw you guys " + "I'm going home." = cartmans_phrase
cartmans_phrase = "Screw you guys" + "I'm going home."
# --- error -------------------------------------------------------
def cartman_hates(thing)
	while true
    	puts "What's there to hate about #{thing}?"
	end
end
# This is a tricky error. The line number may throw you off.
# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# 	Line 132
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => nexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => There should be another "end" on line 13 to end the "while"
# 6. Why did the interpreter give you this error?
# => In its original form the def of the method was not closed
# --- error -------------------------------------------------------
south_park = "show"
# 1. What is the line number where the error occurs?
# => 28	
# 2. What is the type of error message?
# => Name Error
# 3. What additional information does the interpreter provide about this type of error?
# => Undefined local variable or method
# 4. Where is the error in the code?
# => line 28
# 5. Why did the interpreter give you this error?
# => The variable south_park has not been defined before this point, so the interpreter doesn't know what to do with this phrase
# --- error -------------------------------------------------------
def cartman()
end
# 1. What is the line number where the error occurs?
# => 40	
# 2. What is the type of error message?
# => undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method 'cartman'
# 4. Where is the error in the code?
# => line 40 presents a method with the space to take arguments, but does not define the method or provide arguments
# 5. Why did the interpreter give you this error?
# => A method needs to be defined before it can be called
# --- error -------------------------------------------------------
def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
end
cartmans_phrase('I hate Kyle')
# 1. What is the line number where the error occurs?
# => 56
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments, it expected 0 and got 1
# 4. Where is the error in the code?
# => When the method is defined it was not told to take any arguments
# 5. Why did the interpreter give you this error?
# => When the method was called, it was given an argument
# --- error -------------------------------------------------------
def cartman_says(offensive_message)
  puts offensive_message
end
cartman_says("$@%#$%$%")
# 1. What is the line number where the error occurs?
# => line 68
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments 0 for 1
# 4. Where is the error in the code?
# => line 71, the method is called without an argument
# 5. Why did the interpreter give you this error?
# => When a method expects an argument it must be given one.
# --- error -------------------------------------------------------
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end
cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Cartman")
# 1. What is the line number where the error occurs?
# => line 83
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments 1 for 2
# 4. Where is the error in the code?
# => line 86 only provides one argument instead of the two required
# 5. Why did the interpreter give you this error?
# => the method requires a lie and a name. only a lie was provided as an argument
# --- error -------------------------------------------------------
"Respect my authoritay!" * 5
# 1. What is the line number where the error occurs?
# => 98
# 2. What is the type of error message?
# => type error
# 3. What additional information does the interpreter provide about this type of error?
# => string can't be coerced into Fixnum
# 4. Where is the error in the code?
# => it's trying to multiply the integer 5 by a string
# 5. Why did the interpreter give you this error?
# => Because an integer cannot be multipled (string) times.
# --- error -------------------------------------------------------
amount_of_kfc_left = 0/20
# 1. What is the line number where the error occurs?
# => line 110
# 2. What is the type of error message?
# => zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => integer devided by zero
# 4. Where is the error in the code?
# => in line 110, the program divides 20/0 which is impossible
# 5. Why did the interpreter give you this error?
# => because the program is trying to display a fraction of nothing
# --- error -------------------------------------------------------
#require_relative "cartmans_essay.md"
# 1. What is the line number where the error occurs?
# => line 122
# 2. What is the type of error message?
# => load error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file, and then a file path
# 4. Where is the error in the code?
# => This file doesn't exist, but it is required for execution
# 5. Why did the interpreter give you this error?
# => because there is no cartmans_essay.md
# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was most difficult to read?
	#Definitely the second one. Because it was a missing end, the interpreter said the error was at the end of the file when it actually needed to be fixed much earlier. 
#How did you figure out what the issue with the error was?
	#In this case, I was helped by the hints given. In a normal situation, I think I may have been able to see which parts of the code did and did not execute. 
#Were you able to determine why each error message happened based on the code?
	#Yes, and the messages are very explanatory if you take the time to break them down. 
#What process will I follow to debug in the future?
	#More than anything I will carefully read the provided error messages. They provide a very comprehensive discription of the problem and can point the way toward a solution.
				

