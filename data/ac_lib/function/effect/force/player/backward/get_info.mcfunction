tag @s add ThisMarker
execute store result entity @s Rotation[0] float 1 run data get entity @n[distance=..2,tag=ThisEntity] Rotation[0]
execute as @n[distance=..2,tag=ThisEntity] at @s run function ac_lib:effect/force/player/backward/prep with storage ac_lib:effect data.temp.force
execute anchored eyes run summon minecraft:marker ^ ^ ^-0.5 {Tags:["Marker","ACLib.Force","PlayerMotion","FaceThis"]}

schedule function ac_lib:effect/force/player/backward/rotate_sch_1 1t append
schedule function ac_lib:effect/motion/schedule 1t append

kill @s