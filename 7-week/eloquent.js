// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var captain = "crunch", krispies = "treat"
console.log(captain + krispies)



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = "#";
while (triangle.length < 7){
	console.log(triangle);
	triangle += "#";
}

var count = 1;
while (count < 101){
	if (count % 3 == 0) 
		console.log("fizz")
	else if (count % 5 == 0)
		console.log("buzz")
	else
		console.log(count)
	count ++
}

var board = "# # # # # # # #\n # # # # # # # #", size = 8, count =0;
while (count < size / 2){
	console.log(board)
	count ++
}

// var favFood = (prompt("What's your favorite food?"));
// console.log("Hey! That's my favorite too!")


// Functions

// Complete the `minimum` exercise.

function min(num1, num2){
	if (num1 < num2)
		console.log(num1);
	else 
		console.log(num2);
}

var me = {
	name: ["Bob Dorff"],
	age: [27],
	foods: ["Pasta", "Tofu", "Soba"],
	quirk: ["I paint minature models."],	
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.


// REFLECTION TYPE STUFF
// 1
// Did you learn anything new about JavaScript or programming in general?
// 	I didn't learn anything new, exactly, but it was a good review of what we're really doing when we program. So often it's easy to get wrapped up in the language and the syntax that you forget you're giving a computer a set of very simplistic instructions that add up to something more. 
// Are there any concepts you feel uncomfortable with?
// 	Not yet, though I'm sure that I'll have difficulty with some elements later!
// 2
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// 	I'll start with differences. In Ruby, you don't need to tell the computer when you've reached the end of a statement with a semicolon unless you want to string multiple statements together on the same line. In JavaScript, you have to end lines with a semicolon practically all the time. You also need to tell the program that you're going to be declaring a variable with "var". As a bonus, that allows you to declare multiple variables in a single line. 
// 	Regarding similarities, there are the same operators for math as in Ruby and escape characters in strings are the same. 
// 3
// 	What is an expression?
// 		An expression is a single bit of code that can be combined with other pieces of code to create a full fledged program. 
// What is the purpose of semicolons in JavaScript? Are they always required?
// 	They indicate the end of an expression. They are not always required, but it is generally good to use them.
// What causes a variable to return undefined?
// 	If the variable has not be assigned to a value.
// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// 	It displays the associated information in the console. It is like a print in Ruby.
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

// Describe while and for loops
// 	While loops continue to loop as long as the condition set at the start of the loop remains true. For loops provide a simplified syntax for the same type of work. They let you keep 
// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// 	The main thing that's striking me is the sheer number of parentheses. In some ways they make the code easier to read, because they provide convienient grouping for expressions, but I keep forgetting to include them. 
// 4
// What are the differences between local and global variables in JavaScript?
// 	Local variables are definied inside functions. Unless you define the variable inside a funciton, it can be accessed from anywhere when you use the variable name. 
// When should you use functions?
// 	Whenever you want to create a piece of code that can be used again later. This allows you to save signficant time in the long term because you can write something once and use it indefinitely.
// What is a function declaration?
// 	It's the syntax used to create a function and assign it to a variable. 
// 5
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// 	If you use dot notation, you must know a variable name that corresponds to the property you're looking up. With the brackets you can look up properties that have not been assigned a variable name.
// What is a JavaScript object with a name and value property similar to in Ruby?
// 	It is like a hash with a key value pair.
