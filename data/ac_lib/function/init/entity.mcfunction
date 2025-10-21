# Initializes entities

tag @s add EntityInitAC

execute at @s[type=minecraft:marker,tag=Chunk] run execute at @s run function ac_lib:utility/chunk/marker_count
execute at @s[type=minecraft:marker,tag=Chunk,tag=!Kill] run function ac_lib:utility/chunk/init