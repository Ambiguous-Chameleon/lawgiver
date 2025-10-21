execute unless block ~ ~-0.01 ~ #ac_lib:non_solid run function code:item/lawgiver/mode/grenade/explode

execute as @s[tag=Explode] run return fail

data merge storage minecraft:game_ref {Data:{raycast:{dist:3,type_set:["#ac_lib:mobs_p"],function1:"code:item/lawgiver/mode/grenade/explode"}}}
function ac_lib:effect/raycast/general/prep with storage minecraft:game_ref Data.raycast