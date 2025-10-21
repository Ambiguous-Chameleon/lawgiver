# End the cycle process when end of array is reached without finding the effect. E.g. if you try to remove an effect the player doesnt have
$execute unless data storage ac_lib:custom_potion_effects data.player$(player_id).effects[$(array_index)] run return fail

# Looks for specified effect in this element of the array
$data modify storage ac_lib:custom_potion_effects data.temp.effect_id2 set from storage ac_lib:custom_potion_effects data.player$(player_id).effects[$(array_index)].effect_id
$execute if data storage ac_lib:custom_potion_effects {data:{temp:{effect_id2:"$(effect_id)"}}} run function ac_lib:effect/custom_potion/remove_effect/3 with storage ac_lib:custom_potion_effects data.temp
scoreboard players reset GameRef.ArrayCount TempValue1
$execute if data storage ac_lib:custom_potion_effects {data:{temp:{effect_id2:"$(effect_id)"}}} run return fail

# If effect isn't found, searches next array element until it is found
execute store result storage ac_lib:custom_potion_effects data.temp.array_index int 1 run scoreboard players add GameRef.ArrayIndex TempValue1 1
function ac_lib:effect/custom_potion/remove_effect/2 with storage ac_lib:custom_potion_effects data.temp