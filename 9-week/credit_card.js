/* pseudocode
INPUT: Credit card number as a series of integers.
OUTPUT: True if card number meets criteria. 
1. create a function called 'cardSplit' and an empty array called cardArray
	1a. cardSplit takes the card number as an argument. joins so it can be called within card sum?
	1b. cardSplit converts the card number into an array of individual digits stored in cardArray
2. create a function called cardSum that contains a for loop that doubles every other item
   in the array, starting with the first item at index 0.
3. output is stored in card array and fed back into cardSplit which should kick out a new array
	as cardArray that contains individual digits as each item.
4. Create a final function, sumCheck that sums everything in the cardArray and checks to see if it
	is evenly divisible by 10. 
5. Create checkCard function that takes the card number as an argument and calls the other functions. 

*/
var valid = 4408041234567901
var invalid = 4408041234567906

// var cardArray = [];
// var arraySum = 0;

// var cardSplit = function(number){
// 	cardArray = number.toString().split('');
// };

// var cardSum = function(array){
// 	for(i = 0; i < array.length; i ++){
// 		array[i] = parseInt(array[i])};
// 	for(i = 0; i < array.length; i += 2){
// 		array[i] += array[i];
// 	}
// 	cardSplit(array.join(''))
// };

// var sumCheck = function(array){
// 	for(i = 0; i < array.length; i ++){
// 		array[i] = parseInt(array[i]);
// 		arraySum += array[i];
// 	};
// 	console.log(arraySum % 10 === 0) 
// }

// var checkCard = function(number){
// 	cardSplit(number)
// 	cardSum(cardArray)
// 	sumCheck(cardArray)
// }

// checkCard(valid);
// checkCard(invalid);

//REFACTORIN'


var cardSplit = function(number){
	this.cardArray = number.toString().split('');
};

var cardSum = function(array){
	for(i = 0; i < array.length; i ++){
		array[i] = parseInt(array[i])};
	for(i = 0; i < array.length; i += 2){
		array[i] += array[i];
	}
	cardSplit(array.join(''));
};

var sumCheck = function(array){
	for(i = 0; i < array.length; i ++){
		array[i] = parseInt(array[i]);
		var arraySum = array.reduce(function(a, b){
			return a + b;
		});
	};
	console.log(arraySum % 10 === 0); 
}

var checkCard = function(number){
	cardSplit(number);
	cardSum(cardArray);
	sumCheck(cardArray);
}

// Driver code
checkCard(invalid);
checkCard(valid);

