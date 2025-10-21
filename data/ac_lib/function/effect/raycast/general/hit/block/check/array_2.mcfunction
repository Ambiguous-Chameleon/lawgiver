$execute if block ~ ~ ~ $(block) run tag @s remove FailRCheck
execute as @s[tag=!FailRCheck] run return fail

scoreboard players remove GameRef.ArrayCount TempValue1 1
execute if score GameRef.ArrayCount TempValue1 matches 1.. store result storage minecraft:game_ref Data.raycast.array_index int 1 run scoreboard players add GameRef.ArrayIndex TempValue1 1
execute if score GameRef.ArrayCount TempValue1 matches 1.. run function ac_lib:effect/raycast/general/hit/block/check/array_3 with storage minecraft:game_ref Data.raycast