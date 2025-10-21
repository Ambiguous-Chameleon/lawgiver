# Kills this entity if their vehicle is gone.
tag @s add Kill
execute on vehicle on passengers run tag @s remove Kill
execute at @s[type=minecraft:marker,tag=ACLib,tag=Fireball,tag=NoGrief,tag=Kill] run function ac_lib:effect/summon/fireball/no_grief_explode
execute at @s[type=minecraft:block_display,tag=ACLib,tag=IceBlock,tag=Kill] run function ac_lib:effect/freeze/break_ice
kill @s[tag=Kill]