# Freezes this entity, unless they are already frozen
execute if score @s ACFreeze matches 1.. run return fail

$scoreboard players set @s ACFreeze $(time)
scoreboard players operation @s ACFreeze *= 4 ACNumbers
tag @s add ThisMob
execute summon minecraft:block_display run function ac_lib:effect/freeze/get_data {"y":"-0.7"}
execute summon minecraft:block_display run function ac_lib:effect/freeze/get_data {"y":"-1.7"}
tag @s remove ThisMob
attribute @s minecraft:movement_speed modifier add ac_lib:freeze -1 add_multiplied_base
attribute @s minecraft:jump_strength modifier add ac_lib:freeze -1 add_multiplied_base
attribute @s minecraft:knockback_resistance modifier add ac_lib:freeze 1 add_value