

//Story: I have a group of numbers. I want to add all the numbers in my group together and find the sum. I should be able to use any group of numbers and get an accurate result. (call this function "sum")
// 1. Create a new collection of statements called "sum" that expects to take in some group of numbers.
// 2. In this collection of statements, create a variable number called "total" and set its value to 0.
// 3. FOR each number in the group of numbers,
  //4. Add the number to the total and save the result as the new value of total.
// 5. Finally, return the numerical value of total.
function sum(array){
  var total = 0;
  for (var i=0; i < array.length; i++){
    total=total + array[i];
  }
  return total;
}

// Story: I have a group of numbers, and I want to find the mean average of the entire group. I should be able to use any group of numbers and get an accurate result. (call this function "mean")
// 1. Create a new collection of statements called "mean" that expects to take in some group of numbers.
// 2. In this collection of statements, create a variable called "total" and set its value to 0.
// 3. Create a variable called "result" and set its value to 0.
// 4. FOR each number in the group of numbers,
    // 5. Add the number to the total and save the result as the new value of total.
// 6. Divide final total by the length of the group of numbers and save the result as "result."
// 7. Finally, return the numerical value of "result."

function mean(array){
  var total = 0;
  for (var i = 0; i < array.length; i++){
    total = total + array[i];
  }
  return total/array.length;
}

// Story: I have a group of numbers, to find the median average of the entire group. I should be able to use any group of numbers and get an accurate result. (call this function "median")
// 1. Create a new collection of statements called "median" that expects to take in some group of numbers.
// 2. Sort this group of numbers from smallest to largest.
// 3. IF the length of the group of numbers is odd:
  // 4. Return the number that falls at the halfway point along the length of the sorted group of numbers.
// 5. ELSE
  //6. Divide the length of the group of sorted numbers in half.
  //7. Add the number that falls at this position to the number the next number in the group and divide the result by 2. Return this number.
function median(array){
  array.sort(function(a, b){return a-b});
  if (array.length % 2 === 1){
    return array[Math.floor(array.length / 2)];
  }
  else {
    return (array[array.length / 2] + array[array.length / 2 - 1] ) / 2;
  }
}


var numbers = [8, 9, 10, 10, 10, 11, 11, 11, 12, 13];
console.log(sum(numbers));
console.log(mean(numbers));
console.log(median(numbers));

