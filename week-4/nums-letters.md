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

