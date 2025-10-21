# Remove all custom potion effects
execute store result storage ac_lib:custom_potion_effects data.temp.player_id int 1 run scoreboard players get @s PlayerID
execute store result storage ac_lib:custom_potion_effects data.temp.array_index int 1 run scoreboard players set GameRef.ArrayIndex TempValue1 0
function ac_lib:effect/custom_potion/remove_all/1 with storage ac_lib:custom_potion_effects data.temp
data remove storage ac_lib:custom_potion_effects data.temp
scoreboard players reset GameRef.ArrayIndex TempValue1