$data modify storage ac_lib:custom_potion_effects data.player$(player_id).effects prepend value {effect_id:"$(effect_id)",char_id:"$(char_id)"}

$data modify storage ac_lib:custom_potion_effects data.temp.bossbar_name set from storage ac_lib:custom_potion_effects data.player$(player_id).bossbar.text
$data modify storage ac_lib:custom_potion_effects data.temp.new_char set value "$(char_id)"

function ac_lib:effect/custom_potion/add_effect/2 with storage ac_lib:custom_potion_effects data.temp