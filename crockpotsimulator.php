<!DOCTYPE HTML>
<!-- Jamie Chen -->
<html>
	<head>
		<title>
			Crock Pot Simulator
		</title>
		
		<link rel = "icon" href = "images/icon.ico" />
		<link rel = "stylesheet" type = "text/css" href = "stylecss.css">		
		<style>
			body
			{
				background-image: url('images/backgrounds/repeatinggrassdusk.png');
			}
		</style>
		
		<script src = "crockpotengine.js"></script>
		<script>
		/*
			retrieveIngredients
			Gets all ingredient information from a database
			Stores information in an array that can be accessed when needed 
		*/
			function retrieveIngredients()
			{
				ingredientData = 
				<?php
					$hostname = "localhost";
					$dbname = "dont_starve";
					$username = "root";
					$password = "";
					
					$conn = new PDO("mysql:host=".$hostname.";dbname=".$dbname, $username, $password);
					$cmd = "SELECT * FROM food_items";
					$statement = $conn->prepare($cmd);
					$statement->execute();
					$items = $statement->fetchAll(PDO::FETCH_ASSOC);
					$numOfRows = $statement->rowCount();
					
					echo '"';
					foreach ($items as $value)
					{
						echo implode(",", $value)."/";
					}
					echo '";';
				?>
				
				ingredientData = ingredientData.split("/");
				for (i = 0; i < ingredientData.length; i++)
				{
					ingredientData[i] = ingredientData[i].split(",");
				}
			}
			
			function buildCrockpot()
			{
				var crockpotSlots = new Array();
				crockpotCont = document.getElementById("crockpot_cont");
				ingredientCont = document.getElementById("ingredient_cont");
				
				retrieveIngredients();
				var ingredientArr = new Array();
				for (var i = 0; i < 1; i++)
				{
					ingredientArr.push(createIngredient(ingredientData[i]));
				}
				
				for (var i = 0; i < numOfSlots; i++)
				{
					var el = document.createElement("img");
					el.src = "images/fooditems/slot.jpg";
					//el.onclick = removeIngredient();
					crockpotCont.appendChild(el);
				}
				
				for (var i = 0; i < ingredientArr.length; i++)
				{
					var el = document.createElement("button");
					var img = document.createElement("img");
					el.innerHTML = ingredientArr[i].name + "<br />";
					img.src = "images/fooditems/" + ingredientArr[i].src + ".png";
					el.appendChild(img);
					ingredientCont.appendChild(el);
				}
			}
		</script>
	</head>

	<body onload = "buildCrockpot()">
		<ul id = "nav_wrap" class = "Gray">
			<li class = "button"><a href = "splashpage.html">Home</a></li>
			<li class = "button"><a href = "lore.html">Lore</a></li>
			<li class = "button"><a href = "gamemechanics.html">Game Mechanics</a></li>
			<li class = "button"><a href = "">Characters</a></li>
			<li class = "button"><a href = "">Equipment and Items</a></li>
			<li class = "button"><a href = "">Monster Encyclopedia</a></li>
			<li class = "button"><a href = "crockpotsimulator.html">Crockpot Recipes</a></li>
			<li class = "button"><a href = "">Survival Tips</a></li>
		</ul>
		<img id = "banner" src = "" />
		<h1>Crockpot</h1>
		
		<form action = "crockpotsimulator.html" id = "ingredientlist">
			<select name = "refinecategory">
				<option value = "meats">Meats</option>
				<option value = "eggs">Eggs</option>
				<option value = "fruits">Fruits</option>
				<option value = "vegetables">Vegetables</option>
				<option value = "misc">Misc</option>
			</select>
			
			<input type = "text" name = "searchfor" />
			
			<input type = "submit" />
		</form>
		<div id = "ingredient_cont"></div>
		<div id = "crockpot_cont"><div/>
	</body>
</html>