# Checks if player already has specified effect
$execute if function ac_lib:c_predicate/custom_potion/$(effect_id) run return fail

# If not it will be added to the bossbar
$scoreboard players set @s AC.CE.$(effect_id) $(duration)
execute store result storage ac_lib:custom_potion_effects data.temp.player_id int 1 run scoreboard players get @s PlayerID
$data merge storage ac_lib:custom_potion_effects {data:{temp:{effect_id:"$(effect_id)",char_id:"$(char_id)"}}}
function ac_lib:effect/custom_potion/add_effect/1 with storage ac_lib:custom_potion_effects data.temp
data remove storage ac_lib:custom_potion_effects data.temp