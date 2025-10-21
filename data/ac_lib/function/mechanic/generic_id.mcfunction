# Assigns a unique ID.
execute if score GameRef.IDCore ACGenericID matches 2147483647 run scoreboard players set GameRef.IDCore ACGenericID 0
scoreboard players add GameRef.IDCore ACGenericID 1
scoreboard players operation @s ACGenericID = GameRef.IDCore ACGenericID