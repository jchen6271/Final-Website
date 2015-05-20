<?php
			$hostname = "mysql.hostyd.com";
			$dbname = "u377389635_jcds";
			$username = "u377389635_jchen";
			$password = "11219123jc";
			
			$conn = new PDO("mysql:host=".$hostname.";dbname=".$dbname, $username, $password);
			$cmd = "SELECT * FROM food_items";
			$statement = $conn->prepare($cmd);
			$statement->execute();
			$items = $statement->fetchAll(PDO::FETCH_ASSOC);
			$numOfRows = $statement->rowCount();
			
			echo '"';
			foreach ($items as $value)
			{
				echo implode(", ", $value)."/";
			}
			echo '";';
?>