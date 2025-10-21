# Generates a unique bossbar for this player based on their PlayerID
$bossbar add ac_lib:custom_effects$(player_id) [{"text":"\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82A\uF82A\uF82A","shadow_color":0}]
$bossbar set ac_lib:custom_effects$(player_id) color white
$bossbar set ac_lib:custom_effects$(player_id) players @s
$bossbar set ac_lib:custom_effects$(player_id) visible true

# Get default name string for bossbar
$data modify storage ac_lib:custom_potion_effects data.player$(player_id).bossbar.text set value "\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82B\uF82A\uF82A\uF82A"