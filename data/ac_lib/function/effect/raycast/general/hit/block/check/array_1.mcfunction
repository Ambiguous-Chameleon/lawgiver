tag @s add FailRCheck
execute store result score GameRef.ArrayCount TempValue1 if data storage minecraft:game_ref Data.raycast.block_set[]
data modify storage minecraft:game_ref Data.raycast.block set from storage minecraft:game_ref Data.raycast.block_set[0]
function ac_lib:effect/raycast/general/hit/block/check/array_2 with storage minecraft:game_ref Data.raycast

scoreboard players reset GameRef.ArrayCount TempValue1
scoreboard players reset GameRef.ArrayIndex TempValue1