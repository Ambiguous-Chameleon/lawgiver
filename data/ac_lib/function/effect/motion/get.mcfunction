summon minecraft:marker ^ ^ ^1 {Tags:["Marker","Direction"]}

execute store result score GameRef.OldX TempValue1 run data get entity @s Pos[0] 1000
execute store result score GameRef.OldY TempValue1 run data get entity @s Pos[1] 1000
execute store result score GameRef.OldZ TempValue1 run data get entity @s Pos[2] 1000

execute store result score GameRef.NewX TempValue1 run data get entity @n[type=minecraft:marker,tag=Direction,distance=..5] Pos[0] 1000
execute store result score GameRef.NewY TempValue1 run data get entity @n[type=minecraft:marker,tag=Direction,distance=..5] Pos[1] 1000
execute store result score GameRef.NewZ TempValue1 run data get entity @n[type=minecraft:marker,tag=Direction,distance=..5] Pos[2] 1000

scoreboard players operation GameRef.NewX TempValue1 -= GameRef.OldX TempValue1
scoreboard players operation GameRef.NewY TempValue1 -= GameRef.OldY TempValue1
scoreboard players operation GameRef.NewZ TempValue1 -= GameRef.OldZ TempValue1

# Applies a motion multiplier, depending on what type of projectile this is.
execute as @s[tag=ACLib.Force] run function ac_lib:effect/motion/force/main
execute as @s[tag=GetBonusM] run function ac_lib:effect/motion/bonus with storage minecraft:game_ref Data.Motion

execute store result entity @s Motion[0] double 0.001 run scoreboard players get GameRef.NewX TempValue1
execute store result entity @s Motion[1] double 0.001 run scoreboard players get GameRef.NewY TempValue1
execute store result entity @s Motion[2] double 0.001 run scoreboard players get GameRef.NewZ TempValue1

tag @s remove GetMotion
kill @n[distance=..5,type=minecraft:marker,tag=Direction]

scoreboard players reset GameRef.OldX TempValue1
scoreboard players reset GameRef.OldY TempValue1
scoreboard players reset GameRef.OldZ TempValue1
scoreboard players reset GameRef.NewX TempValue1
scoreboard players reset GameRef.NewY TempValue1
scoreboard players reset GameRef.NewZ TempValue1