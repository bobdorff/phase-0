/*PSEUDOCODE
	1. create a constructor function called 'listBuilder'
		1a. listBuilder takes two arguments, an item and a quantity. 
		1b. listBuilder assigns the item to the the key position within the object and makes the 
			quantity the key's value. 
	2. If the item fed into listbuilder is already on the list, listbuilder can update the existing object 
		and set that key equal to the new amount of items provided. 
	3. If the item's value is set equal to zero, the key is removed from the object. 
	4. output the list to the console
*/
var list = {
	"eggs": 3,
	"pasta": 2,
	"mushrooms": 9,
}

var listBuilder = function(item, quantity){
	if ( list.hasOwnProperty(item) ){
		list[item] = quantity
	} else {
		list[item] = quantity
	}
	for (item in list){
		if (list[item] === 0){
			delete list[item]
		} 
	}	
}

var my_list = listBuilder("pasta", 12)

listBuilder("pizza", 10)
listBuilder("pasta", 5)
listBuilder('mushrooms', 0)
console.log(my_list)