// JavaScript Olympics
// I paired [by myself, with:] on this challenge.
// This challenge took me [#] hours.

  
// Bulk up
var athletes = { 
  name: ["Lebron James", "Serena Williams", "Stephen Curry" ],
  event: ["Baskeball", "Tennis", "Basketball" ]
}
function win(athleteName){
  for (var i = 0; i < athleteName.name.length; i++){
        win = athleteName.name[i] + " won " + athleteName.event[i];
        console.log(win);
  }
}

win(athletes);

//warm up
function reverse_string(sentence) {
  var reversed_sentence = sentence.split('').reverse().join('');
  console.log(reversed_sentence);
  
}

reverse_string("Hello is it me your looking for...")
// 2,4,6,8
var evenArray = []
function evenNum(numberArray){
  for (var i = 0; i < numberArray.length; i++){
          if (numberArray[i] % 2 === 0)
            evenArray.push(numberArray[i])
  }
console.log(evenArray)
}
evenNum([4,9,0,2,4,5,6,])


// "We built this city"
  function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = 0;
    this.sport = sport;
    this.quote = quote; 
  }

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
What JavaScript knowledge did you solidify in this challenge?
	I keep getting better at understanding JavaScript syntax. That's been a major adjustment coming from the relative clarity of ruby. Remembering to include the proper parentheses, brackets, commas and semicolons gets easier with each project.
What are constructor functions?
	
How are constructors different from Ruby classes (in your research)?
