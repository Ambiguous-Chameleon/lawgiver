$data remove storage ac_lib:custom_potion_effects data.player$(player_id).effects[$(array_index)]
$execute store result score GameRef.ArrayCount TempValue1 if data storage ac_lib:custom_potion_effects data.player$(player_id).effects[]
execute if score GameRef.ArrayCount TempValue1 matches ..0 run return fail

data modify storage ac_lib:custom_potion_effects data.temp.array_index set value 0
function ac_lib:effect/custom_potion/remove_effect/4 with storage ac_lib:custom_potion_effects data.temp