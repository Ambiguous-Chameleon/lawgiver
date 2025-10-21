execute as @s[type=!minecraft:ender_dragon] run function ac_lib:effect/damage/generic/do {"damage":"40","type":"ac_lib:generic_nc"}
execute as @s[type=minecraft:ender_dragon] run function ac_lib:effect/damage/ender_dragon/do {"damage":"40"}
particle minecraft:poof ~ ~1 ~ 1 1 1 0.5 10 force @a