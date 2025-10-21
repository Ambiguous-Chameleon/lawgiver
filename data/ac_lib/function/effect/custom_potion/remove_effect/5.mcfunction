$bossbar set ac_lib:custom_effects$(player_id) name [{"text":"$(bossbar_name)$(char_id)","shadow_color":0}]
$data modify storage ac_lib:custom_potion_effects data.player$(player_id).bossbar.text set value "$(bossbar_name)$(char_id)"

scoreboard players remove GameRef.ArrayCount TempValue1 1
execute if score GameRef.ArrayCount TempValue1 matches ..0 run return fail

$data modify storage ac_lib:custom_potion_effects data.temp.bossbar_name set from storage ac_lib:custom_potion_effects data.player$(player_id).bossbar.text
execute store result storage ac_lib:custom_potion_effects data.temp.array_index int 1 run scoreboard players add GameRef.ArrayIndex TempValue1 1
function ac_lib:effect/custom_potion/remove_effect/4 with storage ac_lib:custom_potion_effects data.temp