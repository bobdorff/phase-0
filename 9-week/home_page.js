// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

document.getElementById('release-0').className = 'done';


// Release 2:


document.getElementById('release-1').style.display="none";

// Release 3:

document.getElementsByTagName('h1')[0].innerHTML= "I completed release 2";


// Release 4:

document.getElementById('release-3').style.backgroundColor = "#955251";



// Release 5:


var rel4 = document.getElementsByClassName('release-4');

for(i=0; i<rel4.length; i++){
rel4[i].style.fontSize = "2em"}


//Release 6:

var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));

//Reflection!
// What did you learn about the DOM?
// 	I gained an understanding about how the DOM works and how to access individual 
// 	elements within the model. At first I didn't quite undestand the relationship between
// 	the JavaScript document and the HTML file, but my partner was very helpful and made it 
// 	easier to understand exactly how everything fit together. 
// What are some useful methods to use to manipulate the DOM?
// 	The different forms of getElement are necessary to manipulate the DOM. That and the 
// 	appendChild method we used seem like they'll be broadly useful. 