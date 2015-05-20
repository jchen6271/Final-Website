//This file is to be embedded into the characters.php file in order to be used.

//Information should be placed into a table
var characterNames = ["Wilson", "Willow", "Wolfgang", "Wendy", "WX-78", "Wickerbottom", "Woodie", "Wes", "Maxwell", "Wigfrid", "Webber"];

//Function to generate a character object for each character
function generateCharacter()
{
	//PHP code needed here to retrieve a specific character's name, image, stats, and description for all the characters
	//charName is retrieved from the table "characters"
	
	this.name = charName;
	this.nickname = "";
	this.motto = "";
	this.perk = "";
	this.health = 0;
	this.hunger = 0;
	this.sanity = 0;
	this.imageHidden = charName + "_silho.png";
	this.image = charName + ".png";
	this.headSlot
}

function getStats(character)
{
	var headValue = character.headSlot;
	var chestValue = character.chestSlot;
}
	
function equipItem(character)
{
}

function unequipItem(character)
{
}

function saveCharacter()
{
	//save character info and equipment to server
}	