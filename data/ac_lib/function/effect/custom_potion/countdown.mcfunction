$scoreboard players remove @s AC.CE.$(effect_id) 1
$execute if score @s AC.CE.$(effect_id) matches 0 run function ac_lib:effect/custom_potion/remove_effect/do {"effect_id":"$(effect_id)"}