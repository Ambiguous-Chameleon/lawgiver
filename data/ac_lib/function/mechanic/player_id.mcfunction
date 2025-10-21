# Assigns a unique player ID.
execute if score GameRef.IDCore PlayerID matches 2147483647 run scoreboard players set GameRef.IDCore PlayerID 0
scoreboard players add GameRef.IDCore PlayerID 1
scoreboard players operation @s PlayerID = GameRef.IDCore PlayerID