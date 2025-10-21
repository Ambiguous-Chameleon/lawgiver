# Special damage function, specifically for hurting the Ender Dragon who is unaffected by /damage

execute store result score GameRef.DragonHealth TempValue1 run data get entity @s Health
$execute store result entity @s Health float 1 run scoreboard players remove GameRef.DragonHealth TempValue1 $(damage)
scoreboard players reset GameRef.DragonHealth TempValue1
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 2 1