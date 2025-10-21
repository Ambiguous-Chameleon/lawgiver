execute on passengers as @s[tag=IceBlock] run function ac_lib:effect/freeze/break_ice
attribute @s minecraft:movement_speed modifier remove ac_lib:freeze
attribute @s minecraft:jump_strength modifier remove ac_lib:freeze
attribute @s minecraft:knockback_resistance modifier remove ac_lib:freeze
scoreboard players reset @s ACFreeze