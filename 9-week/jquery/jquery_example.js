// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})


//RELEASE 2:
bodyElement = $('body');
bodyH1 = $('h1').eq(0)
//RELEASE 3:
bodyH1.css({
'color': 'orange',
'border': '5px solid black',
'visibility': 'visible'
});
bodyH1.html('<p> CHORUS FRAWGS </p>');

//RELEASE 4: Event Listener
$('img').on('mouseover', function(e){
	e.preventDefault()
	$(this).attr('src', 'http://www.outdooralabama.com/sites/default/files//images/image/ornatechorusfrog(1).jpg');
	
	});
$('img').on('mouseout', function(e){
		e.preventDefault()
		$(this).attr('src', "devbootcamp-logo-new.png")
});

//RELEASE 5: Experiment on your own

$('img').css({'border': '1px solid black'}).animate({
	'borderWidth': '40px',
});


What is jQuery?
	It's a library for javascript that makes it simpler to write the scripting for certain HTML behaviors across different languages. 
	You don't need to worry about the differences between web browsers when you write using jQuery.
What does jQuery do for you?
		It makes it so you don't need to check your site's behavior on different browsers. With out jQuery,
		you have to code for situations when a browser can't properly handle the JavaScript you wrote. 
What did you learn about the DOM while working on this challenge?
	I'm still figuring out the best way to address items in the DOM. I don't think I learned
	anything new, but the continued practice is really important and useful. 



})  // end of the document.ready function: do not remove or write DOM manipulation below this.