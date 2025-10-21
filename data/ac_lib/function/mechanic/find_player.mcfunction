# Finds the player that owns this object. #@ OOD
execute store result score GameRef.PlayerID TempValue1 run scoreboard players get @s PlayerID
execute as @a if score @s PlayerID = GameRef.PlayerID TempValue1 run tag @s add ThisPlayer
scoreboard players reset GameRef.PlayerID TempValue1