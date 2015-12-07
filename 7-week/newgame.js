// Design Basic Game Solo Challenge
// This is a solo challenge
// Your mission description: ESCAPE HASH is a simple game of avoidance. The game draws a map made out of pound signs and represents the player as an "o". The player attempts to move the "o" to a doorway on the other side of the level. Each time the player moves, the enemy also moves. The enemies are either 'X's that move horizontally or "Y"s that move vertically. The position/number of enemies is randomly generated at the start of the game. 
// Overall mission: 
// Goals: Draw a map, populate it with enemies and accept player input to determine movement of the objects.
// Characters: Player. X enemy. Y enemy
// Objects: Player. X enemy. Y enemy. Map.
// Functions: playerMove, enemyMoveX, enemyMoveY
// Pseudocode:
//1. Create a map that consists of six arrays, the arrays are strings and will draw the map for the player.
//2. Create a player object that accepts inputs for up down left and right. each moves the player one square in the array grid.
//3. Create enemies for X and Y. X enemies move horizontally Y enemies move vertically. Each has a function that randomizes the direction they will move each time the player puts in a command. 
//4. Create a loop that draws the map unless there has been a game over. When the player moves redraw the map with the enemy movements and check that the enemies are not on top of the player. That causes a game over and breaks the loop.
//5. Create a prompt that allows the user to input their commands for each turn if the game is still going. 
//6. Create a win condition if the player is on the exit at the start of a turn. 


//INITIAL SOLUTION
// var input = "";
// var map = [[" #","#","#","#","#"," ","#","#","#","#","#","\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["###########"]]
// var player = {
// 	gameover: false,
// 	posX: 5,
// 	posY: 4,
//     move: function(input) {
//     	if (input === "up") {
//     		player.posY -= 1
//     	}
//     	else if (input === "down"){
//     		player.posY += 1
//     	}
//     	else if (input === "left"){
//     		player.posX -= 1
//     	}
//     	else if (input === "right"){
//     		player.posX += 1
//     	}
//     	else{
//     		console.log("Invalid movement!")
//     	}
//     }  

// }

// var enemyOne = {
// 	posX: 5,
// 	posY: 3,
// 	enemyMove: function(){
// 		if (enemyOne.posX === 1) {
// 			enemyOne.posX += 1
// 		}
// 		else if (enemyOne.posX === 9) {
// 			enemyOne.posX -= 1
// 		}
// 		else {
// 			if (Math.random() >= 0.5) {
// 				enemyOne.posX -= 1
// 			}	
// 			else {
// 				enemyOne.posX += 1
// 			} 
// 		}
// 	}
// }

// var enemyTwo = {
// 	posX: 3,
// 	posY: 3,
// 	enemyMove: function(){
// 		if (enemyTwo.posY === 1) {
// 			enemyTwo.posY += 1
// 		}
// 		else if (enemyTwo.posY === 4) {
// 			enemyTwo.posY -= 1
// 		}
// 		else {
// 			if (Math.random() >= 0.5) {
// 				enemyTwo.posY -= 1
// 			}	
// 			else {
// 				enemyTwo.posY += 1
// 			} 
// 		}
// 	}
// }

// var enemyThree = {
// 	posX: 7,
// 	posY: 3,
// 	enemyMove: function(){
// 		if (enemyThree.posY === 1) {
// 			enemyThree.posY += 1
// 		}
// 		else if (enemyThree.posY === 4) {
// 			enemyThree.posY -= 1
// 		}
// 		else {
// 			if (Math.random() >= 0.5) {
// 				enemyThree.posY -= 1
// 			}	
// 			else {
// 				enemyThree.posY += 1
// 			} 
// 		}
// 	}
// }


// while(player.gameover === false){
// 	if(player.posX === enemyOne.posX && player.posY === enemyOne.posY){
// 		console.log(" GAME OVER: Avoid the guards! ");
// 		player.gameover = true;
// 		map[enemyOne.posY][enemyOne.posX] = "x";
// 		map[enemyTwo.posY][enemyTwo.posX] = "y";
// 		map[enemyThree.posY][enemyThree.posX] = "y";
// 		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
// 	}
// 	if(player.posX === enemyTwo.posX && player.posY === enemyTwo.posY){
// 		console.log(" GAME OVER: Avoid the guards! ");
// 		player.gameover = true;
// 		map[enemyOne.posY][enemyOne.posX] = "x";
// 		map[enemyTwo.posY][enemyTwo.posX] = "y";
// 		map[enemyThree.posY][enemyThree.posX] = "y";
// 		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
// 	}
// 	else if (player.posY === 0 && player.posX === 5) {
// 		console.log(" * YOU ESCAPED * ");
// 		player.gameover = true;
// 		map[enemyOne.posY][enemyOne.posX] = "x";
// 		map[enemyTwo.posY][enemyTwo.posX] = "y";
// 		map[enemyThree.posY][enemyThree.posX] = "y";
// 		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));

// 	}
// 	else if(player.posX === 0 || player.posX === 10 || player.posY === 0){
// 		console.log(" GAME OVER: Don't touch the walls! ");
// 		player.gameover = true;
// 	}
// 	else if(player.posY === 5){
// 		console.log(" GAME OVER: Don't touch the walls! ");
// 		player.gameover = true;
// 	}
// 	else {
// 		map[player.posY][player.posX] = "o";
// 		map[enemyOne.posY][enemyOne.posX] = "x";
// 		map[enemyTwo.posY][enemyTwo.posX] = "y";
// 		map[enemyThree.posY][enemyThree.posX] = "y";
// 		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
// 		map[player.posY][player.posX] = " ";
// 		map[enemyOne.posY][enemyOne.posX] = " ";
// 		map[enemyTwo.posY][enemyTwo.posX] = " ";
// 		map[enemyThree.posY][enemyThree.posX] = " ";
// 		var input = prompt("You are the circle. Type \"up\", \"down\", \"left\" or \"right\" to avoid the enemies and walls on your way to the exit!");
// 		player.move(input);
// 		enemyOne.enemyMove();
// 		enemyTwo.enemyMove();
// 		enemyThree.enemyMove();
// 	}	
// }
// AN ATTEMPT TO REFACTOR THE UNHOLY MESS THAT IS "ESCAPE HASH"

//Note to reviewer: you can play this in your browser.

var input = "";
//Draws the map/arrays that will be changed to indicate movement.
var map = [ [" #","#","#","#","#"," ","#","#","#","#","#","\n"],
["#"," "," "," "," "," "," "," "," "," ", "#\n"],
["#"," "," "," "," "," "," "," "," "," ", "#\n"], 
["#"," "," "," "," "," "," "," "," "," ", "#\n"], 
["#"," "," "," "," "," "," "," "," "," ", "#\n"], 
["###########"] ]
//Define player object.
var player = {
	gameover: false,
	posX: 5,
	posY: 4,
    move: function(input) {
    	if (input === "up") {
    		player.posY -= 1
    	}
    	else if (input === "down"){
    		player.posY += 1
    	}
    	else if (input === "left"){
    		player.posX -= 1
    	}
    	else if (input === "right"){
    		player.posX += 1
    	}
    	else{
    		console.log("Stayed put!")
    	}
    }  
}
//constructor for enemies/move function
var enemy = function(posX, posY){
	this.posX = posX;
	this.posY = posY;
	this.enemyMove = function(enemy){
		if (enemy.posX === 1) {
			enemy.posX += 1
		}
		else if (enemy.posX === 9) {
			enemy.posX -= 1
		}
		else {
			if (Math.random() >= 0.5) {
				enemy.posX -= 1
			}	
			else {
				enemy.posX += 1
			} 
		}
	}	
}
//create enemies
var enemyOne = new enemy(5, 2);
var enemyTwo = new enemy(3, 3);
var enemyThree = new enemy(7, 1);
	
while(player.gameover === false) {
	if((player.posX === enemyOne.posX && player.posY === enemyOne.posY) || (player.posX === enemyTwo.posX && player.posY === enemyTwo.posY) || (player.posX === enemyThree.posX && player.posY === enemyThree.posY)) {
		player.gameover = true;
		console.log(" GAME OVER: Avoid the guards! ");
		map[enemyOne.posY][enemyOne.posX] = "x";
		map[enemyTwo.posY][enemyTwo.posX] = "x";
		map[enemyThree.posY][enemyThree.posX] = "x";
		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
	}
	
	else if (player.posY === 0 && player.posX === 5) {
		console.log(" * YOU ESCAPED * ");
		player.gameover = true;
		map[enemyOne.posY][enemyOne.posX] = "x";
		map[enemyTwo.posY][enemyTwo.posX] = "x";
		map[enemyThree.posY][enemyThree.posX] = "x";
		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));

	}
	else if(player.posX === 0 || player.posX === 10 || player.posY === 0 || player.posY === 5){
		console.log(" GAME OVER: Don't touch the walls! ");
		player.gameover = true;
	}
	
	else {
		map[player.posY][player.posX] = "o";
		map[enemyOne.posY][enemyOne.posX] = "x";
		map[enemyTwo.posY][enemyTwo.posX] = "x";
		map[enemyThree.posY][enemyThree.posX] = "x";
		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
		map[player.posY][player.posX] = " ";
		map[enemyOne.posY][enemyOne.posX] = " ";
		map[enemyTwo.posY][enemyTwo.posX] = " ";
		map[enemyThree.posY][enemyThree.posX] = " ";
		var input = prompt("You are the circle. Type \"up\", \"down\", \"left\", \"right\" or \"stay\" to reach the exit. Don't touch the walls or end your turn on the same space as an enemy.");
		player.move(input);
		enemyOne.enemyMove(enemyOne);
		enemyTwo.enemyMove(enemyTwo);
		enemyThree.enemyMove(enemyThree);
	}	
}


//REFLECTION

// What was the most difficult part of this challenge?
// 	So many things were difficult! My first idea was too complex, so I needed to scale it back. My second idea, which you see here, was less complex, but still pretty sprawling. It was hard to know when to call it a day and say I had an initial solution. I also struggled with refactoring. This could be refactored so much more! I honestly don't have time to do that, however. I wasted some of the time I could have spent refactoring by tweaking the game itself too. It's clear I should stick to my initial design more closely in the future, even if it has issues. 
//What did you learn about creating objects and functions that interact with one another?
//	I think I learned a fair amount. It's interesting because JavaScript seems to play so fast and loose with where you can create variables and where you can access them. By the end of this I got a good sense for the scope of different variables and how I needed to create things to make a functional program. The biggest learning moment for me came when I refactored my enemies into a single constructor function that creates new enemies with the correct properties. That solidified my understanding of that construction, which was confusing to me for most of the week. 
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// 	I did not. I used Math.random in my code to create random actions for the enemies, however. My biggest time management issue this week involved refactoring. I simply didn't leave enough time to actually refactor this properly. 
// How can you access and manipulate properties of objects?
// 	Like ruby's hashes, you can access and manipulate the values stored in an object by calling the name associated with the value. Unlike ruby, you can access that name in different ways. You can either use dot notation or put the name in brackets. Once you've accessed that information, you can simply set its value to a new value and it will be changed in the original object. 

