// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: .

// Pseudocode
// Input: Number of any length
// Output: number with inserted Commas
// Code!
// 1. Convert number to string
// 1a. convert number string to array
// 2. while loop where index number is greater than 2
// 2a. start counter at length of array. 
// 2b. Concat comma with every third array item.
// 3. Join array together

// Initial Solution

// function separateComma(num) {
//   var array = num.toString().split("");
//   var i = array.length - 3;
//   while (i >= 1) {
//     array[i] = "," + array[i];
//     i -= 3 
//   }
//   return array.join("")
// }

// console.log(separateComma(123456))
// console.log(separateComma(12345678))
// console.log(separateComma(123456789))
// console.log(separateComma(1234567890))

// Refactored Solution
function separateComma(num) {
  var array = num.toString().split("");
  for  (var i = array.length - 3; i >= 1; i-=3)
    array[i] = "," + array[i];
  return array.join("")
}


// Your Own Tests (OPTIONAL)
console.log(separateComma(123456))
console.log(separateComma(12345678))
console.log(separateComma(123456789))
console.log(separateComma(1234567890))

// Reflection
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	It was very enlightening to attack this problem in a language we didn't understand very well and it was particularly nice to return to a problem like this. We had used a similar concept to solve the problem in Ruby, and we apprached this with a desire to streamline our strategy. We were also faced with our minimal knowledge of JavaScript. Both of us had used a lot of methods to solve the problem in Ruby, and not know how JavaScript worked forced us to reconsider things and come up with a simple strategy. 
What did you learn about iterating over arrays in JavaScript?
	We just used a for loop to work our way through the array and place commas in the appropriate place. I think the main thing I took away was how similar working with these arrays was to Ruby. The indexes work in the exact same way!
What was different about solving this problem in JavaScript?
	For us, nearly everything. Again, our lack of high level knowledge forced us to come up with something simplistic and reconsider the problem. It also gave us a change to check out how "for" works.
What built-in methods did you find to incorporate in your refactored solution?
	We didn't change any methods, but we did replace a while construct with for. That seemed to be cleaner visually and easier to read. 