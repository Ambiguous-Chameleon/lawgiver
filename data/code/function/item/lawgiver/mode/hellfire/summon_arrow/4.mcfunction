execute positioned ~-3 ~ ~-3 store success score GameRef.Boolean TempValue1 run rotate @s facing entity @e[dx=5,dy=-14,dz=5,type=#ac_lib:mobs,sort=random,limit=1]
execute unless score GameRef.Boolean TempValue1 matches 0 run function ac_lib:effect/motion/schedule
execute if score GameRef.Boolean TempValue1 matches 0 run data merge entity @s {Motion:[0.0d,-1.5d,0.0d]}
execute if score GameRef.Boolean TempValue1 matches 0 run tag @s remove GetMotion