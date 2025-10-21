# Finds the northwest corner of this chunk, and places a marker on that spot if there isn't one already.

# Get x and z coords of this entity.
execute store result score GameRef.X TempValue1 run data get entity @s Pos[0]
execute store result score GameRef.Z TempValue1 run data get entity @s Pos[2]

# Calculate x steps.
scoreboard players operation GameRef.Math TempValue1 = GameRef.X TempValue1
scoreboard players operation GameRef.Math TempValue1 %= 16 ACNumbers
execute if score GameRef.Math TempValue1 matches ..-1 run function ac_lib:utility/chunk/find/negative_correct
execute store result storage minecraft:game_ref Pos.x int 1 run scoreboard players get GameRef.Math TempValue1

# Calculate z steps.
scoreboard players operation GameRef.Math TempValue1 = GameRef.Z TempValue1
scoreboard players operation GameRef.Math TempValue1 %= 16 ACNumbers
execute if score GameRef.Math TempValue1 matches ..-1 run function ac_lib:utility/chunk/find/negative_correct
execute store result storage minecraft:game_ref Pos.z int 1 run scoreboard players get GameRef.Math TempValue1

# Place marker in the correct place, at the corner of the chunk.
function ac_lib:utility/chunk/find/place_marker with storage minecraft:game_ref Pos
data remove storage minecraft:game_ref Pos
scoreboard players reset GameRef.X TempValue1
scoreboard players reset GameRef.Z TempValue1
scoreboard players reset GameRef.Math TempValue1

kill @s