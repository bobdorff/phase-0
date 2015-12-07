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
//2. Create a player object
//2b. Player object contains playerMove function. 


//INITIAL SOLUTION
var input = "";
var map = [[" #","#","#","#","#"," ","#","#","#","#","#","\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["#"," "," "," "," "," "," "," "," "," ", "#\n"],["###########"]]
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
    		console.log("Invalid movement!")
    	}
    }  

}

var enemyX = {
	posX: 5,
	posY: 3,
	enemyMove: function(){
		if (enemyX.posX === 1) {
			enemyX.posX += 1
		}
		else if (enemyX.posX === 9) {
			enemyX.posX -= 1
		}
		else {
			if (Math.random() >= 0.5) {
				enemyX.posX -= 1
			}	
			else {
				enemyX.posX += 1
			} 
		}
	}
}

var enemyY = {
	posX: 3,
	posY: 3,
	enemyMove: function(){
		if (enemyY.posY === 1) {
			enemyY.posY += 1
		}
		else if (enemyY.posY === 4) {
			enemyY.posY -= 1
		}
		else {
			if (Math.random() >= 0.5) {
				enemyY.posY -= 1
			}	
			else {
				enemyY.posY += 1
			} 
		}
	}
}

var enemyTwoY = {
	posX: 7,
	posY: 3,
	enemyMove: function(){
		if (enemyTwoY.posY === 1) {
			enemyTwoY.posY += 1
		}
		else if (enemyTwoY.posY === 4) {
			enemyTwoY.posY -= 1
		}
		else {
			if (Math.random() >= 0.5) {
				enemyTwoY.posY -= 1
			}	
			else {
				enemyTwoY.posY += 1
			} 
		}
	}
}


while(player.gameover === false){
	if(player.posX === enemyX.posX && player.posY === enemyX.posY){
		console.log(" GAME OVER: Avoid the guards! ");
		player.gameover = true;
		map[enemyX.posY][enemyX.posX] = "x";
		map[enemyY.posY][enemyY.posX] = "y";
		map[enemyTwoY.posY][enemyTwoY.posX] = "y";
		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
	}
	if(player.posX === enemyY.posX && player.posY === enemyY.posY){
		console.log(" GAME OVER: Avoid the guards! ");
		player.gameover = true;
		map[enemyX.posY][enemyX.posX] = "x";
		map[enemyY.posY][enemyY.posX] = "y";
		map[enemyTwoY.posY][enemyTwoY.posX] = "y";
		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
	}
	else if (player.posY === 0 && player.posX === 5) {
		console.log(" * YOU ESCAPED * ");
		player.gameover = true;
		map[enemyX.posY][enemyX.posX] = "x";
		map[enemyY.posY][enemyY.posX] = "y";
		map[enemyTwoY.posY][enemyTwoY.posX] = "y";
		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));

	}
	else if(player.posX === 0 || player.posX === 10 || player.posY === 0){
		console.log(" GAME OVER: Don't touch the walls! ");
		player.gameover = true;
	}
	else if(player.posY === 5){
		console.log(" GAME OVER: Don't touch the walls! ");
		player.gameover = true;
	}
	else {
		map[player.posY][player.posX] = "o";
		map[enemyX.posY][enemyX.posX] = "x";
		map[enemyY.posY][enemyY.posX] = "y";
		map[enemyTwoY.posY][enemyTwoY.posX] = "y";
		console.log(map[0].join(""),map[1].join(""),map[2].join(""),map[3].join(""), map[4].join(""), map[5].join(""));
		map[player.posY][player.posX] = " ";
		map[enemyX.posY][enemyX.posX] = " ";
		map[enemyY.posY][enemyY.posX] = " ";
		map[enemyTwoY.posY][enemyTwoY.posX] = " ";
		var input = prompt("Type \"up\", \"down\", \"left\" or \"right\":");
		player.move(input);
		enemyX.enemyMove();
		enemyY.enemyMove();
		enemyTwoY.enemyMove();
	}	
}



