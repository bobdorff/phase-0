// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/
// voteCount.president["Bob"] === 3

// add vote function
// iterate through votes object
// if name is already in voteCount for office
// increment vote count in VoteCount
// else create new name: votes pair for office in VoteCount

// get votes by iterating through votes accessing votes at voterNames
// iterate 
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}




// function addVote(office, name) {
//   if (voteCount[office].hasOwnProperty(name)) {
//     voteCount[office][name]++;
//   } else {
//     voteCount[office][name] = 1;
//   }   
// }

// var voterNames = [];

// function getVoterNames() {
//   voterNames = Object.keys(votes);
// }

// var voterBallots = [];

// function getVoterBallots() {
//   for (var i = 0 ; i < voterNames.length; i++ ) {
//     var voter = voterNames[i];
//     var ballot = votes[voter];
//     voterBallots.push(ballot);
//   }
// }

// function tallyVotes(array) {
//   for (var i = 0; i < voterBallots.length; i++ ) {
    
//     var ballot = voterBallots[i];
    
//     Object.keys(ballot).forEach(function(office) {
//       addVote(office, ballot[office]);
//     });
    
//   }
// }

// function invert(object) {
//   var new_obj = {};
//   for (var prop in object) {
//     if(object.hasOwnProperty(prop)) {
//     new_obj[object[prop]] = prop;
//     }
//   }
//   return new_obj;
// }
 
  

// function voteSort() {
//   var offices = Object.keys(voteCount);
//     for ( var i = 0 ; i < offices.length; i++) {
//       var ballots = voteCount[offices[i]]; 
//       var invertedBallots = invert(ballots);
//       var voteTotals = Object.keys(invertedBallots);
//       voteTotals.sort(function(a, b){return b-a});
//       var winningTotal = voteTotals[0];
//       officers[offices[i]] = invertedBallots[winningTotal]
//   }
// }

// getVoterNames();
// getVoterBallots();
// tallyVotes(voterBallots);
// voteSort();

/*
var obj = { first: "John", last: "Doe" };
// Visit non-inherited enumerable keys
Object.keys(obj).forEach(function(key) {
    console.log(key, obj[key]);
});
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */

// Pseudocode
/* iterate through each object in the 'votes' object. if the object's contents match existing key value pairs in voteCount, increment each value in vote count by one, otherwise create a new student with their vote count set at one. 



*/



// __________________________________________
// Refactored Solution
var tally = function(totalVotes){
  for( voter in totalVotes ) {
    for( office in totalVotes[voter] ) {
        var candidate = totalVotes[voter][office]
      if( voteCount[office].hasOwnProperty(candidate) ) {
        voteCount[office][candidate] ++ ;
      } else { 
        voteCount[office][candidate] = 1 ;
      }
    }
  }
}

var selectWinners = function(tallies) {
   for( position in tallies ) {
     for( candidate in tallies[position] ) {
          if ( officers[position] === undefined){
            officers[position] = candidate
          } else if ( tallies[position][candidate] > tallies[position][officers[position]]) {
            officers[position] = candidate
          }
      }
    }
}

// DRIVER CODE
tally(votes);
selectWinners(voteCount)
console.log(officers)
console.log(voteCount)


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//   It requires a large amount of thought to ensure that you'll access the correct value. Pseudocoding was helpful in this regard, but the biggest trick for me to visualize all of this was sketching the relationship between different layers of data in  my notebook.
// Were you able to find useful methods to help you with this?
//   Our initial solution required a wider range of methods, but I basically rewrote things entirely for the refactor and stuck with using the #hasOwnProperty method. That allows me to check if an object already contains a selected property, which was useful when I needed to update the provided objects with the correct info. 
// What concepts were solidified in the process of working through this challenge?
//   I got much better at iteration involving JavaScript objects. While I understood for loops and their relation to arrays, I hadn't really pushed myself to get a good handle on how object iteration worked in JavaScript. Compared to working in Ruby, it can be a real pain, and the syntax can make it hard to understand exactly what property you'll be accessing without a copious amount of notes. During this challenge, I figured out how my brain conceptualizes these structures, which should help me on future projects. 



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

