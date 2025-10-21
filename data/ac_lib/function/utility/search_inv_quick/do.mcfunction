# Checks for specified item inside of player's inventory
scoreboard players reset GameRef.Boolean TempValue1
$execute store success score GameRef.Boolean TempValue1 run clear @s $(item) 0