/********************************************************************************************************/
	
	//CONSTANTS FOR THE LOCATION OF ITEM VALUES
	var NAME = 0, HEALTHVALUE = 1, HUNGERVALUE = 2, SANITYVALUE = 3, PERISHTIME = 4, FOODVALUE = 5, CATEGORY = 6, IMAGENAME = 7;
	
	function createIngredient(ingr)
	{
		var ingredient;
		ingredient.name = ingr[NAME];
		ingredient.healthValue = ingr[HEALTHVALUE];
		ingredient.hungerValue = ingr[HUNGERVALUE];
		ingredient.sanityValue = ingr[SANITYVALUE];
		ingredient.perishTime = ingr[PERISHTIME];
		ingredient.foodValue = ingr[FOODVALUE];
		ingredient.category = ingr[CATEGORY];
		ingredient.src = ingr[IMAGENAME];
		return ingredient;
	}
	
	function addItem()
	{
		
	}

	function removeItem()
	{
		
	}

	function useCrockpot()
	{
		var item1 = crockPotSlots[0];
		var item2 = crockPotSlots[1];
		var item3 = crockPotSlots[2];
		var item4 = crockPotSlots[3];
		var meatValue = 0;
	}