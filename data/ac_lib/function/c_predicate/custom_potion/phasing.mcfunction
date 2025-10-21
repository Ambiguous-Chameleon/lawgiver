# Checks if this player has the "phasing" custom potion effect
tag @s remove AC.CECheck.S
execute store result storage ac_lib:custom_potion_effects data.temp.player_id int 1 run scoreboard players get @s PlayerID
data modify storage ac_lib:custom_potion_effects data.temp.effect_id set value "phasing"
function ac_lib:c_pred_supp/custom_potion with storage ac_lib:custom_potion_effects data.temp
data remove storage ac_lib:custom_potion_effects data.temp
execute as @s[tag=AC.CECheck.S] run return 1