_What does `puts` do?_
Puts prints a given input to the console. It also returns a value of `nil`. 

_What is an integer, what is a float?_
An integer is a whole number with nothing after the decimal point. A float includes numbers after the decimal point. 

_What is the difference between float and integer division?_
Because floats include the numbers that come after the decimal point, it is a more accurate form of division than integer division. When you divide using two floats, you will get an answer that is accurate down to fractions of a number. When you devide two integers, the numbers that come after the decimal point are not included. Instead, ruby will round its output downward if the equation results in a solution that includes fractions. 


````ruby	
puts 365*24

#this assumes no leap years
puts (365*24)*60*10
````


_How does Ruby handle math operations?_
	As long as you have intergers or floats, you can add, subtract, multiply or divide them using the following symbols +,-, /, and *.

_Difference between integers and floats?_
	Integers are whole numbers, floats can include fractions. A float has numbers following the decimal point. 

_Difference between integer and float division?_
	When you divide two floats, you will get an accurate answer that includes fractional amounts of a number. If you divide two integers, you will get an answer that is rounded down to the nearest integer. 

_What are strings. Why use them?_
	Strings are combinations of letters and spaces. You can use strings to print words to the screen, among other thigns. 

_What are local variables. Why use them?_
	Local variables, as opposed to global variables, are defined within a specific function and can only be accessed within that function. A local variable can be used to store information that will be accessed again at a later date. 

_How was this challenge?_
	This challenge was good overall. It took me some time to remember how to work with methods, but I got there eventually. 

[Defining variables](https://github.com/bobdorff/phase-0/blob/master/week-4/defining-variables.rb)

[Simple String Methods](https://github.com/bobdorff/phase-0/blob/master/week-4/simple-string.rb)

[Local variables and basic arithmetical operations](https://github.com/bobdorff/phase-0/blob/master/week-4/basic-math.rb)
