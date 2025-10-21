# Checks if the entity hit by this raycast meets all the required user-defined parameters, from when the raycast was initially called.

# Fails if this entity has already been hit by this raycast this tick
$execute as @s[tag=ray_$(id)] run return fail
$tag @s add ray_$(id)

tag @s add FailRCheck

# type
execute if data storage minecraft:game_ref Data.raycast.type_set run data merge storage minecraft:game_ref {Data:{raycast:{"array_set":"type_set","data_type":"type","param_id":"1"}}}
execute if data storage minecraft:game_ref Data.raycast.type_set run function ac_lib:effect/raycast/general/hit/mob/check/array_1 with storage minecraft:game_ref Data.raycast

# tags
execute if data storage minecraft:game_ref Data.raycast.tag_set run data merge storage minecraft:game_ref {Data:{raycast:{"array_set":"tag_set","data_type":"tag","param_id":"2"}}}
execute if data storage minecraft:game_ref Data.raycast.tag_set run function ac_lib:effect/raycast/general/hit/mob/check/array_1 with storage minecraft:game_ref Data.raycast

$execute as @s[tag=!FailRCheck] as $(selector) at @s run function $(function1) with storage minecraft:game_ref Data.raycast
tag @s remove FailRCheck