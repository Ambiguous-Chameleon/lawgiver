# Applies motion to entities, away from the source of the force, in a "spread" configuration;
# All effected entities are made to face the source, rotate 180 x degrees, and blast away from the source in that direction.

tag @s add ThisMarker
execute store result entity @s Rotation[0] float 1 run data get entity @p[tag=ThisEntity] Rotation[0]
execute positioned ^ ^ ^5 positioned ~-4 ~ ~-4 as @e[dx=7,dy=4,dz=7,tag=!ACLib.Force,type=!#ac_lib:no_force] at @s run function ac_lib:effect/force/away/spread/prep with storage ac_lib:effect data.temp.force
summon minecraft:marker ~ ~ ~ {Tags:["Marker","ACLib.Force","FaceThis"]}

schedule function ac_lib:effect/force/away/spread/rotate_sch_1 1t append
schedule function ac_lib:effect/force/away/spread/rotate_sch_2 2t append
schedule function ac_lib:effect/motion/schedule 3t append

kill @s