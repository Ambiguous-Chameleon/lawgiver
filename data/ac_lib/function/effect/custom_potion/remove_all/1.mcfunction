# Resets bossbar visuals
$data modify storage ac_lib:custom_potion_effects data.player$(player_id).bossbar.text set value "\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82A\uF82A\uF82A"
$bossbar set ac_lib:custom_effects$(player_id) name [{"text":"\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82A\uF82A\uF82A","shadow_color":0}]

# Resets effects and their timers
function ac_lib:effect/custom_potion/remove_all/2 with storage ac_lib:custom_potion_effects data.temp