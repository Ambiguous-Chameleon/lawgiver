# Checks if mob griefing is on or off
execute store result score GameRef.Boolean TempValue1 run gamerule mobGriefing
execute if score GameRef.Boolean TempValue1 matches 0 run return 0
execute if score GameRef.Boolean TempValue1 matches 1 run return 1
scoreboard players reset GameRef.Boolean TempValue1