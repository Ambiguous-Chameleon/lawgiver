execute if data storage minecraft:game_ref {Data:{raycast:{tag_mode:"all"}}} run tag @s add FailRCheck
$data modify storage minecraft:game_ref Data.raycast.$(data_type) set from storage minecraft:game_ref Data.raycast.$(array_set)[$(array_index)]
function ac_lib:effect/raycast/general/hit/mob/check/array_2 with storage minecraft:game_ref Data.raycast