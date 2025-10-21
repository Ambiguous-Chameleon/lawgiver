tag @s add FailRCheck
data merge storage minecraft:game_ref {Data:{raycast:{tag:"na",type:"marker"}}}
$execute store result score GameRef.ArrayCount TempValue1 if data storage minecraft:game_ref Data.raycast.$(array_set)[]
$data modify storage minecraft:game_ref Data.raycast.$(data_type) set from storage minecraft:game_ref Data.raycast.$(array_set)[0]
$scoreboard players set GameRef.Param_ID TempValue1 $(param_id)
function ac_lib:effect/raycast/general/hit/mob/check/array_2 with storage minecraft:game_ref Data.raycast

scoreboard players reset GameRef.ArrayCount TempValue1
scoreboard players reset GameRef.ArrayIndex TempValue1
scoreboard players reset GameRef.Param_ID TempValue1