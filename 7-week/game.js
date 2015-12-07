// Design Basic Game Solo Challenge
// This is a solo challenge
// Your mission description: TXTNS is a text-based tennis game for one player.
// Overall mission: TXTNS follows the same rules as tennis! You need to score four points to win a game, and you have to be two points ahead of the computer player to win.
// Goals: Accept multiple inputs to determine how the computer responds to the player. 
// Characters: Player/Computer
// Objects: ball, player, computer, scoreboard, input
// Functions: inputParser, compResponse, scoreDisplay
// Pseudocode:
//1. Define objects
//1a. ball object has property for result of hit and approach. 
//1b. player object has property for score and input
//1c. comp object has property for score and input
//
//2.  Create functions
//2a. serve function prompts user to press button for serve. If player wins previous point, they serve again. If they lose point, computer serves.
//2b. compResponse function grabs ball info from ball object and displays to player. 
//2c. inputParser function accepts player input/deterimines current ball property
//2d. scoreDisplay shows current score between each serve, ends game if score reaches 40
// Initial Code
var hits = ["left", "right", "high", "low"];
var hitType = hits[Math.floor(Math.random() * 4)];
var ball = {
	hit: ["You hit the ball to the oppoment's back-left corner!", "You gently lobbed the ball high over the net toward your opponent.", "You crushed the ball from above, sending it to the center of your opponent's side.", "You slice the ball toward your opponent's back left corner."],
	approach: ["The ball is high over the net. It should be easy to hit.", "The ball comes in low and fast, it will be hard to save!", "The ball arcs to the left.", "The ball arcs to the right."],
}
var player = {
	score: [15, 30, 40, "WIN"],
	hit: function(hitType) {
		if(hitType === "right"){
			console.log(ball.hit[0]);
		}
		else if(hitType === "low") {
			console.log(ball.hit[1]);
		}
		else if(hitType === "high") {
			console.log(ball.hit[2])
		}
		else if(hitType === "left") {
			console.log(ball.hit[3])
		}
	}
}
var computer = {
	score: [15, 30, 40, "WIN"],
	hit: function(hitType) {
		if(hitType === "low"){
			console.log(ball.approach[0]);
		}
		else if(hitType === "high") {
			console.log(ball.approach[1]);
		}
		else if(hitType === "right") {
			console.log(ball.approach[2])
		}
		else if(hitType === "left") {
			console.log(ball.approach[3])
		}
	}
}


	
var scoreboard = ""



// Refactored Code

player.hit("high")
computer.hit(hitType)
// Reflection
//
//
//
//
//
//
//
//