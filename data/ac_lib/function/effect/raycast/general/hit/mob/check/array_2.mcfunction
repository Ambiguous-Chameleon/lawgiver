$execute if score GameRef.Param_ID TempValue1 matches 1 run tag @s[type=$(type)] remove FailRCheck
$execute if score GameRef.Param_ID TempValue1 matches 2 run tag @s[tag=$(tag)] remove FailRCheck

execute if data storage minecraft:game_ref {Data:{raycast:{data_type:"tag"}}} as @s[tag=!FailRCheck] unless data storage minecraft:game_ref {Data:{raycast:{tag_mode:"all"}}} run return fail
execute as @s[tag=FailRCheck] if data storage minecraft:game_ref {Data:{raycast:{data_type:"tag",tag_mode:"all"}}} run return fail

scoreboard players remove GameRef.ArrayCount TempValue1 1
execute if score GameRef.ArrayCount TempValue1 matches 1.. store result storage minecraft:game_ref Data.raycast.array_index int 1 run scoreboard players add GameRef.ArrayIndex TempValue1 1
execute if score GameRef.ArrayCount TempValue1 matches 1.. run function ac_lib:effect/raycast/general/hit/mob/check/array_3 with storage minecraft:game_ref Data.raycast