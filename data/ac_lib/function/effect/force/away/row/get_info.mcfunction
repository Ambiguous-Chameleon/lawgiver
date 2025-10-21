# Applies motion to entities, away from the source of the force, in a "rows" configuration;
# All effected entities are shot in a straight line in the direction the source is facing.

tag @s add ThisMarker
execute store result entity @s Rotation[0] float 1 run data get entity @p[tag=ThisEntity] Rotation[0]
execute store result entity @s Rotation[1] float 1 run data get entity @p[tag=ThisEntity] Rotation[1]
execute positioned ^ ^ ^5 positioned ~-4 ~ ~-4 as @e[dx=7,dy=4,dz=7,type=!#ac_lib:no_force] at @s run function ac_lib:effect/force/away/row/prep

schedule function ac_lib:effect/motion/schedule 1t append
kill @s