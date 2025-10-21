execute store result storage ac_lib:custom_potion_effects data.temp.player_id int 1 run scoreboard players get @s PlayerID
$data merge storage ac_lib:custom_potion_effects {data:{temp:{effect_id:"$(effect_id)",array_index:0}}}
scoreboard players set GameRef.ArrayIndex TempValue1 0
function ac_lib:effect/custom_potion/remove_effect/1 with storage ac_lib:custom_potion_effects data.temp
data remove storage ac_lib:custom_potion_effects data.temp
scoreboard players reset GameRef.ArrayIndex TempValue1