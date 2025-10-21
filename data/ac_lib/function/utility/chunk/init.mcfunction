# Detects whether there are markers in this marker's neighboring chunks. If not, places a new one there.
tag @s add ThisMarker

execute positioned ~16 ~ ~ if entity @e[distance=..1.5,type=minecraft:marker,tag=Chunk,tag=!ThisMarker] run tag @s add NoEast
execute as @s[tag=!NoEast] run summon minecraft:marker ~16 ~ ~ {Tags:["Marker","Chunk"]}
execute positioned ~-16 ~ ~ if entity @e[distance=..1.5,type=minecraft:marker,tag=Chunk,tag=!ThisMarker] run tag @s add NoWest
execute as @s[tag=!NoWest] run summon minecraft:marker ~-16 ~ ~ {Tags:["Marker","Chunk"]}
execute positioned ~ ~ ~16 if entity @e[distance=..1.5,type=minecraft:marker,tag=Chunk,tag=!ThisMarker] run tag @s add NoSouth
execute as @s[tag=!NoSouth] run summon minecraft:marker ~ ~ ~16 {Tags:["Marker","Chunk"]}
execute positioned ~ ~ ~-16 if entity @e[distance=..1.5,type=minecraft:marker,tag=Chunk,tag=!ThisMarker] run tag @s add NoNorth
execute as @s[tag=!NoNorth] run summon minecraft:marker ~ ~ ~-16 {Tags:["Marker","Chunk"]}

tag @s remove ThisMarker