$scoreboard players reset @s AC.CE.$(effect_id)
$data remove storage ac_lib:custom_potion_effects data.player$(player_id).effects[$(array_index)]

$execute unless data storage ac_lib:custom_potion_effects data.player$(player_id).effects[0] run return fail
execute store result storage ac_lib:custom_potion_effects data.temp.array_index int 1 run scoreboard players add GameRef.ArrayIndex TempValue1 1
function ac_lib:effect/custom_potion/remove_all/2 with storage ac_lib:custom_potion_effects data.temp